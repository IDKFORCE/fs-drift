local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
		AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
                  isLoggedIn = true
                    PlayerData = QBCore.Functions.GetPlayerData() end)
RegisterKeyMapping('DriftOn', 'ToggleDrift Mode', 'keyboard', 'Shift')


Citizen.CreateThread( function()
		while true do
			Wait(1)
				local ped = GetPlayerPed(-1)
					local vehicle = GetVehiclePedIsIn(ped, false)
						local driver = GetPedInVehicleSeat(vehicle, -1)
							if IsPedInAnyVehicle(ped) then	
								if driver == ped and IsVehicleOnAllWheels(vehicle) then
									local GetHandlingfInitialDragCoeff = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff")
										local GetHandlingfDriveBiasFront = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveBiasFront')
											local GetHandlingfSteeringLock = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSteeringLock")
												local GetHandlingfTractionCurveMax = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMax")
													local GetHandlingfTractionCurveMin = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin")
														local GetHandlingfTractionCurveLateral = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveLateral")
															local GetHandlingfLowSpeedTractionLossMult = GetVehicleHandlingFloat(vehicle, "CHandlingData", "fLowSpeedTractionLossMult")
																if IsControlJustReleased(0, 21) and ((GetVehicleClass(vehicle) == 0) or (GetVehicleClass(vehicle) == 1) or (GetVehicleClass(vehicle) == 2) or (GetVehicleClass(vehicle) == 3) or (GetVehicleClass(vehicle) == 4) or (GetVehicleClass(vehicle) == 5) or (GetVehicleClass(vehicle) == 6) or (GetVehicleClass(vehicle) == 7) or (GetVehicleClass(vehicle) == 9)) then
															if GetHandlingfInitialDragCoeff >= 60.0 then
													DriftOff()
												else
										DriftOn()
									end
								end	
							end
						else
					end
				end
			end)
function DriftOff()
		local ped = GetPlayerPed(-1)
			local vehicle = GetVehiclePedIsIn(ped, false)
				local removeFromfInitialDragCoeff = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff")-90.22)
					local removeFromfDriveInertia = (GetVehicleHandlingFloat(vehicle, "CHandlingData", 'fDriveInertia')-0.31)
						local removeFromfSteeringLock = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSteeringLock")-22.0)
							local removeFromfTractionCurveMax = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMax")+1.1)
								local removeFromfTractionCurveMin = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin")+0.4)
									local removeFromfTractionCurveLateral = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveLateral")-2.5)
										local removeFromfLowSpeedTractionLossMult = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fLowSpeedTractionLossMult")+0.57)
											local currentEngineMod = GetVehicleMod(vehicle, 11)
												QBCore.Functions.Notify("Drift Mode Off", "error")
											SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fInitialDragCoeff', removeFromfInitialDragCoeff)
											SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveInertia', removeFromfDriveInertia)
											SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', removeFromfSteeringLock)
											SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveMax', removeFromfTractionCurveMax)
											SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveMin', removeFromfTractionCurveMin)
											SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveLateral', removeFromfTractionCurveLateral)
											SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fLowSpeedTractionLossMult', removeFromfLowSpeedTractionLossMult)
											SetVehicleEnginePowerMultiplier(vehicle, 0.3)					
											SetVehicleModKit(vehicle, 0)
											SetVehicleMod(vehicle, 11, currentEngineMod, true)				
										end
						function DriftOn()
									local ped = GetPlayerPed(-1)
								local vehicle = GetVehiclePedIsIn(ped, false)
							local addTofInitialDragCoeff = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDragCoeff")+90.22)
						local addTofDriveInertia = (GetVehicleHandlingFloat(vehicle, "CHandlingData", 'fDriveInertia')+0.31)
					local addTofSteeringLock = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fSteeringLock")+22.0)
				local addTofTractionCurveMax = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMax")-1.1)
			local addTofTractionCurveMin = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveMin")-0.4)
		local addTofTractionCurveLateral = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fTractionCurveLateral")+2.5)
	local addTofLowSpeedTractionLossMult = (GetVehicleHandlingFloat(vehicle, "CHandlingData", "fLowSpeedTractionLossMult")-0.57)
QBCore.Functions.Notify("Drift Mode On", "success")
		SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fInitialDragCoeff', addTofInitialDragCoeff)
			if GetHandlingfDriveBiasFront == 0.0 then
				SetVehicleEnginePowerMultiplier(vehicle, 185.0)
					else
						SetVehicleEnginePowerMultiplier(vehicle, 150.0)
							end
								SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveInertia', addTofDriveInertia)
									SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', addTofSteeringLock)
										SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveMax', addTofTractionCurveMax)
											SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveMin', addTofTractionCurveMin)
												SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fTractionCurveLateral', addTofTractionCurveLateral)
													SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fLowSpeedTractionLossMult', addTofLowSpeedTractionLossMult)
														end
													function drawNotification(text)
										SetNotificationTextEntry("STRING")
								AddTextComponentString(text)
						DrawNotification(false, false)
					end

