function CastleNathriaArtificerXymoxMenu()
    local menu = {
        text = "Artificer Xy'Mox",
        hasArrow = true,
        notCheckable = true,
        menuList = {{
            text = "Video",
            notCheckable = true,
            func = function()
                SendChatMessage("https://www.icy-veins.com/wow/artificer-xy-mox-strategy-guide-for-castle-nathria",
                    "RAID_WARNING");
            end
        }, {
            text = "Through out fight",
            notCheckable = true,
            func = function()
                CastleNathria_ArtificerXymox_ThroughOutFight();
            end
        }, {
            text = "Phase 1",
            notCheckable = true,
            func = function()
                CastleNathria_ArtificerXymox_PhaseOne();
            end
        }, {
            text = "Phase 2",
            notCheckable = true,
            func = function()
                CastleNathria_ArtificerXymox_PhaseTwo();
            end
        }, {
            text = "Phase 3",
            notCheckable = true,
            func = function()
                CastleNathria_ArtificerXymox_PhaseThree();
            end
        }}
    }
    return menu
end
