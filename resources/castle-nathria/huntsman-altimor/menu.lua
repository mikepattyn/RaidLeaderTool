function CastleNathriaHuntsmanAltimorMenu() 
    local menu = { text ="Huntsman Altimor", hasArrow = true, notCheckable = true,
        menuList = {
            { text = "General", notCheckable = true, func = function() CastleNathria_HuntsmanAltimor_General(); end },
            { text = "Tanks", notCheckable = true, func = function() CastleNathria_HuntsmanAltimor_Tanks(); end },
            { text = "Healers", notCheckable = true, func = function() CastleNathria_HuntsmanAltimor_Healers(); end },
            { text = "Dps", notCheckable = true, func = function() CastleNathria_HuntsmanAltimor_Dps(); end }
        }
    }
    return menu
end