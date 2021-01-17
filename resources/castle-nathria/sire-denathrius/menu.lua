function CastleNathriaSireDenathriusMenu() 
    local menu = { text ="Sire Denathrius", hasArrow = true, notCheckable = true,
        menuList = {
            { text = "General", notCheckable = true, func = function() CastleNathria_SireDenathrius_General(); end },
            { text = "Tanks", notCheckable = true, func = function() CastleNathria_SireDenathrius_Tanks(); end },
            { text = "Healers", notCheckable = true, func = function() CastleNathria_SireDenathrius_Healers(); end },
            { text = "Dps", notCheckable = true, func = function() CastleNathria_SireDenathrius_Dps(); end }
        }
    }
    return menu
end