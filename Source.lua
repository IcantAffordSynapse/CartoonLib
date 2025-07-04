--[[
  ______    ______   _______  ________   ______    ______   __    __ 
 /      \  /      \ |       \|        \ /      \  /      \ |  \  |  \
|  $$$$$$\|  $$$$$$\| $$$$$$$\\$$$$$$$$|  $$$$$$\|  $$$$$$\| $$\ | $$
| $$   \$$| $$__| $$| $$__| $$  | $$   | $$  | $$| $$  | $$| $$$\| $$
| $$      | $$    $$| $$    $$  | $$   | $$  | $$| $$  | $$| $$$$\ $$
| $$   __ | $$$$$$$$| $$$$$$$\  | $$   | $$  | $$| $$  | $$| $$\$$ $$
| $$__/  \| $$  | $$| $$  | $$  | $$   | $$__/ $$| $$__/ $$| $$ \$$$$
 \$$    $$| $$  | $$| $$  | $$  | $$    \$$    $$ \$$    $$| $$  \$$$
  \$$$$$$  \$$   \$$ \$$   \$$   \$$     \$$$$$$   \$$$$$$  \$$   \$$
                                                                     
                                                                     
                                                                     
 __        ______  _______                                           
|  \      |      \|       \                                          
| $$       \$$$$$$| $$$$$$$\                                         
| $$        | $$  | $$__/ $$                                         
| $$        | $$  | $$    $$            lol                                
| $$        | $$  | $$$$$$$\                                         
| $$_____  _| $$_ | $$__/ $$                                         
| $$     \|   $$ \| $$    $$                                         
 \$$$$$$$$ \$$$$$$ \$$$$$$$                                          

    >> Feel free to mess around with the code, add stuff, remove stuff make it your own.
    >> Credit would be cool but you do you
]]

local uiLib = {}

function uiLib:Window(Header, ToggleKey)
    local ScreenGui = Instance.new("ScreenGui")
    local MainBG = Instance.new("ImageLabel")
    local TopBar = Instance.new("Frame")
    local MinimizeBTN = Instance.new("ImageButton")
    local CloseBTN = Instance.new("ImageButton")
    local TitleName = Instance.new("TextLabel")
    local TabsContainer = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")

    ScreenGui.Parent = game:GetService("CoreGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    MainBG.Name = "MainBG"
    MainBG.Parent = ScreenGui
    MainBG.AnchorPoint = Vector2.new(0.5, 0.5)
    MainBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainBG.BackgroundTransparency = 1.000
    MainBG.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MainBG.BorderSizePixel = 0
    MainBG.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainBG.Size = UDim2.new(0.445409417, 0, 0.50373137, 0)
    MainBG.Image = "rbxassetid://120296497453384"

    TopBar.Name = "TopBar"
    TopBar.Parent = MainBG
    TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
    TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopBar.BackgroundTransparency = 1.000
    TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(0.5, 0, 0.114, 0)
    TopBar.Size = UDim2.new(0.924791098, 0, 0.1382716, 0)

    MinimizeBTN.Name = "MinimizeBTN"
    MinimizeBTN.Parent = TopBar
    MinimizeBTN.AnchorPoint = Vector2.new(0.5, 0.5)
    MinimizeBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeBTN.BackgroundTransparency = 1.000
    MinimizeBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MinimizeBTN.BorderSizePixel = 0
    MinimizeBTN.Position = UDim2.new(0.864000022, 0, 0.5, 0)
    MinimizeBTN.Size = UDim2.new(0.0843373463, 0, 1, 0)
    MinimizeBTN.Image = "rbxassetid://117149024910332"

    CloseBTN.Name = "CloseBTN"
    CloseBTN.Parent = TopBar
    CloseBTN.AnchorPoint = Vector2.new(0.5, 0.5)
    CloseBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseBTN.BackgroundTransparency = 1.000
    CloseBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CloseBTN.BorderSizePixel = 0
    CloseBTN.Position = UDim2.new(0.957273901, 0, 0.49999997, 0)
    CloseBTN.Size = UDim2.new(0.0843373463, 0, 0.99999994, 0)
    CloseBTN.Image = "rbxassetid://128963094002059"

    TitleName.Name = "TitleName"
    TitleName.Parent = TopBar
    TitleName.AnchorPoint = Vector2.new(0, 0.5)
    TitleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TitleName.BackgroundTransparency = 1.000
    TitleName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TitleName.BorderSizePixel = 0
    TitleName.Position = UDim2.new(0, 0, 0.5, 0)
    TitleName.Size = UDim2.new(0.480421692, 0, 1, 0)
    TitleName.Font = Enum.Font.FredokaOne
    TitleName.Text = Header
    TitleName.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleName.TextScaled = true
    TitleName.TextSize = 14.000
    TitleName.TextWrapped = true
    TitleName.TextXAlignment = Enum.TextXAlignment.Left

    TabsContainer.Name = "TabsContainer"
    TabsContainer.Parent = MainBG
    TabsContainer.Active = true
    TabsContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    TabsContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabsContainer.BackgroundTransparency = 1.000
    TabsContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabsContainer.BorderSizePixel = 0
    TabsContainer.Position = UDim2.new(0.165738165, 0, 0.59629631, 0)
    TabsContainer.Size = UDim2.new(0.233983293, 0, 0.6592592, 0)
    TabsContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabsContainer.ScrollBarThickness = 6

    UIListLayout.Parent = TabsContainer
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 4)

    local function JARJG_fake_script() -- TopBar.LocalScript 
        local script = Instance.new('LocalScript', TopBar)

        local close = script.Parent.CloseBTN
        local minimize = script.Parent.MinimizeBTN
        local uip = game:GetService("UserInputService")
        
        close.MouseEnter:Connect(function()
            close:TweenSize(UDim2.new(0.092, 0, 1.089, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
        end)
        close.MouseLeave:Connect(function()
            close:TweenSize(UDim2.new(0.084, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
        end)
        close.MouseButton1Click:Connect(function()
            -- script.click:Play()
            script.Parent.Parent:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.4, true)
            wait(0.4)
            script.Parent.Parent:Destroy()
        end)
        
        minimize.MouseEnter:Connect(function()
            minimize:TweenSize(UDim2.new(0.092, 0, 1.089, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
        end)
        minimize.MouseLeave:Connect(function()
            minimize:TweenSize(UDim2.new(0.084, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
        end)
        minimize.MouseButton1Click:Connect(function()
            -- script.click:Play()
            script.Parent.Parent:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.4, true)
            wait(0.4)
            script.Parent.Parent.Visible = false
        end)
        
        uip.InputBegan:Connect(function(input)
            if input.KeyCode == ToggleKey then
                script.Parent.Parent.Visible = true
                script.Parent.Parent:TweenSize(UDim2.new(0.445, 0, 0.504, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.4, true)
            end
        end)
    end
    coroutine.wrap(JARJG_fake_script)()
    local function EFULU_fake_script() -- MainBG.Dragify 
        local script = Instance.new('LocalScript', MainBG)

        local UIS = game:GetService("UserInputService")
        function dragify(Frame)
            dragToggle = nil
            dragSpeed = 0.75
            dragInput = nil
            dragStart = nil
            dragPos = nil
            function updateInput(input)
                Delta = input.Position - dragStart
                Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
            end
            Frame.InputBegan:Connect(function(input)
                if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                    dragToggle = true
                    dragStart = input.Position
                    startPos = Frame.Position
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragToggle = false
                        end
                    end)
                end
            end)
            Frame.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    dragInput = input
                end
            end)
            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if input == dragInput and dragToggle then
                    updateInput(input)
                end
            end)
        end
        dragify(script.Parent)
        
    end
    coroutine.wrap(EFULU_fake_script)()

    local AspectRatio = Instance.new("UIAspectRatioConstraint")
    AspectRatio.Name = "AspectRatio"
    AspectRatio.Parent = MainBG
    AspectRatio.AspectRatio = 1.773

    local Sections = {}

    function Sections:Tab(Name)
        local TabBTN = Instance.new("ImageButton")
        local TabLabel = Instance.new("TextLabel")
        local SectionContainer = Instance.new("ScrollingFrame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        TabBTN.Name = "TabBTN"
        TabBTN.Parent = TabsContainer
        TabBTN.AnchorPoint = Vector2.new(0.5, 0.5)
        TabBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabBTN.BackgroundTransparency = 1.000
        TabBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabBTN.BorderSizePixel = 0
        TabBTN.Position = UDim2.new(0.464285702, 0, 0.078651689, 0)
        TabBTN.Size = UDim2.new(0.928571403, 0, 0.157303378, 0)
        TabBTN.Image = "rbxassetid://81480504604545"

        TabLabel.Name = "TabLabel"
        TabLabel.Parent = TabBTN
        TabLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        TabLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabLabel.BackgroundTransparency = 1.000
        TabLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabLabel.BorderSizePixel = 0
        TabLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        TabLabel.Size = UDim2.new(0.826923072, 0, 0.571428597, 0)
        TabLabel.Font = Enum.Font.FredokaOne
        TabLabel.Text = Name
        TabLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabLabel.TextScaled = true
        TabLabel.TextSize = 14.000
        TabLabel.TextWrapped = true

        SectionContainer.Name = "SectionContainer"
        SectionContainer.Parent = MainBG
        SectionContainer.Active = true
        SectionContainer.AnchorPoint = Vector2.new(0.5, 0.5)
        SectionContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SectionContainer.BackgroundTransparency = 1.000
        SectionContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
        SectionContainer.BorderSizePixel = 0
        SectionContainer.Position = UDim2.new(0.63997215, 0, 0.59629631, 0)
        SectionContainer.Size = UDim2.new(0.616991639, 0, 0.6592592, 0)
        SectionContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
        SectionContainer.ScrollBarThickness = 6

        UIListLayout_2.Parent = SectionContainer
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 4)

        TabBTN.MouseButton1Click:Connect(function()
            for _, sect in pairs(MainBG:GetChildren()) do
                if sect.Name == "SectionContainer" then
                    sect.Visible = false
                end
            end

            SectionContainer.Visible = true
        end)

        local function IBIUH_fake_script() -- TabBTN.LocalScript 
            local script = Instance.new('LocalScript', TabBTN)

            local btn = script.Parent
            
            btn.MouseEnter:Connect(function()
                btn:TweenSize(UDim2.new(0.929, 0, 0.17, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
            end)
            btn.MouseLeave:Connect(function()
                btn:TweenSize(UDim2.new(0.929, 0, 0.157, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
            end)
            btn.MouseButton1Click:Connect(function()
                --script.click:Play()
            end)
            
        end
        coroutine.wrap(IBIUH_fake_script)()

        local Elements = {}

        function Elements:Button(Title, Callback)
            local ButtonInstance = Instance.new("ImageButton")
            local ButtonLabel = Instance.new("TextLabel")

            ButtonInstance.Name = "ButtonInstance"
            ButtonInstance.Parent = SectionContainer
            ButtonInstance.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonInstance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonInstance.BackgroundTransparency = 1.000
            ButtonInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ButtonInstance.BorderSizePixel = 0
            ButtonInstance.Position = UDim2.new(0.483069986, 0, 0.102996252, 0)
            ButtonInstance.Size = UDim2.new(0.966139972, 0, 0.205992505, 0)
            ButtonInstance.Image = "rbxassetid://124278731778930"

            ButtonLabel.Name = "ButtonLabel"
            ButtonLabel.Parent = ButtonInstance
            ButtonLabel.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ButtonLabel.BackgroundTransparency = 1.000
            ButtonLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ButtonLabel.BorderSizePixel = 0
            ButtonLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
            ButtonLabel.Size = UDim2.new(0.871495306, 0, 0.581818163, 0)
            ButtonLabel.Font = Enum.Font.FredokaOne
            ButtonLabel.Text = Title
            ButtonLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            ButtonLabel.TextScaled = true
            ButtonLabel.TextSize = 14.000
            ButtonLabel.TextWrapped = true
            ButtonLabel.TextXAlignment = Enum.TextXAlignment.Left

            ButtonInstance.MouseButton1Click:Connect(function()
                pcall(Callback)
            end)

            local function FOVPQU_fake_script() -- ButtonInstance.LocalScript 
                local script = Instance.new('LocalScript', ButtonInstance)

                local btn = script.Parent
                
                btn.MouseEnter:Connect(function()
                    btn:TweenSize(UDim2.new(0.966, 0, 0.221, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
                end)
                btn.MouseLeave:Connect(function()
                    btn:TweenSize(UDim2.new(0.966, 0, 0.206, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
                end)
                btn.MouseButton1Click:Connect(function()
                    -- script.click:Play()
                end)
                
            end
            coroutine.wrap(FOVPQU_fake_script)()
        end

        function Elements:Toggle(Title, Callback)
            local toggle = false
            local ToggleInstance = Instance.new("ImageButton")
            local ToggleLabel = Instance.new("TextLabel")
            local ToggleOn = Instance.new("ImageButton")
            local ToggleOff = Instance.new("ImageButton")

            ToggleInstance.Name = "ToggleInstance"
            ToggleInstance.Parent = SectionContainer
            ToggleInstance.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleInstance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleInstance.BackgroundTransparency = 1.000
            ToggleInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ToggleInstance.BorderSizePixel = 0
            ToggleInstance.Position = UDim2.new(0.483069986, 0, 0.102996252, 0)
            ToggleInstance.Size = UDim2.new(0.966139972, 0, 0.205992505, 0)
            ToggleInstance.Image = "rbxassetid://124278731778930"

            ToggleLabel.Name = "ToggleLabel"
            ToggleLabel.Parent = ToggleInstance
            ToggleLabel.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleLabel.BackgroundTransparency = 1.000
            ToggleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ToggleLabel.BorderSizePixel = 0
            ToggleLabel.Position = UDim2.new(0.445093453, 0, 0.5, 0)
            ToggleLabel.Size = UDim2.new(0.761682272, 0, 0.581818163, 0)
            ToggleLabel.Font = Enum.Font.FredokaOne
            ToggleLabel.Text = Title
            ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            ToggleLabel.TextScaled = true
            ToggleLabel.TextSize = 14.000
            ToggleLabel.TextWrapped = true
            ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left

            ToggleOn.Name = "ToggleOn"
            ToggleOn.Parent = ToggleInstance
            ToggleOn.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleOn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleOn.BackgroundTransparency = 1.000
            ToggleOn.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ToggleOn.BorderSizePixel = 0
            ToggleOn.Position = UDim2.new(0.925999999, 0, 0.5, 0)
            ToggleOn.Size = UDim2.new(0.0864485949, 0, 0.672727287, 0)
            ToggleOn.Visible = false
            ToggleOn.Image = "rbxassetid://72131782923791"

            ToggleOff.Name = "ToggleOff"
            ToggleOff.Parent = ToggleInstance
            ToggleOff.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleOff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleOff.BackgroundTransparency = 1.000
            ToggleOff.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ToggleOff.BorderSizePixel = 0
            ToggleOff.Position = UDim2.new(0.925999999, 0, 0.5, 0)
            ToggleOff.Size = UDim2.new(0.0864485949, 0, 0.672727287, 0)
            ToggleOff.Image = "rbxassetid://82995886776259"

            local function GHZTVPV_fake_script() -- ToggleInstance.LocalScript 
                local script = Instance.new('LocalScript', ToggleInstance)

                local btn = script.Parent
                
                btn.MouseEnter:Connect(function()
                    btn:TweenSize(UDim2.new(0.966, 0, 0.221, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
                end)
                btn.MouseLeave:Connect(function()
                    btn:TweenSize(UDim2.new(0.966, 0, 0.206, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
                end)
                btn.MouseButton1Click:Connect(function()
                    -- script.click:Play()
                end)
                
            end
            coroutine.wrap(GHZTVPV_fake_script)()

            ToggleInstance.MouseButton1Click:Connect(function()
                if toggle then
                    toggle = false
                    ToggleOn.Visible = false
                    ToggleOff.Visible = true
                else
                    toggle = true
                    ToggleOn.Visible = true
                    ToggleOff.Visible = false
                end

                pcall(Callback(toggle))
            end)
        end

        function Elements:TextBox(Title, callback)
            local TextBoxInstance = Instance.new("ImageButton")
            local TextBoxLabel = Instance.new("TextLabel")
            local InputBG = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local TextBoxInput = Instance.new("TextBox")

            TextBoxInstance.Name = "TextBoxInstance"
            TextBoxInstance.Parent = SectionContainer
            TextBoxInstance.AnchorPoint = Vector2.new(0.5, 0.5)
            TextBoxInstance.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBoxInstance.BackgroundTransparency = 1.000
            TextBoxInstance.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextBoxInstance.BorderSizePixel = 0
            TextBoxInstance.Position = UDim2.new(0.483069986, 0, 0.569288373, 0)
            TextBoxInstance.Size = UDim2.new(0.966139972, 0, 0.254681647, 0)
            TextBoxInstance.Image = "rbxassetid://124278731778930"

            TextBoxLabel.Name = "TextBoxLabel"
            TextBoxLabel.Parent = TextBoxInstance
            TextBoxLabel.AnchorPoint = Vector2.new(0.5, 0.5)
            TextBoxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBoxLabel.BackgroundTransparency = 1.000
            TextBoxLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextBoxLabel.BorderSizePixel = 0
            TextBoxLabel.Position = UDim2.new(0.42899999, 0, 0.340000004, 0)
            TextBoxLabel.Size = UDim2.new(0.761682272, 0, 0.367647052, 0)
            TextBoxLabel.Font = Enum.Font.FredokaOne
            TextBoxLabel.Text = "TextBox Name"
            TextBoxLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBoxLabel.TextScaled = true
            TextBoxLabel.TextSize = 14.000
            TextBoxLabel.TextWrapped = true
            TextBoxLabel.TextXAlignment = Enum.TextXAlignment.Left

            InputBG.Name = "InputBG"
            InputBG.Parent = TextBoxInstance
            InputBG.AnchorPoint = Vector2.new(0.5, 0.5)
            InputBG.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
            InputBG.BorderColor3 = Color3.fromRGB(0, 0, 0)
            InputBG.BorderSizePixel = 0
            InputBG.Position = UDim2.new(0.429453343, 0, 0.70588237, 0)
            InputBG.Size = UDim2.new(0.75934577, 0, 0.308823526, 0)

            UICorner.CornerRadius = UDim.new(1, 0)
            UICorner.Parent = InputBG

            TextBoxInput.Name = "TextBoxInput"
            TextBoxInput.Parent = InputBG
            TextBoxInput.Active = false
            TextBoxInput.AnchorPoint = Vector2.new(0.5, 0.5)
            TextBoxInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBoxInput.BackgroundTransparency = 1.000
            TextBoxInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
            TextBoxInput.BorderSizePixel = 0
            TextBoxInput.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextBoxInput.Selectable = false
            TextBoxInput.Size = UDim2.new(0.889230788, 0, 0.90476191, 0)
            TextBoxInput.Font = Enum.Font.FredokaOne
            TextBoxInput.PlaceholderColor3 = Color3.fromRGB(5, 182, 255)
            TextBoxInput.PlaceholderText = "Type here.."
            TextBoxInput.Text = ""
            TextBoxInput.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBoxInput.TextScaled = true
            TextBoxInput.TextSize = 14.000
            TextBoxInput.TextWrapped = true
            TextBoxInput.TextXAlignment = Enum.TextXAlignment.Left

            local function EPGO_fake_script() -- TextBoxInstance.LocalScript 
                local script = Instance.new('LocalScript', TextBoxInstance)

                local btn = script.Parent
                
                btn.MouseEnter:Connect(function()
                    btn:TweenSize(UDim2.new(0.966, 0, 0.221, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
                end)
                btn.MouseLeave:Connect(function()
                    btn:TweenSize(UDim2.new(0.966, 0, 0.206, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
                end)
                
            end
            coroutine.wrap(EPGO_fake_script)()

            TextBoxInput.FocusLost:Connect(function()
                pcall(callback(TextBoxInput.Text))
            end)
        end
        return Elements
    end

    return Sections
end

return uiLib
