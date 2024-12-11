# noted-stealclothes

*the model is standalone this just has the steal shoes in qbcore*



### qb-radialmenu:
```lua
{
id = 'stealclothes',
title = 'Steal Clothes',
icon = 'triangle-exclamation',
items = {
        {
            id = 'stealshoe',
            title = 'Steal Shoes',
            icon = 'shoe-prints',
            type = 'client',
            event = 'noted-stealclothes:client:TheftShoe',
            shouldClose = true
        },
        {
            id = 'stealhat',
            title = 'Remove Hat',
            icon = 'hat-cowboy',
            type = 'client',
            event = 'noted-stealclothes:client:clothingSplitter',
            shouldClose = true
        },
        {
            id = 'stealmask',
            title = 'Remove Mask',
            icon = 'user-ninja',
            type = 'client',
            event = 'noted-stealclothes:client:clothingSplitter',
            shouldClose = true
        },
        {
            id = 'stealgloves',
            title = 'Remove Gloves',
            icon = 'hands',
            type = 'client',
            event = 'noted-stealclothes:client:clothingSplitter',
            shouldClose = true
        },
        {
            id = 'christmasspirit',
            title = 'Spread Cheer',
            icon = 'sleigh',
            type = 'client',
            event = 'noted-stealclothes:client:startspirit',
            shouldClose = true
        },
    },
},
```

## TNJ Old Shoe Stealing Instructions:

### qb-inventory/client/main.lua add the following into the checks on line 440
```lua
or weaponName == "weapon_shoe"
```

### qb-weapons/client/main.lua add the following around line 163:
```lua
elseif QBCore.Shared.Weapons[weapon]["name"] == "weapon_shoe" then
    TriggerServerEvent('QBCore:Server:RemoveItem', "weapon_shoe", 1)
```

### qb-core/shared/items.lua
```lua
['weapon_shoe'] 		     = {['name'] = 'weapon_shoe', 		 	  	['label'] = 'Shoe', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_shoe.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A shoe'},
```

### qb-core/shared/weapons.lua
```lua
[`weapon_shoe`] 	 = {['name'] = 'weapon_shoe', 		['label'] = 'Shoe', 		['ammotype'] = nil,				['damagereason'] = 'Died'},
```
### Inventory Image:
![weapon_shoe](https://user-images.githubusercontent.com/80186604/161427130-12f5b920-516c-45a2-a6f9-c23fd19ec2b6.png)

### qb-weapons fix:

So if you are using qb-weapons there is a chance your server may be experiencing a glitch where a single throwable consumes double throwable items in your inventory. My solution was to change the following in qb-weapons's client (in base qb-weapons in lines 209-217):
```
if CanShoot then
    if weapon and weapon ~= 0 and QBCore.Shared.Weapons[weapon] then
        QBCore.Functions.TriggerCallback('prison:server:checkThrowable', function(result)
            if result or GetAmmoInPedWeapon(ped, weapon) <= 0 then return end
            MultiplierAmount += 1
        end, weapon)
        Wait(200)
    end
else
```

to

```
if CanShoot then
    if weapon and weapon ~= 0 and QBCore.Shared.Weapons[weapon] then
        QBCore.Functions.TriggerCallback('prison:server:checkThrowable', function(result)
            if result or GetAmmoInPedWeapon(ped, weapon) <= 0 then return end
            MultiplierAmount += 1
        end, weapon)
        if QBCore.Shared.Weapons[weapon].weapontype == 'Throwable' then
            Wait(1500)
        else
            Wait(200)
        end
    end
else
```

The extra wait time allows the throwable weapon to be disarmed before trying to check a second time if the weapon should be removed from a player's inventory. 
