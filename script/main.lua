local Tween = game:GetService("TweenService")

for i,v in next, workspace:GetDescendants() do
	if v:IsA('ProximityPrompt') and v.HoldDuration then
		v.HoldDuration = 0
	end
end

getgenv().AutoFarmReal = getgenv().IFood
getgenv().AutoFarm = true

local function TweenFuncion(HaveQuest)
	if HaveQuest == true then
		local Rig = game.Players.LocalPlayer.Character.HumanoidRootPart

		Rig.Anchored = true
		local Down = {}
		Down.CFrame = Rig.CFrame * CFrame.new(0,-10,0)

		local DownTime = TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.In)

		local StartDown = Tween:Create(Rig, DownTime, Down)
		StartDown:Play()
		StartDown.Completed:Connect(function()
			Rig.Anchored = false
			Rig.Anchored = true

			local DownOfQuest = {}
			DownOfQuest.CFrame = CFrame.new(-156.147766, 82.3218384, 4996.05518, 0.0788083375, -6.80438816e-08, -0.99688977, -4.97579933e-08, 1, -7.21897493e-08, 0.99688977, 5.52923893e-08, 0.0788083375) * CFrame.new(0,-10,0)

			local DownOfQuestTime = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In)

			local DownOfQuestStart = Tween:Create(Rig, DownOfQuestTime, DownOfQuest)
			DownOfQuestStart:Play()
			DownOfQuestStart.Completed:Connect(function()
				Rig.Anchored = false
				Rig.Anchored = true

				local InQuest = {}
				InQuest.CFrame = CFrame.new(-156.147766, 82.3218384, 4996.05518, 0.0788083375, -6.80438816e-08, -0.99688977, -4.97579933e-08, 1, -7.21897493e-08, 0.99688977, 5.52923893e-08, 0.0788083375)

				local InQuestTime = TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.In)

				local InQuestStart = Tween:Create(Rig, InQuestTime, InQuest)
				InQuestStart:Play()
				InQuestStart.Completed:Connect(function()
					wait(1)
					HaveQuest = false
					Rig.Anchored = false
					getgenv().AutoFarm = true
				end)
			end)
		end)
	elseif HaveQuest == false then 
		local Rig = game.Players.LocalPlayer.Character.HumanoidRootPart

		Rig.Anchored = true
		local Down = {}
		Down.CFrame = Rig.CFrame * CFrame.new(0,-10,0)

		local DownTime = TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.In)

		local StartDown = Tween:Create(Rig, DownTime, Down)
		StartDown:Play()
		StartDown.Completed:Connect(function()
			Rig.Anchored = false
			Rig.Anchored = true

			local DownOfQuest = {}
			DownOfQuest.CFrame = CFrame.new(-306.954041, 82.5260162, 5051.20605, 0.0153883277, -1.46686086e-09, -0.999881566, -4.24498836e-08, 1, -2.12034457e-09, 0.999881566, 4.24774846e-08, 0.0153883277) * CFrame.new(0,-10,0)

			local DownOfQuestTime = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In)

			local DownOfQuestStart = Tween:Create(Rig, DownOfQuestTime, DownOfQuest)
			DownOfQuestStart:Play()
			DownOfQuestStart.Completed:Connect(function()
				Rig.Anchored = false
				Rig.Anchored = true

				local InQuest = {}
				InQuest.CFrame = CFrame.new(-306.954041, 82.5260162, 5051.20605, 0.0153883277, -1.46686086e-09, -0.999881566, -4.24498836e-08, 1, -2.12034457e-09, 0.999881566, 4.24774846e-08, 0.0153883277)

				local InQuestTime = TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.In)

				local InQuestStart = Tween:Create(Rig, InQuestTime, InQuest)
				InQuestStart:Play()
				InQuestStart.Completed:Connect(function()
					wait(1)
					HaveQuest = true
					Rig.Anchored = false
					local Promt = game:GetService("Workspace").KainaGOI.PegarBolsa.ClickDetector
					fireclickdetector(Promt)
					getgenv().AutoFarm = true
				end)
			end)
		end)
	end
end

while true do wait()
	if getgenv().AutoFarmReal == true then
		local HaveQuest = false
		local Character = game.Players.LocalPlayer.Character
		local FindHumanoid = Character:FindFirstChild("HumanoidRootPart")
		if FindHumanoid then
			if Character.HumanoidRootPart:FindFirstChild("Bolsa") then
				HaveQuest = true
				if HaveQuest == true and getgenv().AutoFarm == true then
					getgenv().AutoFarm = false
					TweenFuncion(HaveQuest)
				end
			else
				HaveQuest = false
				if HaveQuest == false and getgenv().AutoFarm == true then
					getgenv().AutoFarm = false
					TweenFuncion(HaveQuest)
				end
			end
		else
			return
		end
	end
end

while true do wait(0.1)
    if getgenv().Caixa == true then
        local Caixa = game:GetService("Workspace").Caixa.Trabalhador
        if Caixa.Value == game.Players.LocalPlayer.Name then
            for _,CaixaColors in pairs(Caixa.Parent.Teclas:GetChildren()) do
                if CaixaColors:IsA("Part") and CaixaColors.Color == Color3.fromRGB(85, 255, 0) then
                    local Detectors = CaixaColors.ClickDetector
                    fireclickdetector(Detectors)
                end
            end
        else
            local Trabalhar = Caixa.Parent.Trabalhar.ClickDetector
            fireclickdetector(Trabalhar)
        end 
    end
end
