local QBCore = exports['qb-core']:GetCoreObject()

local gloves = {
    male = {
        [16] = 4,
        [17] = 4,
        [18] = 4,
        [19] = 0,
        [20] = 1,
        [21] = 2,
        [22] = 4,
        [23] = 5,
        [24] = 6,
        [25] = 8,
        [26] = 11,
        [27] = 12,
        [28] = 14,
        [29] = 15,
        [30] = 0,
        [31] = 1,
        [32] = 2,
        [33] = 4,
        [34] = 5,
        [35] = 6,
        [36] = 8,
        [37] = 11,
        [38] = 12,
        [39] = 14,
        [40] = 15,
        [41] = 0,
        [42] = 1,
        [43] = 2,
        [44] = 4,
        [45] = 5,
        [46] = 6,
        [47] = 8,
        [48] = 11,
        [49] = 12,
        [50] = 14,
        [51] = 15,
        [52] = 0,
        [53] = 1,
        [54] = 2,
        [55] = 4,
        [56] = 5,
        [57] = 6,
        [58] = 8,
        [59] = 11,
        [60] = 12,
        [61] = 14,
        [62] = 15,
        [63] = 0,
        [64] = 1,
        [65] = 2,
        [66] = 4,
        [67] = 5,
        [68] = 6,
        [69] = 8,
        [70] = 11,
        [71] = 12,
        [72] = 14,
        [73] = 15,
        [74] = 0,
        [75] = 1,
        [76] = 2,
        [77] = 4,
        [78] = 5,
        [79] = 6,
        [80] = 8,
        [81] = 11,
        [82] = 12,
        [83] = 14,
        [84] = 15,
        [85] = 0,
        [86] = 1,
        [87] = 2,
        [88] = 4,
        [89] = 5,
        [90] = 6,
        [91] = 8,
        [92] = 11,
        [93] = 12,
        [94] = 14,
        [95] = 15,
        [96] = 4,
        [97] = 4,
        [98] = 4,
        [99] = 0,
        [100] = 1,
        [101] = 2,
        [102] = 4,
        [103] = 5,
        [104] = 6,
        [105] = 8,
        [106] = 11,
        [107] = 12,
        [108] = 14,
        [109] = 15,
        [110] = 4,
        [111] = 4,
        [115] = 112,
        [116] = 112,
        [117] = 112,
        [118] = 112,
        [119] = 112,
        [120] = 112,
        [121] = 112,
        [122] = 113,
        [123] = 113,
        [124] = 113,
        [125] = 113,
        [126] = 113,
        [127] = 113,
        [128] = 113,
        [129] = 114,
        [130] = 114,
        [131] = 114,
        [132] = 114,
        [133] = 114,
        [134] = 114,
        [135] = 114,
        [136] = 15,
        [137] = 15,
        [138] = 0,
        [139] = 1,
        [140] = 2,
        [141] = 4,
        [142] = 5,
        [143] = 6,
        [144] = 8,
        [145] = 11,
        [146] = 12,
        [147] = 14,
        [148] = 112,
        [149] = 113,
        [150] = 114,
        [151] = 0,
        [152] = 1,
        [153] = 2,
        [154] = 4,
        [155] = 5,
        [156] = 6,
        [157] = 8,
        [158] = 11,
        [159] = 12,
        [160] = 14,
        [161] = 112,
        [162] = 113,
        [163] = 114,
        [165] = 4,
        [166] = 4,
        [167] = 4,
        [168] = 4,
        [170] = 15,
        [171] = 0,
        [172] = 1,
        [173] = 2,
        [174] = 4,
        [175] = 5,
        [176] = 6,
        [177] = 8,
        [178] = 11,
        [179] = 12,
        [180] = 14,
        [181] = 112,
        [182] = 113,
        [183] = 114,
        [185] = 184,
        [186] = 184,
        [187] = 184,
        [188] = 184,
        [189] = 185,
        [190] = 184,
        [191] = 184,
        [192] = 184,
        [193] = 184,
        [194] = 184,
    },
    female = {
        [16] = 11,
        [17] = 3,
        [18] = 3,
        [19] = 3,
        [20] = 0,
        [21] = 1,
        [22] = 2,
        [23] = 3,
        [24] = 4,
        [25] = 5,
        [26] = 6,
        [27] = 7,
        [28] = 9,
        [29] = 11,
        [30] = 12,
        [31] = 14,
        [32] = 15,
        [33] = 0,
        [34] = 1,
        [35] = 2,
        [36] = 3,
        [37] = 4,
        [38] = 5,
        [39] = 6,
        [40] = 7,
        [41] = 9,
        [42] = 11,
        [43] = 12,
        [44] = 14,
        [45] = 15,
        [46] = 0,
        [47] = 1,
        [48] = 2,
        [49] = 3,
        [50] = 4,
        [51] = 5,
        [52] = 6,
        [53] = 7,
        [54] = 9,
        [55] = 11,
        [56] = 12,
        [57] = 14,
        [58] = 15,
        [59] = 0,
        [60] = 1,
        [61] = 2,
        [62] = 3,
        [63] = 4,
        [64] = 5,
        [65] = 6,
        [66] = 7,
        [67] = 9,
        [68] = 11,
        [69] = 12,
        [70] = 14,
        [71] = 15,
        [72] = 0,
        [73] = 1,
        [74] = 2,
        [75] = 3,
        [76] = 4,
        [77] = 5,
        [78] = 6,
        [79] = 7,
        [80] = 9,
        [81] = 11,
        [82] = 12,
        [83] = 14,
        [84] = 15,
        [85] = 0,
        [86] = 1,
        [87] = 2,
        [88] = 3,
        [89] = 4,
        [90] = 5,
        [91] = 6,
        [92] = 7,
        [93] = 9,
        [94] = 11,
        [95] = 12,
        [96] = 14,
        [97] = 15,
        [98] = 0,
        [99] = 1,
        [100] = 2,
        [101] = 3,
        [102] = 4,
        [103] = 5,
        [104] = 6,
        [105] = 7,
        [106] = 9,
        [107] = 11,
        [108] = 12,
        [109] = 14,
        [110] = 15,
        [111] = 3,
        [112] = 3,
        [113] = 3,
        [114] = 0,
        [115] = 1,
        [116] = 2,
        [117] = 3,
        [118] = 4,
        [119] = 5,
        [120] = 6,
        [121] = 7,
        [122] = 9,
        [123] = 11,
        [124] = 12,
        [125] = 14,
        [126] = 15,
        [127] = 3,
        [128] = 3,
        [132] = 129,
        [133] = 129,
        [134] = 129,
        [135] = 129,
        [136] = 129,
        [137] = 129,
        [138] = 129,
        [139] = 130,
        [140] = 130,
        [141] = 130,
        [142] = 130,
        [143] = 130,
        [144] = 130,
        [145] = 130,
        [146] = 131,
        [147] = 131,
        [148] = 131,
        [149] = 131,
        [150] = 131,
        [151] = 131,
        [152] = 131,
        [154] = 153,
        [155] = 153,
        [156] = 153,
        [157] = 153,
        [158] = 153,
        [159] = 153,
        [160] = 153,
        [162] = 161,
        [163] = 161,
        [164] = 161,
        [165] = 161,
        [166] = 161,
        [167] = 161,
        [168] = 161,
        [169] = 15,
        [170] = 15,
        [171] = 0,
        [172] = 1,
        [173] = 2,
        [174] = 3,
        [175] = 4,
        [176] = 5,
        [177] = 6,
        [178] = 7,
        [179] = 9,
        [180] = 11,
        [181] = 12,
        [182] = 14,
        [183] = 129,
        [184] = 130,
        [185] = 131,
        [186] = 153,
        [187] = 0,
        [188] = 1,
        [189] = 2,
        [190] = 3,
        [191] = 4,
        [192] = 5,
        [193] = 6,
        [194] = 7,
        [195] = 9,
        [196] = 11,
        [197] = 12,
        [198] = 14,
        [199] = 129,
        [200] = 130,
        [201] = 131,
        [202] = 153,
        [203] = 161,
        [204] = 161,
        [206] = 3,
        [207] = 3,
        [208] = 3,
        [209] = 3,
        [211] = 15,
        [212] = 0,
        [213] = 1,
        [214] = 2,
        [215] = 3,
        [216] = 4,
        [217] = 5,
        [218] = 6,
        [219] = 7,
        [220] = 9,
        [221] = 11,
        [222] = 12,
        [223] = 14,
        [224] = 129,
        [225] = 130,
        [226] = 131,
        [227] = 153,
        [228] = 161,
        [230] = 229,
        [231] = 229,
        [232] = 229,
        [233] = 229,
        [234] = 229,
        [235] = 229,
        [236] = 229,
        [237] = 229,
        [238] = 229,
        [239] = 229,
    }
}

local glovecheck = {
    female = {
        [0] = true,
        [1] = true,
        [2] = true,
        [3] = true,
        [4] = true,
        [5] = true,
        [6] = true,
        [7] = true,
        [9] = true,
        [11] = true,
        [12] = true,
        [14] = true,
        [15] = true,
        [129] = true,
        [130] = true,
        [131] = true,
        [153] = true,
        [161] = true,
        [229] = true,
    },
    male = {
        [0] = true,
        [1] = true,
        [2] = true,
        [4] = true,
        [5] = true,
        [6] = true,
        [8] = true,
        [11] = true,
        [12] = true,
        [14] = true,
        [15] = true,
        [112] = true,
        [113] = true,
        [114] = true,
        [184] = true,
    }
}


local directory = {
    ['stealhat'] = 0,
    ['stealmask'] = 1,
    ['stealgloves'] = 3,
}

local ClothingIndexes = {
    -- hat
    [0] = {
        male = -1,
        female = -1,
        removedMessage = "Your hat was taken",
        attemptMessage = "Someone tried to take your hat",
        empty = "Someone tried to take a hat you weren't wearing",
    },
    -- mask
    [1] = {
        male = 0,
        female = 0,
        removedMessage = "Your mask was taken",
        attemptMessage = "Someone tried to take your mask",
        empty = "Someone tried to take a mask you weren't wearing",
    },
    -- gloves == 3
    -- [6] = {
    --     male = 34,
    --     female = 35,
    -- }
}

-- local function dump(o)
--   if type(o) == 'table' then
--      local s = '{ '
--      for k,v in pairs(o) do
--         if type(k) ~= 'number' then k = '"'..k..'"' end
--         s = s .. '['..k..'] = ' .. dump(v) .. ','
--      end
--      return s .. '} '
--   else
--      return tostring(o)
--   end
-- end

local function clothingPieceGeneral(cindex)
    local ped = PlayerPedId()
    if not IsPedRagdoll(ped) then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 1.5 then
            local playerId = GetPlayerServerId(player)
            if not IsPedInAnyVehicle(GetPlayerPed(player)) and not IsPedInAnyVehicle(ped) then
                local oped = GetPlayerPed(player)
                TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
                QBCore.Functions.Progressbar("removingClothing", "Removing Article Of Clothing", 2500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    -- Clear the welding task
                    -- ClearPedTasks(ped)
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent("noted-stealclothes:server:theftClothing", playerId, cindex)
                end, function() -- cancel
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                end)
            else
                QBCore.Functions.Notify('You can\'t remove someone\'s clothes in a car', "error")
            end
        else
            QBCore.Functions.Notify('You aren\'t close enough to remove any piece of anyone\'s clothing', "error")
        end
    end
end

RegisterCommand("stealshoes", function()
    TriggerEvent('noted-stealclothes:client:TheftShoe')
end)

RegisterNetEvent('noted-stealclothes:client:TheftShoe', function() -- This could be used in the radialmenu ;)
    local ped = PlayerPedId()
    if not IsPedRagdoll(ped) then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 1.5 then
            local playerId = GetPlayerServerId(player)
            if not IsPedInAnyVehicle(GetPlayerPed(player)) and not IsPedInAnyVehicle(ped) then
                local oped = GetPlayerPed(player)
                local hasShoes = GetPedDrawableVariation(oped, 6)
                if hasShoes ~= 34 then
                    TriggerEvent('animations:client:EmoteCommandStart', {"rob"})
                    QBCore.Functions.Progressbar("stealingshoes", "Gimmie the tims, gimmie the tims right now", 2500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function() -- Done
                        -- Clear the welding task
                        -- ClearPedTasks(ped)
                        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                        TriggerServerEvent("noted-stealclothes:server:TheftShoe", playerId)
                    end, function() -- cancel
                        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    end)
                else
                    QBCore.Functions.Notify("They're literally barefoot... like ???", "error")
                end
            else
                QBCore.Functions.Notify('You can\'t steal shoes in vehicle', "error")
            end
        else
            QBCore.Functions.Notify('You aren\'t close enough to anyone with shoes to steal', "error")
        end
    end
end)

RegisterNetEvent('noted-stealclothes:client:generalSteal', function(poc)
    local ped = PlayerPedId()
    local playerData = QBCore.Functions.GetPlayerData()
    local cpiece = GetPedDrawableVariation(ped, poc)
    local shoestealStatus = false
    local maleModel = (GetEntityModel(PlayerPedId()) == `mp_m_freemode_01`)
    if poc == 3 then
        if (maleModel and gloves.male[cpiece]) or ((not maleModel) and gloves.female[cpiece]) then
            if playerData.metadata["isdead"] or playerData.metadata["inlaststand"] or playerData.metadata["ishandcuffed"] or IsEntityPlayingAnim(ped, "missminuteman_1ig_2", "handsup_base", 3) or IsEntityPlayingAnim(ped, "mp_arresting", "idle", 3) then
                shoestealStatus = true
            end
            if shoestealStatus then
                if maleModel then
                    SetPedComponentVariation(ped, poc, gloves.male[cpiece], 0, 2)
                elseif GetEntityModel(PlayerPedId()) == `mp_f_freemode_01`  then
                    SetPedComponentVariation(ped, poc, gloves.female[cpiece], 0, 2)
                end
                QBCore.Functions.Notify("Your gloves were removed", 'error')
                -- TriggerServerEvent("noted-stealclothes:server:Complete", playerId, true)
            else
                QBCore.Functions.Notify("Someone tried to remove your gloves", 'error')
            end
        else
            QBCore.Functions.Notify("Someone tried to remove gloves you don't seem to be wearing", 'error')
        end
    elseif poc == 0 then
        local cpiece = GetPedPropIndex(ped, poc)
        if (maleModel and (not (ClothingIndexes[poc].male == cpiece))) or ((not maleModel) and (not (ClothingIndexes[poc].female == cpiece))) then
            if playerData.metadata["isdead"] or playerData.metadata["inlaststand"] or playerData.metadata["ishandcuffed"] or IsEntityPlayingAnim(ped, "missminuteman_1ig_2", "handsup_base", 3) or IsEntityPlayingAnim(ped, "mp_arresting", "idle", 3) then
                shoestealStatus = true
            end
            if shoestealStatus then
                ClearPedProp(ped, poc)
                QBCore.Functions.Notify(ClothingIndexes[poc].removedMessage, 'error')
                -- TriggerServerEvent("noted-stealclothes:server:Complete", playerId, true)
            else
                QBCore.Functions.Notify(ClothingIndexes[poc].attemptMessage, 'error')
            end
        else
            QBCore.Functions.Notify(ClothingIndexes[poc].empty, 'error')
        end
    else
        if (maleModel and (not (ClothingIndexes[poc].male == cpiece))) or ((not maleModel) and (not (ClothingIndexes[poc].female == cpiece))) then
            if playerData.metadata["isdead"] or playerData.metadata["inlaststand"] or playerData.metadata["ishandcuffed"] or IsEntityPlayingAnim(ped, "missminuteman_1ig_2", "handsup_base", 3) or IsEntityPlayingAnim(ped, "mp_arresting", "idle", 3) then
                shoestealStatus = true
            end
            if shoestealStatus then
                if maleModel then
                    SetPedComponentVariation(ped, poc, ClothingIndexes[poc].male, 0, 2)
                elseif GetEntityModel(PlayerPedId()) == `mp_f_freemode_01`  then
                    SetPedComponentVariation(ped, poc, ClothingIndexes[poc].female, 0, 2)
                end
                QBCore.Functions.Notify(ClothingIndexes[poc].removedMessage, 'error')
                -- TriggerServerEvent("noted-stealclothes:server:Complete", playerId, true)
            else
                QBCore.Functions.Notify(ClothingIndexes[poc].attemptMessage, 'error')
            end
        else
            QBCore.Functions.Notify(ClothingIndexes[poc].empty, 'error')
        end
    end
end)

RegisterNetEvent('noted-stealclothes:client:StoleShoe', function(playerId)
    local ped = PlayerPedId()
    local playerData = QBCore.Functions.GetPlayerData()
    local hasShoes = GetPedDrawableVariation(ped, 6)
    local shoestealStatus = false
    if hasShoes ~= 34 then
        if playerData.metadata["isdead"] or playerData.metadata["inlaststand"] or playerData.metadata["ishandcuffed"] or IsEntityPlayingAnim(ped, "missminuteman_1ig_2", "handsup_base", 3) or IsEntityPlayingAnim(ped, "mp_arresting", "idle", 3) then
            shoestealStatus = true
        end
        if shoestealStatus then
            if GetEntityModel(PlayerPedId()) == `mp_m_freemode_01`  then
                SetPedComponentVariation(ped, 6, 34, 0, 2)
            elseif GetEntityModel(PlayerPedId()) == `mp_f_freemode_01`  then
                SetPedComponentVariation(ped, 6, 35, 0, 2)
            end
            QBCore.Functions.Notify("Your shoes were stolen", 'error')
            TriggerServerEvent("noted-stealclothes:server:Complete", playerId, true)
        else
            QBCore.Functions.Notify("Someone tried to steal your shoes", 'error')
        end
    else
        QBCore.Functions.Notify("Someone tried to steal the shoes that you weren't wearing... awkward", 'primary')
    end
end)

RegisterNetEvent('noted-stealclothes:client:ShoeStealSuccess', function()
    QBCore.Functions.Notify("You stole their shoes", 'success')
    local ped = PlayerPedId()
    while not HasAnimDictLoaded("random@domestic") do
        RequestAnimDict("random@domestic")
        Wait(1)
    end
    TaskPlayAnim(ped, "random@domestic", "pickup_low", 8.00, -8.00, 1000, 0, 0.00, 0, 0, 0)
end)


RegisterNetEvent('noted-stealclothes:client:clothingPiece', function(cindex) -- This could be used in the radialmenu ;)
    local ped = PlayerPedId()
    if not IsPedRagdoll(ped) then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 1.5 then
            local playerId = GetPlayerServerId(player)
            if not IsPedInAnyVehicle(GetPlayerPed(player)) and not IsPedInAnyVehicle(ped) then
                local oped = GetPlayerPed(player)
                local hasShoes = GetPedDrawableVariation(oped, 6)
                if hasShoes ~= 34 then
                    TriggerEvent('animations:client:EmoteCommandStart', {"rob"})
                    QBCore.Functions.Progressbar("stealingshoes", "Gimmie the tims, gimmie the tims right now", 2500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function() -- Done
                        -- Clear the welding task
                        -- ClearPedTasks(ped)
                        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                        TriggerServerEvent("noted-stealclothes:server:TheftShoe", playerId)
                    end, function() -- cancel
                        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    end)
                else
                    QBCore.Functions.Notify("They're literally barefoot... like ???", "error")
                end
            else
                QBCore.Functions.Notify('You can\'t steal shoes in vehicle', "error")
            end
        else
            QBCore.Functions.Notify('You aren\'t close enough to anyone with shoes to steal', "error")
        end
    end
end)

RegisterCommand("stealgloves", function()
    clothingPieceGeneral(3)
end)

RegisterCommand("stealmask", function()
    clothingPieceGeneral(1)
end)

RegisterCommand("stealhat", function()
    clothingPieceGeneral(0)
end)

RegisterNetEvent('noted-stealclothes:client:clothingSplitter', function(whic)
    local which = whic
	if type(whic) == "table" then
		which = tostring(whic.id)
	end
    clothingPieceGeneral(directory[which])
end)

local christmasOutfits = {
    male = {
        {
            jacket = 423,
            jtext = 0,
            shirt = 15,
            stext = 0,
            hand = 1,
            htext = 0,
            leg = 58,
            ltext = 7,
            shoe = 17,
            stext = 0,
            hat = 22,
            hattexture = 0,
        },
        {
            jacket = 18, 
            jackettext = 2, 
            shirt = 15,
            shirttext = 0,
            hand = 0,
            handtext = 0,
            leg = 29,
            legtext = 1,
            shoe = 17,
            shoetext = 0,
            hat = 22,
            hattexture = 0,
        },
        {
            jacket = 19, 
            jackettext = 0, 
            shirt = 20,
            shirttext = 0,
            hand = 4,
            handtext = 0,
            leg = 22,
            legtext = 3,
            shoe = 17,
            shoetext = 0,
            hat = 22,
            hattexture = 0,
        },
        {
            jacket = 19, 
            jackettext = 1, 
            shirt = 20,
            shirttext = 2,
            hand = 4,
            handtext = 0,
            leg = 22,
            legtext = 4,
            shoe = 17,
            shoetext = 0,
            hat = 22,
            hattexture = 0,
        },
        {
            jacket = 18,
            jackettext = 3, 
            shirt = 15,
            shirttext = 0,
            hand = 0,
            handtext = 0,
            leg = 19,
            legtext = 1,
            shoe = 17,
            shoetext = 0,
            hat = 23,
            hattexture = 0,
        },
    },
    female = {
        {
            jacket = 452,
            jackettext = 7,
            shirt = 14,
            shirttext = 0,
            hand = 1,
            handtext = 0,
            leg = 182,
            legtext = 12,
            shoe = 17,
            shoetext = 0,
            hat = 23,
            hattexture = 0,
        },
        {
            jacket = 20, 
            jackettext = 0, 
            shirt = 14,
            shirttext = 0,
            hand = 5,
            handtext = 0,
            leg = 18,
            legtext = 0,
            shoe = 17,
            shoetext = 0,
            hat = 24,
            hattexture = 0,
        },
        {
            jacket = 20, 
            jackettext = 1, 
            shirt = 14,
            shirttext = 0,
            hand = 5,
            handtext = 0,
            leg = 18,
            legtext = 1,
            shoe = 17,
            shoetext = 0,
            hat = 24,
            hattexture = 0,
        },
        {
            jacket = 19, 
            jackettext = 1, 
            shirt = 14,
            shirttext = 0,
            hand = 4,
            handtext = 0,
            leg = 31,
            legtext = 1,
            shoe = 17,
            shoetext = 0,
            hat = 23,
            hattexture = 0,
        },
        {
            jacket = 19, 
            jackettext = 2, 
            shirt = 14,
            shirttext = 0,
            hand = 4,
            handtext = 0,
            leg = 31,
            legtext = 0,
            shoe = 20,
            shoetext = 0,
            hat = 23,
            hattexture = 0,
        },
        {
            jacket = 44, 
            jackettext = 2, 
            shirt = 14,
            shirttext = 0,
            hand = 3,
            handtext = 0,
            leg = 23,
            legtext = 7,
            shoe = 17,
            shoetext = 0,
            hat = 23,
            hattexture = 0,
        },
    }
}

RegisterCommand("christmasspirit", function()
    TriggerEvent('noted-stealclothes:client:startspirit')
end)

RegisterNetEvent('noted-stealclothes:client:startspirit', function() -- This could be used in the radialmenu ;)
    local ped = PlayerPedId()
    if not IsPedRagdoll(ped) then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 1.5 then
            local playerId = GetPlayerServerId(player)
            if not IsPedInAnyVehicle(GetPlayerPed(player)) and not IsPedInAnyVehicle(ped) then
                TriggerEvent('animations:client:EmoteCommandStart', {"rob"})
                QBCore.Functions.Progressbar("chrisifying", "Can you feel it now Mr. Krabs?", 2500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    -- Clear the welding task
                    -- ClearPedTasks(ped)
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    TriggerServerEvent("noted-stealclothes:server:ChristmasSpirit", playerId)
                end, function() -- cancel
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                end)
            else
                QBCore.Functions.Notify('You can\'t do this in a vehicle', "error")
            end
        else
            QBCore.Functions.Notify('You aren\'t close enough to any grinches', "error")
        end
    end
end)


-- playerId
RegisterNetEvent('noted-stealclothes:client:christmasSpirit', function()
    local ped = PlayerPedId()
    local playerData = QBCore.Functions.GetPlayerData()
    local shoestealStatus = false
    if playerData.metadata["isdead"] or playerData.metadata["inlaststand"] or playerData.metadata["ishandcuffed"] or IsEntityPlayingAnim(ped, "missminuteman_1ig_2", "handsup_base", 3) or IsEntityPlayingAnim(ped, "mp_arresting", "idle", 3) then
        if GetEntityModel(PlayerPedId()) == `mp_m_freemode_01`  then
            local variant = christmasOutfits.male[math.random(1, #christmasOutfits.male)]
            -- Jacket
            SetPedComponentVariation(ped, 11, variant.jacket, variant.jackettext, 2) -- Component ID 11 is for jackets, 5 is drawable ID, 0 is texture variation.
            -- Shirt
            SetPedComponentVariation(ped, 8, variant.shirt, variant.shirttext, 2) -- Component ID 8 is for undershirts.
            -- Gloves
            SetPedComponentVariation(ped, 3, variant.hand, variant.handtext, 2) -- Component ID 3 is for arms (gloves are part of arms).
            -- Legs
            SetPedComponentVariation(ped, 4, variant.leg, variant.legtext, 2) -- Component ID 4 is for legs.
            -- Shoes
            SetPedComponentVariation(ped, 6, variant.shoe, variant.shoetext, 2) -- Component ID 6 is for shoes.
            -- hat
            SetPedPropIndex(ped, 0, variant.hat, variant.hattexture, true)
        elseif GetEntityModel(PlayerPedId()) == `mp_f_freemode_01`  then
            local variant = christmasOutfits.female[math.random(1, #christmasOutfits.female)]
            -- Jacket
            SetPedComponentVariation(ped, 11, variant.jacket, variant.jackettext, 2) -- Component ID 11 is for jackets, 5 is drawable ID, 0 is texture variation.
            -- Shirt
            SetPedComponentVariation(ped, 8, variant.shirt, variant.shirttext, 2) -- Component ID 8 is for undershirts.
            -- Gloves
            SetPedComponentVariation(ped, 3, variant.hand, variant.handtext, 2) -- Component ID 3 is for arms (gloves are part of arms).
            -- Legs
            SetPedComponentVariation(ped, 4, variant.leg, variant.legtext, 2) -- Component ID 4 is for legs.
            -- Shoes
            SetPedComponentVariation(ped, 6, variant.shoe, variant.shoetext, 2) -- Component ID 6 is for shoes.
            -- hat
            SetPedPropIndex(ped, 0, variant.hat, variant.hattexture, true)
        end
        
        QBCore.Functions.Notify("Your shoes were stolen", 'error')
        TriggerServerEvent("noted-stealclothes:server:Complete", playerId, true)
    else
        QBCore.Functions.Notify("Someone tried to steal your shoes", 'error')
    end
end)