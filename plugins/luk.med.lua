
do 

local function pre_process(msg) 
local novar = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local novar = 'mate:'..msg.to.id 
    if redis:get(sofe) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = "عزيزي~["..msg.from.first_name.."]".."\n".."يمنع نشر صور فيديوهات صوتيات وكافة الميديا هنا ان تكرر الامر سوف تجبرني على طردك😼☝️".."\n".." 🔺🔻 username : @"..(msg.from.username or " ") 
reply_msg(novar, test, ok_cb, true) 

end 

        return msg 
    end 

local function NOVAR(msg, matches) 
local sofe = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local novar= 'mate:'..msg.to.id 
                    redis:set(th3boss, true) 
local sofe = '🔰💫🔐تـۣۛـۣۛـ﴿ٰقفـۣۣۛـۣل الوسـہائطۭۢ﴾ۣۣۙــہٰۭۢمۦ✿⇣\n✴Order By : @'..msg.from.username..'\n✴Order By : '.. msg.from.id..'\n' 
reply_msg(sofe, taha, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local sofe = '🔘🔇هـْـٍْـ(ٍْ☝)ـٍْـٍْ✟ـْذأ.cc.الامـٍٍٍّّّـٍٍٍّّّ🌸ٍٍٍّّّـٍٍّّّــر ٍّْ✾للادمہًٍِْہـ﴿✮﴾ـٌٍِنيه والمــﮨـℓـٍَّـدراءلتبـ﴿❂﴾ـعبصـُْہۭۢ❀ٰٰ❥ٰ' 
reply_msg(novar, sofe, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then 
      local novar= 'mate:'..msg.to.id 
      redis:del(NOVAR) 
local sofe = '🔰💫🔓تـۣۛـۣۛـ﴿ٰفـۣۣۛـۣتح الوسـہائطۭۢ﴾ۣۣۙــہٰۭۢمۦ✿⇣\n✴Order By : @'..msg.from.username..'\n✴Order By : '.. msg.from.id..'\n' 
reply_msg(sofe, taha, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local novar= '🔘🔇هـْـٍْـ(ٍْ☝)ـٍْـٍْ✟ـْذأ.cc.الامـٍٍٍّّّـٍٍٍّّّ🌸ٍٍٍّّّـٍٍّّّــر ٍّْ✾للادمہًٍِْہـ﴿✮﴾ـٌٍِنيه والمــﮨـℓـٍَّـدرا۽✞ لتبـ﴿❂﴾ـعبصـُْہۭۢ❀ٰٰ❥ٰ' 
reply_msg(sofe, taha, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  }, 
run = NOVAR, 
    pre_process = pre_process 
} 

end 
