function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

function InitiateBuffCheck()
    -- frame for buff checker
    local frame = CreateFrame("Frame", "BuffCheckerFrame", UIParent, "BackdropTemplate")
    frame:SetWidth(214)
    local customHeight = (GetNumGroupMembers("LE_PARTY_CATEGORY_INSTANCE") + 1) * 20 + 80

    frame:SetHeight(customHeight)

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

    frame.text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    frame.text:SetPoint("TOP", frame, "TOP", 0, -5)
    frame.text:SetText("Buff checker")

    -- getting the groupmember count
    local groupMemberCount = GetNumGroupMembers("LE_PARTY_CATEGORY_INSTANCE")

    local tableData = {{"Placeholder", "X", "X", "X"}}

    local homePlayers = GetHomePartyInfo()

    if IsInRaid() then
        for i = 1, GetNumGroupMembers() do
            -- print("In raid")
            table.insert(tableData, {(UnitName('raid' .. i)), "X", "X"})
            -- print((UnitName('raid' .. i)))
        end
    elseif IsInGroup() then
        for i = 1, GetNumGroupMembers() do
            -- print("In group")
            table.insert(tableData, {(UnitName('party' .. i)), "X", "X"})
            -- print((UnitName('party' .. i)))
        end
    else
        print("I am not in a group")
    end

    local coldata = {{
        ["name"] = "Character",
        ["width"] = 80
    }, {
        ["name"] = "Food",
        ["width"] = 40,
        ["align"] = "CENTER",
        ["DoCellUpdate"] = BuffCheckFrameSetCellFood
    }, {
        ["name"] = "Flask",
        ["width"] = 40,
        ["align"] = "CENTER",
        ["DoCellUpdate"] = BuffCheckFrameSetCellFlask
    }};

    -- create a table here and add to frame
    local tableStub = LibStub("ScrollingTable")
    local table = tableStub:CreateST(coldata, tablelength(tableData), 20, nil, frame)
    table.frame:SetPoint("TOPLEFT", frame, "TOPLEFT", 11, -50)
    table:SetData(tableData, true)

    return frame
end

function BuffCheckFrameSetCellFood(rowFrame, cellFrame, data, cols, row, realrow, column, fShow, table, ...)
    local myCheckButton = CreateFrame("CheckButton", "CheckBoxUserFood", cellFrame, "ChatConfigCheckButtonTemplate");
    myCheckButton:SetPoint("CENTER");
    myCheckButton:SetChecked(true)
    myCheckButton:Disable()
    myCheckButton:SetDisabledCheckedTexture(myCheckButton:GetCheckedTexture())
end

function BuffCheckFrameSetCellFlask(rowFrame, cellFrame, data, cols, row, realrow, column, fShow, table, ...)
    local myCheckButton = CreateFrame("CheckButton", "CheckBoxUserFlask", cellFrame, "ChatConfigCheckButtonTemplate");
    myCheckButton:SetPoint("CENTER");
    myCheckButton:SetChecked(true)
    myCheckButton:Disable()
    myCheckButton:SetDisabledCheckedTexture(myCheckButton:GetCheckedTexture())
end