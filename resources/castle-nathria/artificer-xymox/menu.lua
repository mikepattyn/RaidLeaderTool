function CastleNathriaArtificerXymoxMenu() 
    local menu = { text ="Artificer Xy'Mox", hasArrow = true, notCheckable = true,
        menuList = {
            { text = "General", notCheckable = true, func = function() CastleNathria_ArtificerXymox_General(); end },
            { text = "Tanks", notCheckable = true, func = function() CastleNathria_ArtificerXymox_Tanks(); end },
            { text = "Healers", notCheckable = true, func = function() CastleNathria_ArtificerXymox_Healers(); end },
            { text = "Dps", notCheckable = true, func = function() CastleNathria_ArtificerXymox_Dps(); end }
        }
    }
    return menu
end