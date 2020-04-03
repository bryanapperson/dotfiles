-- Functions that you use more than once and in different files would
-- be nice to define here.

local awful = require("awful")
local naughty = require("naughty")

local helpers = {}



local capture_notif = nil
function helpers.screenshot(action, delay)
    local cmd
    local timestamp = os.date("%Y.%m.%d-%H.%M.%S")
    local filename = user.screenshot_dir..timestamp..".screenshot.png"
    -- local filename = user.screenshot_dir.."screenshot"..timestamp..".png"
    local maim_args = "-u -b 3 -m 5"
    local prefix
    if delay then
        prefix = "sleep "..tostring(delay).." && "
    else
        prefix = ""
    end
    if action == "full" then
        cmd = prefix.."maim "..maim_args.." "..filename
        awful.spawn.easy_async_with_shell(cmd, function()
            naughty.notify({ title = "Screenshot", text = "Screenshot taken" })
        end)
    end
end

return helpers
