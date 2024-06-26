function NPCCommand_OnEnter(self,tipType,title,text,command)
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
	GameTooltip:AddLine(title,0,0.7,0.7,1);
	if (tipType == 1) then
		GameTooltip:AddLine("Summon a robot, this robot is a "..text,0,1,0,1);
		-- GameTooltip:AddLine("In non-combat state, you can right-click this robot to open its operation menu, set its combat duties and equipment.",0,1,0,1);
		-- GameTooltip:AddLine("You need to select yourself before using the command.",1,0,0,1);
	elseif (tipType == 2) then
		GameTooltip:AddLine(text,0,1,0,1);
		GameTooltip:AddLine("You need to select yourself or an NPC robot before using the command.",1,0,0,1);
	end
	-- GameTooltip:AddLine("This command cannot be used in combat state.",1,1,1,1);
	-- GameTooltip:AddLine(" ",1,1,1,1);
	if (command ~= nil) then
		GameTooltip:AddDoubleLine("Execute command:",command,0,0.85,0.85,0,0.85,0.85);
	end
	GameTooltip:Show();
end