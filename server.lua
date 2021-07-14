local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","pholm_fix")

AddEventHandler('chatMessage', function(source, name, msg)
    if msg == "/fix" then
      local user_id = vRP.getUserId({source})
      local player = vRP.getUserSource({user_id})
      if vRP.hasPermission({user_id,"repair.menu"}) then
            TriggerClientEvent('pholm:fix', source);
            CancelEvent();      
      end
    end
end)