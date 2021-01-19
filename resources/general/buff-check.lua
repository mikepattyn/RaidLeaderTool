function InitiateBuffCheck()
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
    -- (3)
    frame:EnableMouse(true)
    frame:SetMovable(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:SetScript("OnHide", frame.StopMovingOrSizing)

    -- (4)
    local close = CreateFrame("Button", "BuffCheckerCloseButton", frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", frame, "TOPRIGHT")
    close:SetScript("OnClick", function()
        frame:Hide()
    end)

    local groupMemberCount = GetNumGroupMembers("LE_PARTY_CATEGORY_INSTANCE")

    -- (5)
    local text = frame:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    text:SetPoint("CENTER")
    text:SetText(groupMemberCount)

    return frame
end
