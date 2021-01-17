function CastleNathriaShriekwingMenu() 
    local menu = { text ="Shriekwing", hasArrow = true, notCheckable = true,
        menuList = {
            { text = "General", notCheckable = true, func = function() CastleNathriaShriekwingGeneral(); end },
            { text = "Tanks", notCheckable = true },
            { text = "Healers", notCheckable = true },
            { text = "Dps", notCheckable = true}
        }
    }
    return menu
end