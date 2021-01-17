function CastleNathria_Shriekwing_Phase_2() 
    SendChatMessage("Phase 2", "RAID_WARNING")
    SendChatMessage("Stay away from the boss for atleast 12 yards because of " .. (GetSpellLink(345425)) .. ".", "RAID_WARNING")
    SendChatMessage("It will also continue to cast " .. (GetSpellLink(345936)) .. " so keep moving as a group and hide behind the same pillar to avoid to many " .. (GetSpellLink(340324)) .. " pools", "RAID_WARNING")
end