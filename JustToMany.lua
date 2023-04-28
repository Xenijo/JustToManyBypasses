local Bypasses = {}


function Bypasses:Dh()
  local Bypass
  Bypass = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
    if not checkcaller() and tostring(self.Name) == "MainEvent" and rawequal(Args[1], "TeleportDetect") then 
      if _G.Settings.Logs == true then 
        warn("Bypassed: "..Args[1])
      end
      return nil
    end
    
    return Bypass(self, ...)
  end)




local Fly
Fly =  hookmetamethod(game, "__namecall", function(self,...)
        local Args = {...}
if not checkcaller() and tostring(self.Name) == "MainEvent" and  rawequal(Args[1],"CHECKER_1")  or  rawequal(Args[1],"OneMoreTime")  then 
  if _G.Settings.Logs == true then 
        warn("Bypassed: "..Args[1])
      end
return nil
    end
        
    if (not checkcaller() and getfenv(2).crash) then
        local fenv = getfenv(2)
        fenv.crash = function() end
         if _G.Settings.Logs == true then 
       warn("Game tried to crash players")
          end
        setfenv(2, fenv)
    end
    return Fly(self, ...)
end)
end

if _G.Settings.Adonis then 
  local Namecall
Namecall = hookmetamethod(game, '__namecall', function(self, ...)
   local Caller = tostring(getcallingscript())
   local Method = getnamecallmethod()
   if Caller == 'ClientMover'  then
       return nil
   end
   return Namecall(self, ...)
end)
  end
return Bypasses
