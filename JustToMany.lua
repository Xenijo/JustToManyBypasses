local Bypasses = {}


function Bypasses:Dahood()
local OldFunction
OldFunction = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(self, ...)
        local Args = {...}
if not checkcaller() and self.Name == "MainEvent" and Args[1] == "TeleportDetect"then 
warn("JustToManyBypasses Bypassed: "..Args[1])
return nil
    end

    return OldFunction(self, ...)
end))
 end
return Bypasses
