function CastleNathriaShriekwingMenu() 
    local menu = { text ="Shriekwing", hasArrow = true, notCheckable = true,
        menuList = {
            { text = "Phase 1", notCheckable = true, func = function() CastleNathria_Shriekwing_Phase_1(); end },
            { text = "Phase 2", notCheckable = true, func = function() CastleNathria_Shriekwing_Phase_2(); end },
        }
    }
    return menu
end