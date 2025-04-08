-- plugins/config/notify.lua

return function()
    require("notify").setup({
        background_colour = "#1f2335",  -- dark but not pure black
        stages = "fade",                -- optional: smoother popup transitions
        timeout = 3000,                 -- how long notifications stay
    })
end
