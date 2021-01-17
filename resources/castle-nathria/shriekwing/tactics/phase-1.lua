function CastleNathria_Shriekwing_Phase_1()
    SendChatMessage("Tanks need to taunt swap immediately after " .. (GetSpellLink(328857)) .. " and position the boss close to a pillar.", "RAID_WARNING")
    SendChatMessage("Melee should dodge the randomly facing frontal attack " .. (GetSpellLink(343005)) .. ". When the boss casts " .. (GetSpellLink(345936)) .. "everyone should get quickly behind the pillar and when the cast finishes you need to spread out again.", "RAID_WARNING")
    SendChatMessage("Its important to get behind the same pillar because he will spawn a pool of " .. (GetSpellLink(340324)) .. " and it will get messy if there are circles everywhere.", "RAID_WARNING")
    SendChatMessage("When you get a red arrow above your head he will cast " .. (GetSpellLink(342074)) .. " after 8 seconds. Get away from the raid and from pillars!", "RAID_WARNING")
end

