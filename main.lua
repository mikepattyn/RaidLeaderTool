
local menu = {
    { text = 'Tanks', func = function() SendChatMessage("testing from dropdown menu", "OFFICER"); end },
    { text = 'Healers', func = function() SendChatMessage("testing from dropdown menu", "OFFICER"); end },
    { text = 'Dps', func = function() SendChatMessage("testing from dropdown menu", "OFFICER"); end }
}

local button = CreateFrame("Button", "MyButton", UIParent, "UIPanelButtonTemplate")
button:SetSize(80 ,22) -- width, height
button:SetText("Mike's Raid Tool")
button:SetPoint("TOPLEFT")

local dropdown_ShriekwingFrame = CreateFrame("Frame", "MyMenuFrame", b, "UIDropDownMenuTemplate")

button:SetScript("OnClick", function()
    dropdown_ShriekwingFrame:SetPoint("LEFT", button, -20, -20)
    EasyMenu(menu, dropdown_ShriekwingFrame, button, 0 , 0, "MENU");
end)

