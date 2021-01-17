function MyMenu()
    local menu = {
        {
            text = "Castle Nathria", hasArrow = true, notCheckable = true,
            menuList = {
                { text ="Shriekwing", hasArrow = true, notCheckable = true,
                    menuList = {
                        { text = "General", notCheckable = true },
                        { text = "Tanks", notCheckable = true },
                        { text = "Healers", notCheckable = true },
                        { text = "Dps", notCheckable = true}
                    }
                },
                { text ="Huntsman Altimor", hasArrow = true, notCheckable = true,
                    menuList = {
                        { text = "General", notCheckable = true },
                        { text = "Tanks", notCheckable = true },
                        { text = "Healers", notCheckable = true },
                        { text = "Dps", notCheckable = true}
                    }
                }
            }
        }
    }
    return menu
end