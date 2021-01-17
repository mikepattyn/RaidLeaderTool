function CastleNathriaShriekwingMenu() 
    local menu = { text ="Shriekwing", hasArrow = true, notCheckable = true,
        menuList = {
            { text = "General", notCheckable = true, func = function() CastleNathria_Shriekwing_General(); end },
            { text = "Tanks", notCheckable = true, func = function() CastleNathria_Shriekwing_Tanks(); end },
            { text = "Healers", notCheckable = true, func = function() CastleNathria_Shriekwing_Healers(); end },
            { text = "Dps", notCheckable = true, func = function() CastleNathria_Shriekwing_Dps(); end }
        }
    }
    return menu
end