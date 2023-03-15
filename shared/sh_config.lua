Config = {}

Config.Debug = true
Config.DebugPoly = true

-- Debug Print --
function Debug(type, debugTxt)
    if debugTxt == nil then debugTxt = '' end
    if Config.Debug then
        print("^2Debug ^7| "..type.." | ^2"..debugTxt)
    end
end