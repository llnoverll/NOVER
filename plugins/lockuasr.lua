
local function iq_100k(msg, matches)
    local uuser = "mate"..msg.to.id
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if redis:get(uuser) then
    if not is_momod(msg) then
      delete_msg(msg.id, ok_cb, true)
    local warn = "\n"..msg.from.first_name.."\n".." <b> don't send user name </b>‼️ ".."\n".."🔹 <b> your username </b> : @"..msg.from.username.."\n"
    return reply_msg(msg.id, warn, ok_cb, true) 
    end
   end 
    -- by @iq_100k
 if is_momod(msg) and matches[1]=="قفل اليوزر"    then
    local uuser = "mate"..msg.to.id
    redis:set(uuser,true)
local text = '<b>  ¦ Protection User ON </b>💡 \n <b> ¦ from ⚠️ : </b>  '..(msg.from.first_name or "erorr")..'\n' 
return reply_msg(msg.id, text, ok_cb, false)
    end
     if is_momod(msg) and matches[1]=="فتح اليوزر"    then
    redis:del(uuser)
   local text = '<b>  ¦ protection User OFF </b>💡 \n <b> ¦ from ⚠️ : </b>  '..(msg.from.first_name or "erorr")..'\n' 
   return reply_msg(msg.id, text, ok_cb, false)
end
    
    
    
end
return {
  patterns = {
"(قفل اليوزر)$" ,
"(فتح اليوزر)$" ,
  "@"
  },
  run = iq_100k
}
-