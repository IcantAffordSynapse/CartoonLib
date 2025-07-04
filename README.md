# CartoonLib
Shitty UI Library, Obviously all open sourced so feel free to mess around with it.

# DOCS
## Starting up
```lua
-- Reference the UI Library
local uiLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/CartoonLib/refs/heads/main/Source.lua"))()

-- First argument sets the name of your window
-- The second argument sets the Toggle Key for your window (Only makes UI Visible)
local MainWindow = uiLib:Window("Window Title", Enum.KeyCode.RightControl)
```

## Tabs
```lua
-- Tabs are simple, Just reference the name
local Section1 = MainWindow:Tab("Tab 1")
local Section2 = MainWindow:Tab("Tab 2")
```

## Buttons
```lua
-- First argument sets the name of your button
-- Second argument is the callback, put your code here.
Section1:Button("Say hi", function()
	  print("Hi")
end)
```

## Toggles
```lua
-- First argument sets the name of your Toggle
-- Second argument is the callback, 'value' will return either true or false.
getgenv().LoopSayHi = false
Section1:Toggle("Loop say hi", function(value)
    if value then
        getgenv().LoopSayHi = true
        while getgenv().LoopSayHi do
            print("Hi")
            wait(1)
        end
    else
        getgenv().LoopSayHi = false
    end
end)
```

## Textboxes
```lua
-- First argument sets the name of your Textbox
-- Second argument is the callback, 'value' will return with what the user typed
Section1:TextBox("Say something..", function(value)
    print(value)
end)
```

# Example

```lua
local uiLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/CartoonLib/refs/heads/main/Source.lua"))()
local MainWindow = uiLib:Window("Window Title", Enum.KeyCode.RightControl)

local Section1 = MainWindow:Tab("Chatbot")
local Section2 = MainWindow:Tab("Player")

Section1:Button("Say hi", function()
	if game.ReplicatedStorage:FindFirstChild('DefaultChatSystemChatEvents') then
       game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("hi", "All")
    else
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("hi")
    end
end)

getgenv().LoopSayHi = false
Section1:Toggle("Loop say hi", function(value)
    if value then
        getgenv().LoopSayHi = true
        while getgenv().LoopSayHi do
            if game.ReplicatedStorage:FindFirstChild('DefaultChatSystemChatEvents') then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("hi", "All")
            else
                game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("hi")
            end
            wait(1)
        end
    else
        getgenv().LoopSayHi = false
    end
end)

Section1:TextBox("Say something..", function(value)
    if game.ReplicatedStorage:FindFirstChild('DefaultChatSystemChatEvents') then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(value, "All")
    else
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(value)
    end
end)

Section2:TextBox("WalkSpeed", function(value)
    game:GetService("Players").LocalPlayer.Character.WalkSpeed = tonumber(value)
end)

```
