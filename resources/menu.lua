function MyMenu()
    local menu = {
        {
            text = "Castle Nathria", hasArrow = true, notCheckable = true,
            menuList = { 
                CastleNathriaShriekwingMenu(),
                CastleNathriaHuntsmanAltimorMenu(),
                CastleNathriaHungeringDestroyerMenu(),
                CastleNathriaArtificerXymoxMenu(),
                CastleNathriaSunKingsSalvationMenu(),
                CastleNathriaLadyInervaDarkveinMenu(),
                CastleNathriaTheCouncilOfBloodMenu(),
                CastleNathriaSludgefistMenu(),
                CastleNathriaStoneLegionGeneralsMenu(),
                CastleNathriaSireDenathriusMenu()
            }
        }
    }
    return menu
end