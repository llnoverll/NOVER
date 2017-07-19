
local function run(msg, matches) 
if matches[1] == 'اطردني' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
      return '✴🎈 يا حبعمري \n✴🎈 معرفك @'..msg.from.username..'\n✴🎈 هل انت متاكد من قرارك \n✴🎈 اذا تريد تغادر ارسل  [ نعم ] \n✴🎈اذا تريد تبقه ويانه ارسل [ لا ] \n✴🎈ابقه ندردش لا تغادر😻' 
    end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^نعم$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "احسن شي سويته ابقه ندردش 😻💛💭") 
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return 'ماشي راح اطردك بس لترجع للمجموعه بعد ('..msg.to.title..')' 
        end 
      end 
    end 

return { 
  patterns = { 
  '^(اطردني)$', 
  '^(نعم)$', 
  '^(لا)$' , 
  '^[#!/](اطردني)$', 
  '^[#!/](نعم)$', 
  '^[#!/](لا)$' 
  }, 
  run = run, 
} 
--[[ 
        
         
        
        Dev @N0VAR
        Dev @TAHAJ20 
        CH > @DEV_NOVAR 
--]] 
