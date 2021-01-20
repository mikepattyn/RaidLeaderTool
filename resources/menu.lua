function MyMenu()
    local menu = {{
        text = "Raids",
        hasArrow = true,
        notCheckable = true,
        menuList = {{
            text = "Castle Nathria",
            hasArrow = true,
            notCheckable = true,
            menuList = CastleNathriaMenuList()
        }}
    }, {
        text = "Misc",
        hasArrow = true,
        notCheckable = true,
        menuList = {{
            text = "Ready check",
            notCheckable = true,
            func = function()
                InitiateReadyCheck();
            end
        }, {
            text = "Buff checker",
            notCheckable = true,
            func = function()
                local frame = InitiateBuffCheck();
            end
        }}
    }}
    return menu
end
