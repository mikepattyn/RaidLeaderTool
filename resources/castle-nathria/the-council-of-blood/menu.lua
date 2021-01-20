function CastleNathriaTheCouncilOfBloodMenu()
    local menu = {
        text = "The Council of Blood",
        hasArrow = true,
        notCheckable = true,
        menuList = {{
            text = "General",
            notCheckable = true,
            func = function()
                CastleNathria_TheCouncilOfBlood_General();
            end
        }, {
            text = "Tanks",
            notCheckable = true,
            func = function()
                CastleNathria_TheCouncilOfBlood_Tanks();
            end
        }, {
            text = "Healers",
            notCheckable = true,
            func = function()
                CastleNathria_TheCouncilOfBlood_Healers();
            end
        }, {
            text = "Dps",
            notCheckable = true,
            func = function()
                CastleNathria_TheCouncilOfBlood_Dps();
            end
        }}
    }
    return menu
end
