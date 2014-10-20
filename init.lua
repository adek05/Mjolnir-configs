local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"

-- Resizing windows
-- Alt + arrows moves right or bottom edge of window
-- in arrow's direction.
hotkey.bind({"alt"}, "left", function()
        local win = window.focusedwindow()
        local f = win:frame()
        f.w = f.w - 100
        win:setframe(f)
end)

hotkey.bind({"alt"}, "right", function()
        local win = window.focusedwindow()
        local f = win:frame()
        f.w = f.w + 100
        win:setframe(f)
end)

hotkey.bind({"alt"}, "up", function()
        local win = window.focusedwindow()
        local f = win:frame()
        f.h = f.h - 100
        win:setframe(f)
end)

hotkey.bind({"alt"}, "down", function()
        local win = window.focusedwindow()
        local f = win:frame()
        f.h = f.h + 100
        win:setframe(f)
end)

-- Window of half screen size
-- Cmd + Shift + arrows makes window occupy half of the screen,
-- starting from screen edge pointed by arrow
hotkey.bind({"cmd", "shift"}, "left", function()
        local win = window.focusedwindow()
        local f = win:frame()
        local screenframe = win:screen():frame()
        f.x = screenframe.x
        f.y = screenframe.y
        f.w = screenframe.w / 2
        f.h = screenframe.h
        win:setframe(f)
end)

hotkey.bind({"cmd", "shift"}, "right", function()
        local win = window.focusedwindow()
        local f = win:frame()
        local screenframe = win:screen():frame()
        f.x = screenframe.w / 2
        f.y = screenframe.y
        f.w = screenframe.w / 2
        f.h = screenframe.h
        win:setframe(f)
end)

hotkey.bind({"cmd", "shift"}, "up", function()
        local win = window.focusedwindow()
        local f = win:frame()
        local screenframe = win:screen():frame()
        f.x = screenframe.x
        f.y = screenframe.y
        f.w = screenframe.w
        f.h = screenframe.h / 2
        win:setframe(f)
end)

hotkey.bind({"cmd", "shift"}, "down", function()
        local win = window.focusedwindow()
        local f = win:frame()
        local screenframe = win:screen():frame()
        f.x = screenframe.x
        f.y = screenframe.h / 2
        f.w = screenframe.w
        f.h = screenframe.h / 2
        win:setframe(f)
end)
