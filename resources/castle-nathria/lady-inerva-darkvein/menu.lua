function CastleNathriaLadyInervaDarkveinMenu()
    local menu = {
        text = "Lady Inerva Darkvein",
        hasArrow = true,
        notCheckable = true,
        menuList = {{
            text = "General",
            notCheckable = true,
            func = function()
                CastleNathria_LadyInervaDarkvein_General();
            end
        }, {
            text = "Tanks",
            notCheckable = true,
            func = function()
                CastleNathria_LadyInervaDarkvein_Tanks();
            end
        }, {
            text = "Healers",
            notCheckable = true,
            func = function()
                CastleNathria_LadyInervaDarkvein_Healers();
            end
        }, {
            text = "Dps",
            notCheckable = true,
            func = function()
                CastleNathria_LadyInervaDarkvein_Dps();
            end
        }}
    }
    return menu
end
