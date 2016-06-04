require "defines"
require "util"

if remote.interfaces.af then
    require "autofill"
end

if remote.interfaces.Macromanaged_Turrets then
    require "macro"
end
