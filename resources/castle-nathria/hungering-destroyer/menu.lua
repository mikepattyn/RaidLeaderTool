function CastleNathriaHungeringDestroyerMenu()
    local menu = {
        text = "Hungering Destroyer",
        hasArrow = true,
        notCheckable = true,
        menuList = {{
            text = "General",
            notCheckable = true,
            func = function()
                CastleNathria_HungeringDestroyer_General();
            end
        }, {
            text = "Tanks",
            notCheckable = true,
            func = function()
                CastleNathria_HungeringDestroyer_Tanks();
            end
        }, {
            text = "Healers",
            notCheckable = true,
            func = function()
                CastleNathria_HungeringDestroyer_Healers();
            end
        }, {
            text = "Dps",
            notCheckable = true,
            func = function()
                CastleNathria_HungeringDestroyer_Dps();
            end
        }}
    }
    return menu
end
