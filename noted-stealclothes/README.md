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

# Dev Essay thing:

Hi! This is a script which utilizes a good bit of TNJ-Stealshoes’s work/framework, but makes a lot of  necessary changes in order to make it applicable to most fivem servers. This script mostly does three things:

1. It allows players to steal shoes from each other. Those stolen shoes then become weapons. The weapons deal “electric damage” allowing them to knockdown players on impact

2. It allows players to remove masks, hats, and gloves from other players. This is mostly a quality of life feature for the police departments in most cities. Most police departments run into the issue of having to “slash me removes mask and gloves” forcing the other player to use radialmenu to do it themselves. This gives agency and power to people in PD by allowing them to do it themselves and avoid those awkward moments where a player refuses to follow the roleplay. 

For removing gloves, I used a directory from “qb-radialmenu” as a guide for what hands belong to what gloves which is why there’s a huge 400 line table dedicated to gloves. You can customize what hands are “gloveless” and what gloved hands correlated with their gloveless counterparts in that array (I hope it's a bit self explanatory). Clothing indexes table tries to standardize clothing removal allowing you to actually add your own clothing removal options without having to fundamentally change a lot of code (although this approach was a bit of a failure on my part in my opinion). 

3. Allows players to use what I call “spread cheer”. I want to thank @totallyclipse for helping me with this feature in terms of making and documenting all the outfits. Honestly, it was the most miserable part of this so I’m grateful to them and their help. They also did really nice UI work for a cash register script I did in another city. Anyways, this component of the script allows players to put “ugly christmas sweater” outfits on other players. It changes a player’s jacket, shirt, gloves, legs, shoes, and hat. It’s meant to be noninvasive (the roleplay is you put the clothes OVER their outfit) and silly fun for christmas. 

IMPORTANT NOTES:

1. I’m going to leave the TNJ instructions on shoe stealing in this script. For me however, I had to make a lot of changes to my inventory, weapons, and some in my small resources script to accommodate this. A few notes are:

1a. I added a custom script that removes the serial number from certain weapons when they’re added to inventories. I thought this would be a nice feature. You certainly don’t have to go the extra mile, however it may become a future issue that serial numbers may overlap at times since people will steal a LOT of shoes. This could also force you to muddle with your inventory’s html/js if you want to go that extra mile

1b. QB-Weapons has an issue where it will consume two throwables everytime you throw a throwable. This isn’t an issue in some cities because… like not a lot of cities even introduce throwables but it’ll get super frustrating for players and cause future issues for your city in general. I’ll include what I think my solution was in the readme if you haven’t solved this for yourself ahead of time but it is something I’d recommend looking into anyways

2. This one is also very very important, the Progressbar I use in this script is very likely different from the one that you use. I’d suggest going through each progressbar and re-implementing the function parameters (the trues, falses, and timer placements) being passed in to get your desired result. 

3. The removeclothing general stuff has commands, but also has radial menu compatibility which follows qb-radialmenu’s clothing removal options

4. I did use animations:client:EmoteCommandStart to do the animations. Should be compatible with your servers, if not your emote menu should have its own event you can trigger. I just got lazy :/

5. You can only steal from other players if they are surrendering, in last stand, in bleedout, or cuffed after the progressbar has finished. This is to prevent abuse from other players and force more roleplay when you’re attempting to steal clothing articles from another player. 

6. I use QBCore.Functions.GetClosestPlayer() to get the closest player. Hopefully that exists on your server or you have your own version of it. Otherwise if you don’t have it and can’t figure out how to replace it… well there’s chatgpt ;-;

7. The code is a little choppy, but I don’t see any personal problems with it. It should all work and generally be fun/good to use. There’s no loops, while statements, or createthreads so it should run really clean.

8. All the Christmas outfits are base GTA so hopefully your own closets are compatible with the presets and the outfits shouldn't change as your closet changes. The outfits are chosen randomly every time (better if you have more preset outfits than less)

I hope you enjoy this and let me know if you/your players find it fun!
