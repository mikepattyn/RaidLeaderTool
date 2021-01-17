function CastleNathriaHuntsmanAltimorMenu() 
    local menu = { text ="Huntsman Altimor", hasArrow = true, notCheckable = true,
        menuList = {
            { text = "General", notCheckable = true, func = function() CastleNathriaHuntsmanAltimorGeneral(); end },
            { text = "Tanks", notCheckable = true },
            { text = "Healers", notCheckable = true },
            { text = "Dps", notCheckable = true}
        }
    }
    return menu
end