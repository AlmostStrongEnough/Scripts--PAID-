-- [[ Game Load + whitelist//blacklist]]

repeat
    wait()
until game:IsLoaded()
repeat
    wait()
until game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
game.Players.LocalPlayer.Character:WaitForChild("PowerOutput")
wait(Settings.waittime)

Whitelist = {1151614368,1601189242,2381443092,109766824,234068264,852459010,1516095318,1795688381,880612641,2569929261,371392846} -- In order : AlmostStrongEnough, SSJ_AV, dizrs, Kingstone216, skxllbound, Ali_GamerZ095, BlondeMaze, leoturbo2222, Knejo_YT, Biack_AV
Blacklist = {633527,859997648,793098591,1103623321,1202958687} -- In order : SnakeWorl, TheoTutoGaming, pookmaster21345, daniel6122_d, ibrahim5tr
local Earth = 536102540
local Queue = 3565304751
local Broly = 2050207304
function AntiKick()
    if game:GetService("CoreGui").RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
        game:GetService("TeleportService"):Teleport(Earth, LocalPlayer) --536102540
    end
end
if table.find(Whitelist, game.Players.LocalPlayer.UserId) then
    print "Whitelisted"
elseif not table.find(Whitelist, game.Players.LocalPlayer.UserId) then
    game.Players.LocalPlayer:Kick("Bye")
    return
elseif table.find(Blacklist, game.Players.LocalPlayer.UserId) then
    game.Players.LocalPlayer:Kick("You can't play this game anymore")
return
end

-- [[ Variables ]]

local Rootpart = game.Players.LocalPlayer.Character.HumanoidRootPart
local Client = game.Players.LocalPlayer
local Ids = {
    536102540, -- Earth
    3565304751, -- Que
    2050207304 -- Broly
}
function Twn(HRP, Place, Length)
    local Twn =
        game:GetService("TweenService"):Create(
        HRP,
        TweenInfo.new(.001, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
        {CFrame = Place}
    )
    Twn:Play()
    Twn.Completed:Wait()
end
wait()
print("[BLACK] Premium AB")
wait()
print("Loaded")
--[[ Credits ]]
game:GetService("StarterGui"):SetCore(
    "SendNotification",
    {
        Title = "Premium AutoBroly",
        Text = "discord.gg/c6PweG95QY",
        Icon = "http://www.roblox.com/asset/?id=10972296829",
        Duration = "5"
    }
)
-- [[ Server Promotion and Credits ]]

local Credits =
    coroutine.create(
    function()
        if Settings.FastTP == true then
            while wait(6.5) do
                local A_1 = "Auto-Broly by [BLACK] Clan ! Join .gg/c6PweG95QY"
                local A_2 = "All"
                local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
                Event:FireServer(A_1, A_2)
            end
        end
    end
)

coroutine.resume(Credits)

-- [[New coroutines (stop at lvl, low gfx, beerus animation, auto stats points)]]

local StopAtLVL =
    coroutine.create(
        function()
            while wait() do
                if Settings.StopAtLVL > 0 then
                    if tonumber(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("HUD").Bottom.Stats.LVL.Val.Text) >= Settings.StopAtLVL then
                        game.Players.LocalPlayer:Kick("You've been banned. All your data has been wiped. Rejoin to start a new account.")
                    end
                end
            end
        end
)

coroutine.resume(StopAtLVL)

local FPSBoost =
    coroutine.create(
         function()
        while wait(1) do
            if not Settings.FPSBoost then break end
                        settings().Rendering.QualityLevel = 1
            for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA('Part') or v:IsA('MeshPart') or v:IsA("UnionOperation") then
                    v.Material = "SmoothPlastic"
                end
            end
        end
    end
)

coroutine.resume(FPSBoost)

local AutoStatPoints = 
    coroutine.create(
        function()
            while wait() do 
                if not Settings.AutoStatPoints.Enabled then break end
                if tonumber(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats.StatPoints.Val.Text) == 0 then break end
                if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats:FindFirstChild(Settings.AutoStatPoints.Stat) then
                game:GetService("Players").LocalPlayer.Backpack.ServerTraits.AttemptUpgrade:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Bottom.Stats:FindFirstChild(Settings.AutoStatPoints.Stat))
                end
            end
        end)

coroutine.resume(AutoStatPoints)

--[[ Death Checker ]]
local DeathChecker =
    coroutine.create(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if game:GetService("Workspace").Live[Client.name].Humanoid.Health < .1 then
                    game:GetService("TeleportService"):Teleport(Ids[1], LocalPlayer)
                end
            end
        )
    end
)
coroutine.resume(DeathChecker)

if game.PlaceId == 536102540 then
    Client.PlayerGui.HUD.Bottom.SP.BackgroundColor3 = Color3.new(0,0,0)
end

if game.PlaceId == 3565304751 then
    Client.PlayerGui.HUD.Bottom.SP.BackgroundColor3 = Color3.new(0,0,0)
end

--[[ Variables ]]
Character = Client.Character or Client.CharacterAdded:Wait()
Workspace = game:GetService("Workspace")

--[[ Earth Sequence ]]
if Settings.Earth == true and game.PlaceId == Ids[1] then
    game:GetService("Workspace").Live[Client.name].PowerOutput:Destroy()
    wait(.2)
    Rootpart.CFrame =
        CFrame.new(
        -2273.84326,
        55.506794,
        -7352.45947,
        -0.999128878,
        0,
        0.0417326503,
        0,
        1,
        -0,
        -0.041732654,
        0,
        -0.999128759
    )
    wait(.2)
    Client.Character.LowerTorso:Destroy()
    wait(.1)
    Rootpart.CFrame =
        CFrame.new(
        2751.73364,
        3944.85986,
        -2272.65967,
        0.999996364,
        0,
        -0.00272208848,
        -0,
        1.00000012,
        -0,
        0.00272208848,
        0,
        0.999996364
    )
    wait(.2)
    Rootpart.Anchored = true
    wait(45)
    game:GetService("TeleportService"):Teleport(Ids[1], LocalPlayer)
end

--[[Queue Sequence]]
if Settings.Earth == false and Settings.CarryMode == false then
    if game.PlaceId == Ids[2] then
        game:GetService("Workspace").Live[Client.name].PowerOutput:Destroy()
        wait(.1)
        if Settings.invis == true then
            Rootpart.CFrame =
                CFrame.new(
                3400.90845,
                238,
                -2582.83447,
                -0.753878355,
                0,
                0.657014072,
                0,
                1,
                -0,
                -0.657014072,
                0,
                -0.753878355
            )
            wait(.2)
            Client.Character.LowerTorso:Destroy()
            wait(.1)
        end
        local Pads = {}
        for i, v in pairs(game:WaitForChild("Workspace"):GetChildren()) do
            if v.Name:find("BrolyTeleport") then
                table.insert(Pads, v)
            end
        end
        local pad = Pads[math.random(1, 7)]
        print(pad.Name)
        Twn(Rootpart, pad.PrimaryPart.CFrame, 1)
        wait(.2)
        Rootpart.Anchored = true
        wait(30)
        game:GetService("TeleportService"):Teleport(Ids[1], LocalPlayer)
    end
end
if game.PlaceId == Ids[1] then
    game:GetService("TeleportService"):Teleport(Ids[2], LocalPlayer)
end

--[[ Carry Mode ]]
if Settings.CarryMode == true then
    if game.PlaceId == Ids[2] then
        game:GetService("Workspace").Live[Client.name].PowerOutput:Destroy()
        local teleportLoop =
            coroutine.create(
            function()
                game:GetService("RunService").Stepped:Connect(
                    function()
                        Rootpart.CFrame =
                            CFrame.new(
                            -25.1735096,
                            238.054749,
                            -148.494934,
                            0.999986291,
                            0,
                            -0.00523946295,
                            -0,
                            1,
                            -0,
                            0.00523946295,
                            0,
                            0.999986291
                        )
                    end
                )
            end
        )
        coroutine.resume(teleportLoop)
        wait(1)
        game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("g")
        wait(25)
        game:GetService("TeleportService"):Teleport(Ids[2], LocalPlayer)
    end
end
if game.PlaceId == Ids[1] then
    game:GetService("TeleportService"):Teleport(Ids[2], LocalPlayer)
end
--[[ Broly Sequence ]]
if game.PlaceId == Ids[3] then
    if Settings.AntiLeach == true then
        if #game.Players:GetChildren() > 1 then
            game:GetService("TeleportService"):Teleport(Ids[1], LocalPlayer)
        elseif Settings.AntiLeach == false then
            print("AntiLeach disabled")
        end
    end

    if Settings.forms == true then
        wait(.2)
        Client.Backpack.ServerTraits.Input:FireServer({"x"}, CFrame.new())
        wait(3.6)
        Client.Backpack.ServerTraits.Transform:FireServer("h")
        wait(1)
        Client.Backpack.ServerTraits.Input:FireServer({"xoff"}, CFrame.new())
    end

    local track =
        coroutine.create(
        function()
            Target = "broly br"
            for i, w in pairs(game.Workspace.Live:GetChildren()) do
                if string.match(string.lower(w.Name), string.lower(Target)) then
                    _G.Track = true
                    while _G.Track and game:GetService("RunService").Heartbeat:wait() do
                        w:WaitForChild("HumanoidRootPart")
                        for i, v in pairs(game.Workspace:GetChildren()) do
                            if v:FindFirstChild("Ki") and v:FindFirstChild("Mesh") then
                                v.CFrame = w.HumanoidRootPart.CFrame
                            end
                        end
                        for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                            if v:FindFirstChild("Ki") and v:FindFirstChild("Mesh") then
                                v.CFrame = w.HumanoidRootPart.CFrame
                            end
                        end
                    end
                end
            end
        end
    )

    coroutine.resume(track)

    local CameraFollow =
        coroutine.create(
        function()
            if Settings.BrolyCamera == true then
                game:GetService("RunService").Stepped:Connect(
                    function()
                        game.Workspace.CurrentCamera.CFrame =
                            CFrame.new(
                            Client.Character.HumanoidRootPart.Position,
                            game:GetService("Workspace").Live["Broly BR"].HumanoidRootPart.Position
                        ) * CFrame.new(0, 2, 20)
                    end
                )
                if Settings.BrolyCamera == false then
                    print("Broly Camera disabled")
                end
            end
        end
    )
    local DamageChecker =
        coroutine.create(
        function()
            repeat
                wait()
            until game:GetService("Workspace").DistributedGameTime >= Settings.GrabChecker
            if game:GetService("Workspace").Live["Broly BR"].Stats["Health-Max"].Value < 53589 then
                game:GetService("TeleportService"):Teleport(Ids[2], LocalPlayer)
            end
        end
    )

    coroutine.resume(DamageChecker)
    coroutine.resume(CameraFollow)

    local GoGod =
        coroutine.create(
        function()
            local God = true
            while God == true do
                wait()
                if
                    game.Workspace.Live[Client.Name].Humanoid.Health <= Client.Character.Humanoid.MaxHealth * .2 and
                        game.Workspace.Live[Client.Name].Ki.Value <= Workspace.Live[Client.Name].Ki.MaxValue * .2
                 then
                    Client.Backpack.ServerTraits.Transform:FireServer("g")
                    wait()
                    Client.Backpack.ServerTraits.Transform:FireServer("h")
                    wait()
                    Client.Backpack.ServerTraits.Transform:FireServer("g")
                end
            end
        end
    )

    coroutine.resume(GoGod)

    local PetAssist =
    coroutine.create(
    function()
        local PetAssist = true
        while Assist == true do
            if
            game:IsLoaded()
            then
                wait(5)
                Client.Backpack.ServerTraits.Assist:FireServer("b")
                wait()
                Client.Backpack.ServerTraits.Assist:FireServer("b")
                wait()
                Client.Backpack.ServerTraits.Assist:FireServer("b")
            end
        end
    end
)

coroutine.resume(PetAssist)

    local brolyhealthDisplay =
        coroutine.create(
        function()
            game:GetService("RunService").RenderStepped:connect(
                function()
                    game:GetService("Players")[Client.name].PlayerGui.HUD.Bottom.SP.Visible = true
                    Client.PlayerGui.HUD.Bottom.SP.Text = "[BLACK] Premium Auto-Broly | Level : " .. Client.PlayerGui.HUD.Bottom.Stats.LVL.Val.Text .. " | Time Elapsed : " .. math.floor(Workspace.DistributedGameTime) .. " / " ..Settings.RejoinTime .. " | Broly Health : " .. math.floor(Workspace.Live["Broly BR"].Humanoid.Health)
		    Client.PlayerGui.HUD.Bottom.SP.BackgroundColor3 = Color3.new(0,0,0)
                end
            )
        end
    )
    coroutine.resume(brolyhealthDisplay)

    local frameLoop = -- [[ always make a variable so you can insert it in the resume() --]]
        coroutine.create(
        function()
            -- Always wrap a function so the wrap has something to run
            game:GetService("RunService").RenderStepped:connect(
                function()
                    Rootpart.CFrame =
                        CFrame.new(
                        -15.7652674,
                        -126.684319,
                        -10.7393866,
                        0.989255607,
                        0,
                        0.146196648,
                        -0,
                        1.00000012,
                        -0,
                        -0.146196648,
                        0,
                        0.989255607
                    )
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    game:GetService("Workspace").Camera.FieldOfView = 120
                end
            )
        end
    )
    coroutine.resume(frameLoop)

    local AutoHit =
        coroutine.create(
        function()
            game:GetService("RunService").RenderStepped:Connect(
                function()
                    if Settings.AutoPunch == true and game.Workspace.Live[Client.name].Ki.Value < 36 then
                        Client.Backpack.ServerTraits.Input:FireServer({"m2"}, CFrame.new())
                    end
                end
            )
        end
    )
    local LateTransform =
        coroutine.create(
        function()
            if Settings.LateTransform == true then
                repeat
                    wait()
                until Workspace.Live[Client.name].Ki.Value <= Workspace.Live[Client.name].Ki.MaxValue * .7
                Client.Backpack.ServerTraits.Transform:FireServer("g")
                wait(.2)
                Client.Backpack.ServerTraits.Transform:FireServer("g")
                wait(.2)
                Client.Backpack.ServerTraits.Transform:FireServer("g")
                wait(.2)
                Client.Backpack.ServerTraits.Transform:FireServer("g")
            elseif LateTrasform == false then
                Client.Backpack.ServerTraits.Transform:FireServer("g")
            end
        end
    )

    coroutine.resume(LateTransform)

    if Settings.AutoPunch == false then
        print("Auto punch disabled")
    end

    if Settings.DoubleFreeze == true then
        game:GetService("Workspace").Live[Client.name]:FindFirstChild("True"):Destroy()
    elseif Settings.DoubleFreeze == false then
        print("DoubleFreeze disabled")
    end
    if Settings.TeamDamage == true then
        game:GetService("Workspace").Live[Client.name]:FindFirstChild("team damage"):Destroy()
    elseif Settings.TeamDamage == false then
        print("TeamDamage disabled")
    end

    Client.Backpack:WaitForChild("Dragon Throw")
    Client.Backpack["Dragon Throw"].Activator:WaitForChild("Flip")
    wait()
    if (Client.Backpack:FindFirstChild("Dragon Throw")) then
        repeat
            wait()
            Character:FindFirstChildOfClass("Humanoid"):EquipTool(Client.Backpack["Dragon Throw"])
        until Client.Character:FindFirstChild("Dragon Throw")

        repeat
            wait()
            Character["Dragon Throw"]:Activate()
        until Character.Ki.Value < Character.Ki.MaxValue
    end

    local GrabCheck =
        coroutine.create(
        function()
            wait(.5)
            if not game.Workspace.Live["Broly BR"]:FindFirstChild("Override") then
                game.Players.LocalPlayer:Kick()
            end
        end
    )

    coroutine.resume(GrabCheck)

    repeat
        wait()
        Character["Dragon Throw"].Activator:FindFirstChild("Flip"):Destroy()
    until not Character["Dragon Throw"].Activator:FindFirstChild("Flip")

    coroutine.resume(AutoHit)
    local RejoinTime =
        coroutine.create(
        function()
            game:GetService("RunService").RenderStepped:Connect(
                function()
                    if game:GetService("Workspace").DistributedGameTime >= Settings.RejoinTime then
                        game:GetService("TeleportService"):Teleport(Ids[1], LocalPlayer)
                    end
                end
            )
        end
    )
    coroutine.resume(RejoinTime)

    local runService = game:GetService("RunService")
    local debuffs = {
        "Look",
        "xx",
        "Action",
        "SuperAction",
        "Attacking",
        "Using",
        "heavy",
        "hyper",
        "Hyper",
        "Tele",
        "tele",
        "Slow",
        "Killed",
        "KiBlasted",
        "MoveStart",
        "Hyper",
        "Dodging",
        "KiBlasting",
        "BStun",
        "creator",
        "KnockBacked",
        "NotHardBack"
    }

    local function onCharacterAdded(character)
        if (not character) then
            return
        end

        character.ChildAdded:Connect(
            function(child)
                runService.RenderStepped:Wait()
                if (table.find(debuffs, child.Name)) then
                    child:Destroy()
                end
            end
        )
    end

    onCharacterAdded(Client.Character)
    Client.CharacterAdded:Connect(onCharacterAdded)

    if (Client.Character) then
        for i, v in next, Client.Character:GetChildren() do
            if (table.find(debuffs, v.Name)) then
                runService.RenderStepped:Wait()
                v:Destroy()
            end
        end
    end
    local ExplosiveWaveEZ =
        coroutine.create(
        function()
            game:GetService("RunService").Stepped:Connect(
                function()
                    local Detection = {"ExplosiveWave"}

                    for i, v in pairs(game.Workspace:GetChildren()) do
                        if table.find(Detection, v.Name) then
                            wait()
                            Client.Character:FindFirstChild("Humanoid"):EquipTool(Client.Backpack["Flash Strike"])
                            Client.Character["Flash Strike"]:Activate()
                            Client.Character["Flash Strike"]:Deactivate()
                            wait(.2)
                            if Client.Character["Flash Strike"] then
                                Client.Character["Flash Strike"].Parent = Client.Backpack
                            end
                        end
                    end
                end
            )
        end
    )

    coroutine.resume(ExplosiveWaveEZ)

    if Settings.AnimateFreeze == true then
        game.Players.LocalPlayer.Character.Humanoid.Animator.Parent = game.Workspace.Live["Broly BR"].Humanoid
        wait(.2)
        game.Workspace.Live["Broly BR"].Humanoid.Animator:Destroy()
        wait(.1)
        game.Workspace.Live["Broly BR"].Humanoid.Animator:Destroy()
    elseif Settings.AnimateFreeze == false then
        print("Animation running")
    end
    local GrabLol =
        coroutine.create(
        function()
		local animtracks = Workspace.Live["Broly BR"].Humanoid:GetPlayingAnimationTracks()
		for i,v in pairs(animtracks) do
    			if v.Name ~= "Idle" and Character.Ki.Value ~= Character.Ki.MaxValue then
          			print("Not grabbed")
			elseif v.Name == "Idle" and Character.Ki.Value ~= Character.Ki.MaxValue then
				Client:Kick("Not grabbed")
    			end
		end
	end
)

    coroutine.resume(GrabLol)

-- [[ Output Change ]]

    coroutine.resume(
        coroutine.create(
            function()
                while Settings.OutputChange == true do
		     if Client.Character.LowerTorso:FindFirstChild('Ui3') and Client.PlayerGui.HUD.Bottom.SideMenu.Output.Perc.Text ~= "100%" then
                     print("Increasing ki")
                     Client.Backpack.ServerTraits.Input:FireServer({"increase"}, true)
                  end
                  wait(.2)
                  if Client.Character.Ki.Value <= Client.Character.Ki.MaxValue * .09 then
                       if Client.PlayerGui.HUD.Bottom.SideMenu.Output.Perc.Text ~= Settings.Amount .. "%" then
                            Client.Backpack.ServerTraits.Input:FireServer({"decrease"}, true)
                            print("Decreasing ki")
                         end
                  end
             end
end))
    
    coroutine.resume(coroutine.create(function()
        for i, v in pairs(game.Workspace:GetDescendants()) do
            while wait() do
                v.CanCollide = false
            end
        end
    end
    )
)

    while true do
        for i, v in pairs(Client.Backpack:GetChildren()) do
            if
                v.Name == Move1 or v.Name == Move2 or v.Name == Move3 or v.Name == Move4 or v.Name == Move5 or
                    v.Name == Move6 or
                    v.Name == Move7 or
                    v.Name == Move8 or
                    v.Name == Move9 or
                    v.Name == Move0
             then
                v.Parent = Client.Character
                v:Activate()
                v:Deactivate()
                wait(.2)
                v.Parent = Client.Backpack
                Client.Backpack.ServerTraits.EatSenzu:FireServer(
                    "snake ruined the game by removing red spam."
                )
                if game.Workspace.Live["Broly BR"].Humanoid.Health < .1 then
                    if Settings.Earth == true then
                        game:GetService("TeleportService"):Teleport(Ids[1], LocalPlayer)
                    elseif Settings.Earth == false then
                        game:GetService("TeleportService"):Teleport(Ids[2], LocalPlayer)
                    end
                end
            end
        end
    end
end
