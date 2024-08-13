CreateThread(function()
    local test = false
    local PlayerId = PlayerId()
    local ped = PlayerPedId()
    while true do
    
        if IsControlPressed(0, 25) or IsPlayerFreeAiming(PlayerId) then
            Wait(500)
            test = true
        end
        
        if IsPedReloading(ped) or not IsPlayerFreeAiming(PlayerId) then
            test = false
        end
        
        Wait(750)
        CreateThread(function()
            while test do
                SetGameplayCamRelativeRotation(0)
                Wait(0)
            end
        end)
    end
end)

