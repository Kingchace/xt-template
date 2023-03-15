local QBCore = exports['qb-core']:GetCoreObject()
local Player = QBCore.Functions.GetPlayerData()
local PlayerJob = QBCore.Functions.GetPlayerData().job
local PlayerGang = QBCore.Functions.GetPlayerData().gang
local onDuty = false
local sharedItems = QBCore.Shared.Items
local sharedVehicles = QBCore.Shared.Vehicles
local CurrentCops = 0

local function playerLoaded()
    Player = QBCore.Functions.GetPlayerData()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    Debug('Loaded')
end

-- Player Unload --
local function playerUnload()
    Player = {}
    PlayerJob = {}
    Debug('Unload')
end

AddEventHandler('onResourceStart', function(resource) if resource == GetCurrentResourceName() then playerLoaded() end end)
AddEventHandler('onResourceStop', function(resource) if resource == GetCurrentResourceName() then playerUnload() end end)
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', playerLoaded)
RegisterNetEvent('QBCore:Client:OnPlayerUnload', playerUnload)
RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job) PlayerJob = job end)
RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo) PlayerGang = GangInfo end)
RegisterNetEvent('police:SetCopCount', function(amount) CurrentCops = amount end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)