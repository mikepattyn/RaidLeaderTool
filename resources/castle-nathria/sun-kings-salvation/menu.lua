function CastleNathriaSunKingsSalvationMenu()
    local menu = {
        text = "Sun King's Salvation",
        hasArrow = true,
        notCheckable = true,
        menuList = {{
            text = "General",
            notCheckable = true,
            func = function()
                CastleNathria_SunKingsSalvation_General();
            end
        }, {
            text = "Tanks",
            notCheckable = true,
            func = function()
                CastleNathria_SunKingsSalvation_Tanks();
            end
        }, {
            text = "Healers",
            notCheckable = true,
            func = function()
                CastleNathria_SunKingsSalvation_Healers();
            end
        }, {
            text = "Dps",
            notCheckable = true,
            func = function()
                CastleNathria_SunKingsSalvation_Dps();
            end
        }}
    }
    return menu
end
