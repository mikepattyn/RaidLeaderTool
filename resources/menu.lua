function MyMenu()
    local menu = {
        {
            text = "Castle Nathria", hasArrow = true, notCheckable = true,
            menuList = { 
                CastleNathriaShriekwingMenu(),
                CastleNathriaHuntsmanAltimorMenu()
            }
        }
    }
    return menu
end