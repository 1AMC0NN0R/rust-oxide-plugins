--[[ 
 Admin door unlocker
 
 Copyright (c) 2015 Nexus <talk@juliocesar.me>, <http://steamcommunity.com/profiles/76561197983103320/>
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 2 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 
 $Id$
 Version 0.0.1 by Nexus on 07-01-2015 11:47 PM
]]

PLUGIN.Title = "Admin door Unlocker"
PLUGIN.Description = "Unlocks any door for Admins"
PLUGIN.Version = V(0, 0, 1)
PLUGIN.Author = "Nexus"

function PLUGIN:CanOpenDoor( player, door ) 
    if player:GetComponent("BaseNetworkable").net.connection.authLevel == 2 then
        return true
    else
        return nil
    end
end