bobs = {
	GetHashKey("CARGOBOB"),
	GetHashKey("CARGOBOB2"),
	GetHashKey("CARGOBOB3"),
	GetHashKey("CARGOBOB4"),
}

Citizen.CreateThread(function()
    while true do
    	Citizen.Wait(0)
    	veh = GetVehiclePedIsUsing(PlayerPedId())
    	if IsControlJustPressed(1, 74) then
    		for i = 1,#bobs do
    				rightveh = IsVehicleModel(veh, bobs[i])
    			if rightveh then
    				Citizen.InvokeNative(0x7BEB0C7A235F6F3B,GetVehiclePedIsUsing(PlayerPedId()),1)
    			end
			end
		end
    end
end)

RegisterCommand("removehook", function()
	veh = GetVehiclePedIsUsing(PlayerPedId())
	if Citizen.InvokeNative(0x6E08BF5B3722BAC9,veh) or Citizen.InvokeNative(0x1821D91AD4B56108,veh) then
		vehattached = Citizen.InvokeNative(0x873B82D42AC2B9E5,veh)
		Citizen.InvokeNative(0xADF7BE450512C12F,vehattached)
		Citizen.InvokeNative(0x9768CF648F54C804,veh)
	end
end, false)