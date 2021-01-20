function CastleNathriaStoneLegionGeneralsMenu()
    local menu = {
        text = "Stone Legion Generals",
        hasArrow = true,
        notCheckable = true,
        menuList = {{
            text = "General",
            notCheckable = true,
            func = function()
                CastleNathria_StoneLegionGenerals_General();
            end
        }, {
            text = "Tanks",
            notCheckable = true,
            func = function()
                CastleNathria_StoneLegionGenerals_Tanks();
            end
        }, {
            text = "Healers",
            notCheckable = true,
            func = function()
                CastleNathria_StoneLegionGenerals_Healers();
            end
        }, {
            text = "Dps",
            notCheckable = true,
            func = function()
                CastleNathria_StoneLegionGenerals_Dps();
            end
        }}
    }
    return menu
end
