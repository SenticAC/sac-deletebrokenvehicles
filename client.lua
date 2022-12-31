Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(10)
	local vehicles = GetGamePool('CVehicle')
			
        for k, v in pairs(vehicles) do 
            if GetEntityHealth(v) == 0 then
                SetEntityAsMissionEntity(v, false, false) 
                DeleteEntity(v)
            end
	end
    end
end)
