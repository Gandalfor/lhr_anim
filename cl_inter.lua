--local isInZone = false 
--local play = false

--RegisterNetEvent('anim_menuopen') AddEventHandler('anim_menuopen', function() 
--	WarMenu.OpenMenu('Anim') 
--end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        
        if IsPlayerNearCoords(-312.3, 799.01, 118.46) then
            if not play then 
                TriggerEvent("vorp:TipBottom", "Pulsa G/C para tocar el piano.", 100)
            end 
            if IsControlJustPressed(0, 0x760A9C6F) then
                play = true
                TaskStartScenarioAtPosition(GetPlayerPed(), GetHashKey('PROP_HUMAN_PIANO'), -312.22 - 0.08, 799.01, 118.43 + 0.03, 102.37, 0, true, true, 0, true) 
            end
        end
        
        
        if IsPlayerNearCoords(1346.95, -1371.76, 80.49) then
            if not play then 
                TriggerEvent("vorp:TipBottom", "Pulsa G/C para tocar el piano.", 100)
            end
            if IsControlJustPressed(0, 0x760A9C6F) then
                play = true
                TaskStartScenarioAtPosition(GetPlayerPed(), GetHashKey('PROP_HUMAN_PIANO'), 1346.87 - 0.08, -1371.09, 79.92 + 0.03, 351.35, 0, true, true, 0, true)

            end
        end

        if IsPlayerNearCoords(1346.95, -1371.76, 80.49) then
            if not play then 
                TriggerEvent("vorp:TipBottom", "Pulsa G/C para tocar el piano.", 100)
            end
            if IsControlJustPressed(0, 0x9959A6F0) then
                play = true
                TaskStartScenarioAtPosition(GetPlayerPed(), GetHashKey('PROP_HUMAN_ABIGAIL_PIANO'), 1346.87 - 0.08, -1371.09, 79.92 + 0.03, 351.35, 0, true, true, 0, true)
                 
            end
        end

        if IsPlayerNearCoords(-312.3, 799.01, 118.46) then
            if not play then 
                TriggerEvent("vorp:TipBottom", "Pulsa G/C para tocar el piano.", 100)
            end 
            if IsControlJustPressed(0, 0x9959A6F0) then
                play = true
                TaskStartScenarioAtPosition(GetPlayerPed(), GetHashKey('PROP_HUMAN_ABIGAIL_PIANO'), -312.22 - 0.08, 799.01, 118.43 + 0.03, 102.37, 0, true, true, 0, true) 
            end
        end

    end    
end)
    
Citizen.CreateThread(function()    
    while true do 
        Citizen.Wait(1)
        if play then

            TriggerEvent("vorp:TipBottom", "Pulsa W para dejar de tocar.", 100)
            if IsControlJustPressed(0, 0x8FD015D8) then
                play = false
                ClearPedTasks(GetPlayerPed())
                --SetCurrentPedWeapon(GetPlayerPed(), -1569615261, true)
            end    
        end
    end
end)

function IsPlayerNearCoords(x, y, z)
    local playerx, playery, playerz = table.unpack(GetEntityCoords(GetPlayerPed(), 0))
    local distance = GetDistanceBetweenCoords(playerx, playery, playerz, x, y, z, true)

    if distance < 3 then
        return true
    end
end

local Animation = {
	{
		['Text'] = "Llamar a la puerta",
		['hashAnim'] = "WORLD_HUMAN_KNOCK_DOOR",
	},
	
	{
		['Text'] = "Orinar",
		['hashAnim'] = "WORLD_HUMAN_PEE",
	},

	{
		['Text'] = "Sentarse en el suelo",
		['hashAnim'] = "WORLD_HUMAN_FIRE_SIT",
	},


	{
		['Text'] = "Manos en cintura",
		['hashAnim'] = "WORLD_HUMAN_BADASS",
	},

	{
		['Text'] = "Vomitar",
		['hashAnim'] = "WORLD_HUMAN_VOMIT",
	},

	{
		['Text'] = "Vomitar de rodillas",
		['hashAnim'] = "WORLD_HUMAN_VOMIT_KNEEL",
	},

	{
		['Text'] = "Lavarse la cara de rodillas",
		['hashAnim'] = "WORLD_HUMAN_WASH_FACE_BUCKET_GROUND",
	},

	{
		['Text'] = "Observar en cuclillas",
		['hashAnim'] = "WORLD_PLAYER_DYNAMIC_KNEEL",
	},

	{
		['Text'] = "Impaciente",
		['hashAnim'] = "WORLD_HUMAN_WAITING_IMPATIENT",
	},

	
	{
		['Text'] = "Esperar",
		['hashAnim'] = "WORLD_HUMAN_STAND_WAITING",
	},

	{
		['Text'] = "Inspeccionar el suelo",
		['hashAnim'] = "WORLD_HUMAN_CROUCH_INSPECT",
	},

	{
		['Text'] = "Inspeccionar",
		['hashAnim'] = "WORLD_HUMAN_INSPECT",
	},

	{
		['Text'] = "Cruzar los brazos",
		['hashAnim'] = "WORLD_HUMAN_STARE_STOIC",
	},

	{
		['Text'] = "Limpiar un vaso",
		['hashAnim'] = "WORLD_HUMAN_BARTENDER_CLEAN_GLASS",
	},

	{
		['Text'] = "Apoyarse en mostrador 1",
		['hashAnim'] = "WORLD_HUMAN_SHOPKEEPER",
	},
	
	{
		['Text'] = "Apoyarse en mostrador 2",
		['hashAnim'] = "WORLD_HUMAN_SHOPKEEPER_CATALOG",
	},

	{
		['Text'] = "Manos en cintura 2",
		['hashAnim'] = "WORLD_HUMAN_STERNGUY_IDLES",
	},

	{
		['Text'] = "Tomar notas en cuaderno",
		['hashAnim'] = "WORLD_HUMAN_WRITE_NOTEBOOK",
	},
	
	{
		['Text'] = "Fumar puro",
		['hashAnim'] = "WORLD_HUMAN_SMOKE_CIGAR",
	},
	
	{
		['Text'] = "Fumar cigarrillo",
		['hashAnim'] = "WORLD_HUMAN_SMOKE_INTERACTION",
	},
	
	{
		['Text'] = "Meter bolsa (carro)",
		['hashAnim'] = "PROP_HUMAN_SACK_STORAGE_IN",
	},
	
    {
        ['Text'] = "Tomar café",
        ['hashAnim'] = "WORLD_HUMAN_COFFEE_DRINK",
    },
    
    {
        ['Text'] = "Abanicarse",
        ['hashAnim'] = "WORLD_HUMAN_FAN",
    },	
	
    {
        ['Text'] = "Sentarse en el suelo 2",
        ['hashAnim'] = "WORLD_CAMP_FIRE_SEATED_GROUND",
    },
	
    {  
        ['Text'] = "Apoyarse en la pared",
        ['hashAnim'] = "WORLD_HUMAN_LEAN_BACK_WALL",
    },
	
    {
        ['Text'] = "Apoyarse pared fumando",
        ['hashAnim'] = "WORLD_HUMAN_LEAN_BACK_WALL_SMOKING",
    },
	
    {
        ['Text'] = "Apoyarse pared bebiendo",
        ['hashAnim'] = "WORLD_HUMAN_LEAN_BACK_WALL_DRINKING",
    },
	
    {
        ['Text'] = "Apoyarse a la derecha",
        ['hashAnim'] = "WORLD_HUMAN_LEAN_WALL_RIGHT",
    },	

    {
        ['Text'] = "Sentarse y leer",
        ['hashAnim'] = "WORLD_HUMAN_SIT_GROUND_READING_BOOK",
    },

    {
        ['Text'] = "Sentarse con lata",
        ['hashAnim'] = "WORLD_HUMAN_CANNED_FOOD_COOKING",
    },

    {
        ['Text'] = "Limpiar ventana",
        ['hashAnim'] = "WORLD_HUMAN_CLEAN_WINDOW",
    }, 

    {
        ['Text'] = "Pescar de pie",
        ['hashAnim'] = "WORLD_HUMAN_STAND_FISHING",
    },

    {
        ['Text'] = "Apoyarse en la barandilla (fumar)",
        ['hashAnim'] = "WORLD_HUMAN_LEAN_RAILING",
    },


    {
        ['Text'] = "Sentarse saliente",
        ['hashAnim'] = "WORLD_HUMAN_SEAT_LEDGE_NEW",
    },

    {
        ['Text'] = "Dormir suelo 1",
        ['hashAnim'] = "WORLD_HUMAN_SLEEP_GROUND_PILLOW",
    },

    {
        ['Text'] = "Dormir suelo 2",
        ['hashAnim'] = "WORLD_HUMAN_SLEEP_GROUND_ARM",
    },

    {
        ['Text'] = "Sentarse saliente armónica",
        ['hashAnim'] = "WORLD_HUMAN_SEAT_LEDGE_HARMONICA",
    },

    {
        ['Text'] = "Sentarse banco armónica",
        ['hashAnim'] = "PROP_HUMAN_SEAT_BENCH_HARMONICA",
    },

    {
        ['Text'] = "Tocar guitarra sentado",
        ['hashAnim'] = "WORLD_HUMAN_SIT_GUITAR",
    },

}

local Animationfille = {

{
	['TextF'] = "Lavarse la cara de rodillas",
	['hashAnim'] = "WORLD_HUMAN_WASH_FACE_BUCKET_GROUND",
},


{
	['TextF'] = "Observar en cuclillas",
	['hashAnim'] = "WORLD_PLAYER_DYNAMIC_KNEEL",
},

{
	['TextF'] = "Impaciente",
	['hashAnim'] = "WORLD_HUMAN_WAITING_IMPATIENT",
},

{
	['TextF'] = "Esperar",
	['hashAnim'] = "WORLD_HUMAN_STAND_WAITING",
},


{
	['Text'] = "Limpiar un vaso",
	['hashAnim'] = "WORLD_HUMAN_BARTENDER_CLEAN_GLASS",
},

{
	['TextF'] = "Inspeccionar el suelo",
	['hashAnim'] = "WORLD_HUMAN_CROUCH_INSPECT",
},

{
	['TextF'] = "Inspeccionar",
	['hashAnim'] = "WORLD_HUMAN_INSPECT",
},

{
	['TextF'] = "Cruzar los brazos",
	['hashAnim'] = "WORLD_HUMAN_STARE_STOIC",
},


{
	['TextF'] = "Tomar notas en cuaderno",
	['hashAnim'] = "WORLD_HUMAN_WRITE_NOTEBOOK",
},

}



local Emote = {
	
	{
		['Text'] = "Saludar",
		['HashEmote'] = -339257980,
	},
	
	
	{
		['Text'] = "Lanzar beso",
		['HashEmote'] = 1927505461,
	},
	
	{
		['Text'] = "Asentir con brazos cruzados",
		['HashEmote'] = 1879954891,
	},
	
	
	{
		['Text'] = "¡Seguidme!",
		['HashEmote'] = 1115379199,
	},
	
	{
		['Text'] = "Suplicar",
		['HashEmote'] = 164860528,
	},
	
	{
		['Text'] = "Disparar en el aire",
		['HashEmote'] = 1939251934,
	},
	
	{
		['Text'] = "Disparar al frente",
		['HashEmote'] = -1639456476,
	},
	

	{
        ['Text'] = "Aplaudir",
        ['HashEmote'] = -221241824,
    },

    {
        ['Text'] = "Desaprobar",
        ['HashEmote'] = 1509171361,
    },

    {
        ['Text'] = "Amenazar",
        ['HashEmote'] = 1256841324,
    },



	{
		['Text'] = "Fingir herida",
		['HashEmote'] = -110352861,
	},
	
	{
		['Text'] = "Enfado",
		['HashEmote'] = 796723886,
	},
	
	{
		['Text'] = "Victoria",
		['HashEmote'] = -402959,
	},
	
	{
		['Text'] = "Mal olor",
		['HashEmote'] = -166523388,
	},

	{
		['Text'] = "Aprobar",
		['HashEmote'] = 425751659,
	},

	{
		['Text'] = "Escupir",
		['HashEmote'] = -2106738342,
	},

	-- {
		-- 	['Text'] = "LetsCraft",
		-- 	['HashEmote'] = -415456998,
		-- },
		
	-- {
	-- 	['Text'] = "PlaySomeCards",
	-- 	['HashEmote'] = -843470756,
	-- },
	
	{
		['Text'] = "Mirar el horizonte",
		['HashEmote'] = 935157006,
	},

	{
		['Text'] = "Indicar 1",
		['HashEmote'] = 1593752891,
	},
	
	{
		['Text'] = "Indicar 2",
		['HashEmote'] = 7918540,
	},
	
	{
		['Text'] = "Indicar 3",
		['HashEmote'] = 486225122,
	},
	
	{
		['Text'] = "Venid aquí",
		['HashEmote'] = 474409519,
	},
	
	{
		['Text'] = "Pescar",
		['HashEmote'] = 1159716480,
	},
	{
		['Text'] = "Mostrar músculos",
		['HashEmote'] = -773960361,
	},
	
	{
		['Text'] = "Conspirar",
		['HashEmote'] = 589481092,
	},
	
	
	{
		['Text'] = "Parad",
		['HashEmote'] = -1691237868,
	},
	
	{
		['Text'] = "Filtrear",
		['HashEmote'] = 831975651,
	},
	
	{
		['Text'] = "Saludo amigable",
		['HashEmote'] = 901097731,
	},
	
	{
		['Text'] = "Saludo cortés",
		['HashEmote'] = -2121881035,
	},
	
	{
		['Text'] = "Saludar con el sombrero",
		['HashEmote'] = -1457020913,
	},
	
	{
		['Text'] = "Saludar con respeto",
		['HashEmote'] = -1801715172,
	},

	{
		['Text'] = "Contento de verte",
		['HashEmote'] = 523585988,
	},
	
	{
		['Text'] = "¡Taa Daa!",
		['HashEmote'] = -462132925,
	},

	{
		['Text'] = "Indignarse",
		['HashEmote'] = 1802342943,
	},

	{
		['Text'] = "Enfermo",
		['HashEmote'] = -1118911493,
	},

	{
		['Text'] = "Cállate",
		['HashEmote'] = -1644757697 ,
	},

	{
		['Text'] = "Asentir",
		['HashEmote'] = -822629770,
	},

	{
		['Text'] = "Burlarse",
		['HashEmote'] = 803206066,
	},

	{
		['Text'] = "Negar",
		['HashEmote'] = -653113914,
	},

	{
		['Text'] = "Aplauso lento",
		['HashEmote'] = 1023735814,
	},
	
	{
		['Text'] = "¿Quién yo?",
		['HashEmote'] = 329631369,
	},
	
	{
		['Text'] = "Yeehaa",
		['HashEmote'] = 445839715 ,
	},
	
	{
		['Text'] = "Fingir lloro",
		['HashEmote'] = 246916594,
	},

	{
		['Text'] = "Lamentarse",
		['HashEmote'] = 81347960,
	},
	
	{
		['Text'] = "Gallina",
		['HashEmote'] = 1825177171,
	},
	
	{
		['Text'] = "Que te jodan 1",
		['HashEmote'] = 354512356,
	},

	{
		['Text'] = "Que te jodan 2",
		['HashEmote'] = 969312568,
	},

	{
		['Text'] = "Te vigilo",
		['HashEmote'] = -553424129,
	},
	{
		['Text'] = "Retar",
		['HashEmote'] = 1533402397,
	},

	{
		['Text'] = "Enfadarse",
		['HashEmote'] = 987239450,
	},

	{
		['Text'] = "Orgulloso",
		['HashEmote'] = -1252070669,
	}

}



Citizen.CreateThread(function()
	
	local sexe =  IsPedMale(PlayerPedId())

	WarMenu.CreateMenu('Anim', 'Acciones')
	WarMenu.CreateSubMenu('Choix', 'Anim', 'Expresiones')
	WarMenu.CreateSubMenu('Select', 'Anim', 'Animaciones')
	WarMenu.CreateSubMenu('Faire', 'Anim', 'Animationfille')
	--WarMenu.CreateSubMenu('Soin', 'Anim', 'Se Relever')
	WarMenu.CreateSubMenu('Brosse', 'Anim', 'Limpieza')
	

	while true do
		Citizen.Wait(0)
		if WarMenu.IsMenuOpened('Anim') then
			if WarMenu.MenuButton('Emote', 'Choix') then end
			if sexe == 1 then WarMenu.MenuButton('Animaciones', 'Select') 
			else WarMenu.MenuButton('Animationfille', 'Faire') end
			if WarMenu.MenuButton('Se Relever', 'Soin')	then end
			if WarMenu.MenuButton('Limpieza', 'Brosse') then end
			
			WarMenu.Display()

			elseif WarMenu.IsMenuOpened('Choix') then
				for i = 1, #Emote do
					if WarMenu.Button(Emote[i]['Text']) then
						Citizen.InvokeNative(0xB31A277C1AC7B7FF, PlayerPedId(), 0, 0,Emote[i]['HashEmote'], 1, 1, 0, 0)
					end					
				end
			WarMenu.Display()
			
			elseif WarMenu.IsMenuOpened('Select') then
				if WarMenu.Button('Parar animación') then
					ClearPedTasks(PlayerPedId())
				end
				for j = 1, #Animation do
					if WarMenu.Button(Animation[j]['Text']) then
						TaskStartScenarioInPlace(PlayerPedId(), GetHashKey(Animation[j]['hashAnim']), -1, true, false, false, false)
					end
				end
			WarMenu.Display()
			
		elseif WarMenu.IsMenuOpened('Faire') then
			if WarMenu.Button('Stop') then
				ClearPedTasks(PlayerPedId())
			end
			for j = 1, #Animationfille do
				if WarMenu.Button(Animationfille[j]['Text']) then
					TaskStartScenarioInPlace(PlayerPedId(), GetHashKey(Animation[j]['hashAnim']), -1, true, false, false, false)
				end
			end
			WarMenu.Display()
	
		elseif WarMenu.IsMenuOpened('Soin') then
			if WarMenu.Button("Revive") then
				local closestPlayer, closestDistance = GetClosestPlayer()  
				local playerPed = GetPlayerPed(closestPlayer)
				if closestPlayer ~= -1 and closestDistance <= 3.0 then   
										
				   if GetEntityHealth(playerPed) >= 1 then 
					   
					 --  print(GetEntityHealth(playerPed))                                               
					   
				   --    TriggerServerEvent("sv_job:RevivePlayer", closestPlayer)
			   
					   --ReviveInjuredPed(PlayerPedId(playerPed))
				   
					   ResurrectPed(PlayerPedId(playerPed))

					   SetCamActive(gameplaycam, true)
					   DisplayHud(true)
					   DisplayRadar(true)
						 
					else 
					   TriggerEvent("redemrp_notification:start", "The player is not dead", 5, "error")  
				   end
			   else     
				   TriggerEvent("redemrp_notification:start", "There's no player near", 5, "error")       
			   end				
		   end
		WarMenu.Display()
		
	elseif WarMenu.IsMenuOpened('Brosse') then
        if WarMenu.Button('Cepillar el caballo') then
            local player = PlayerPedId()
            local currenthorse = GetMount(player)
            ClearPedEnvDirt(currenthorse)
            TaskDismountAnimal(player, 1, 0, 0, 0, 0)
            Wait(3000)
            local dict = "amb_work@world_human_horse_tend_brush_link@paired@male_a@idle_c"
            RequestAnimDict(dict)
            TaskPlayAnim(PlayerPedId(), dict, "idle_h", 1.0, 8.0, -1, 1, 0, false, false, false)
            Wait(10000)
            ClearPedTasks(PlayerPedId())

        elseif WarMenu.Button('Lavarse') then
            local player = PlayerPedId()
            local player2 = PlayerPedId()
            local player3 = PlayerPedId()
            local player4 = PlayerPedId()
            ClearPedEnvDirt(player)
            ClearPedBloodDamage(player2)
            ClearPedWetness(player3)
            ClearPedDamageDecalByZone(player4)
            Wait(3000)
            ClearPedTasks(PlayerPedId())        
	 
	end
		WarMenu.Display()

	end	
	end
end)

Citizen.CreateThread(function()
	 while true do 
		 Citizen.Wait(0)

		 --if isInZone then 
			 if IsControlPressed(0, 0xCEE12B50) then 
				WarMenu.OpenMenu('Anim')
			 end
		--isInZone = false 
		end
--	end
end)





function GetDistance3D(coords, coords2)
	return #(coords - coords2)
end

GetClosestPlayer = function(coords)
    local players         = GetPlayers()
    local closestDistance = 5
    local closestPlayer   = -1
    local coords          = coords
    local usePlayerPed    = false
    local playerPed       = PlayerPedId()
    local playerId        = PlayerId()


    if coords == nil then
        usePlayerPed = true
        coords       = GetEntityCoords(playerPed)
    end

    for i=1, #players, 1 do
        local target = GetPlayerPed(players[i])
      --  print(target)

        if not usePlayerPed or (usePlayerPed and players[i] ~= playerId) then
            local targetCoords = GetEntityCoords(target)
            local distance     = GetDistanceBetweenCoords(targetCoords, coords.x, coords.y, coords.z, true)

            if closestDistance > distance then
                closestPlayer = players[i]
                closestDistance = distance
            end
        end
    end

    return closestPlayer, closestDistance
end

function GetPlayers()
    local players = {}

    for i = 0, 31 do
        if NetworkIsPlayerActive(i) then
          --  print(i)
            table.insert(players, i)
        end
    end

    return players
end

Citizen.CreateThread(function() -- Hands up emote
    while true do
        Citizen.Wait(0)
        if (IsControlJustPressed(0, 0x8CC9CD42))  then
            local ped = PlayerPedId()
            if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then
    
                RequestAnimDict( "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs" )
    
                while ( not HasAnimDictLoaded( "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs" ) ) do 
                    Citizen.Wait( 100 )
                end
    
                if IsEntityPlayingAnim(ped, "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs", "handsup_register_owner", 3) then
                    ClearPedSecondaryTask(ped)
                else
                    TaskPlayAnim(ped, "script_proc@robberies@shop@rhodes@gunsmith@inside_upstairs", "handsup_register_owner", 8.0, -8.0, 120000, 31, 0, true, 0, false, 0, false)
                end
            end
        end
    end
end)

Citizen.CreateThread(function() -- Point emote
    while true do
        Citizen.Wait(0)
        if (IsControlJustPressed(0, 0x760A9C6F))  then
            local ped = PlayerPedId()
            if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then
    
                RequestAnimDict( "mech_loco_m@generic@reaction@pointing@unarmed@stand" )
    
                while ( not HasAnimDictLoaded( "mech_loco_m@generic@reaction@pointing@unarmed@stand" ) ) do 
                    Citizen.Wait( 100 )
                end
    
                if IsEntityPlayingAnim(ped, "mech_loco_m@generic@reaction@pointing@unarmed@stand", "point_fwd_0", 3) then
                    ClearPedSecondaryTask(ped)
                else
                    TaskPlayAnim(ped, "mech_loco_m@generic@reaction@pointing@unarmed@stand", "point_fwd_0", 1.0, 8.0, 1500, 31, 0, true, 0, false, 0, false)
                end
            end
        end
    end
end)

Citizen.CreateThread(function() -- cancel emote/animation
        while true do
            Wait(0)
            if IsControlJustPressed(0, 0xA65EBAB4) then
			ClearPedTasks(PlayerPedId())
            end
        end 
 end)
-- TaskStartScenarioAtPosition(GetPlayerPed(), GetHashKey('PROP_HUMAN_PIANO'), -312.22 - 0.08, 799.01, 118.43 + 0.03, 102.37, 0, true, true, 0, true) (PIANO)