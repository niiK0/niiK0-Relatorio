local group 

RegisterNetEvent('es_admin:setGroup')
AddEventHandler('es_admin:setGroup', function(g)
	print('group setted ' .. g)
	group = g
end)

RegisterNetEvent("textsent")
AddEventHandler('textsent', function(tPID, names2)
	TriggerEvent('chatMessage', "", {96, 254, 0}, " Resposta enviada para:^0 " .. names2 .."  ".."^0  - " .. tPID)
end)

RegisterNetEvent("textmsg")
AddEventHandler('textmsg', function(source, textmsg, names2, names3 )
	TriggerEvent('chatMessage', "", {96, 254, 0}, " Resposta | " .. names3 .."  ".."^0: " .. textmsg)
end)

RegisterNetEvent('sendReport')
AddEventHandler('sendReport', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, "Relatório enviado para a Staff Online!")
	TriggerEvent('chatMessage', "", {255, 0, 0}, " ^8[RELATÓRIO] | [^0ID^8:^0 ".. id .."^8] ".. name .."  "..":^0  " .. message)
  elseif group ~= 'user' and pid ~= myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^8[RELATÓRIO] | [^0ID^8:^0 ".. id .."^8] ".. name .."  "..":^0  " .. message)
  end
end)

