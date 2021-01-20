function InitiateBuffCheck()
    -- frame for buff checker
    local frame = CreateFrame("Frame", "BuffCheckerFrame", UIParent, "BackdropTemplate")
    frame:SetWidth(350)
    frame:SetHeight(150)
    frame:SetPoint("CENTER")
    frame:SetBackdrop({
        bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 16,
        insets = {
            left = 3,
            right = 3,
            top = 3,
            bottom = 3
        }
    })
    frame:SetBackdropColor(0, 0, 0, 0.8)
    frame:SetBackdropBorderColor(0.1, 0.1, 0.1, 0.8)

    frame:EnableMouse(true)
    frame:SetMovable(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:SetScript("OnHide", frame.StopMovingOrSizing)

    -- button to close the frame
    local close = CreateFrame("Button", "BuffCheckerCloseButton", frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", frame, "TOPRIGHT")
    close:SetScript("OnClick", function()
        frame:Hide()
    end)

    -- getting the groupmember count
    local groupMemberCount = GetNumGroupMembers("LE_PARTY_CATEGORY_INSTANCE")

    local tableData = {}

    local homePlayers = GetHomePartyInfo()

    for i=1,groupMemberCount,1 do
        local raidMember = homePlayers[i]
        tableData.insert({raidMember.name, "false", "false", "false"})
    end
   
    local coldata = {{
        ["name"] = "Character",
        ["width"] = 80
    }, {
        ["name"] = "DBM",
        ["width"] = 40
    }, {
        ["name"] = "Food",
        ["width"] = 40
    }, {
        ["name"] = "Flask",
        ["width"] = 40
    }};

    -- create a table here and add to frame
    local tableStub = LibStub("ScrollingTable")
    local table = tableStub:CreateST(coldata, groupMemberCount, 20, nil, frame)
    table.frame:SetPoint("TOPLEFT", frame ,"TOPLEFT",10,-20)
    table:SetData(tableData, true)

    local text = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    text:SetPoint("BOTTOMRIGHT")
    text:SetText(homePlayers)

    local text = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    text:SetPoint("BOTTOMLEFT")
    text:SetText(groupMemberCount)

    return frame
end
