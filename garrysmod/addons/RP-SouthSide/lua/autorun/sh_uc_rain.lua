if (string.lower(game.GetMap()) != "rp_southside") then
    return
end

AddCSLuaFile()

// Load Particles
game.AddParticles( "particles/southside_rain.pcf" )
game.AddParticles( "particles/uc1effects.pcf" )
game.AddParticles( "particles/ss_insects.pcf" )

// Precache Particles
PrecacheParticleSystem( "rain_player" )
PrecacheParticleSystem( "fog_lowpatch" )				// smoke1_additive.vmt
PrecacheParticleSystem( "fog_lowpatch_narrow" )
PrecacheParticleSystem( "fog_lowpatch_narrow512" )
PrecacheParticleSystem( "fog_lowpatch_narrow512_l" )
PrecacheParticleSystem( "fog_lowpatch_narrow_l" )
PrecacheParticleSystem( "fog_lowpatch_park" )
PrecacheParticleSystem( "steam_grate" )					// vistasmokev1_add_nearcull.vmt
PrecacheParticleSystem( "steam_manhole" )				// Steam around manhole
PrecacheParticleSystem( "steam_manhole_b" )
PrecacheParticleSystem( "Moths1" )						// moth.vmt
PrecacheParticleSystem( "Moths2" )						// moth.vmt
PrecacheParticleSystem( "Moths3" )						// moth.vmt


if (CLIENT) then
	CreateConVar( "cl_uc_rainscale", "1", { FCVAR_ARCHIVE }, "How much rain in SouthSide", 1, 30 )

    net.Receive( "S2C_Union_Spawn", function()
		local pLocalPlayer = LocalPlayer()
        if (!IsValid(pLocalPlayer)) then
            return
        end
		
		for i = 1, GetConVar("cl_uc_rainscale"):GetInt() do 
			ParticleEffect( "rain_player", pLocalPlayer:GetPos(), Angle(0,0,0), pLocalPlayer)
		end 	
    end)
elseif (SERVER) then  
    CreateConVar( "sv_uc_rain", "0", { FCVAR_REPLICATED, FCVAR_ARCHIVE }, "Enabled Rain for SouthSide", 0, 1 )

    util.AddNetworkString( "S2C_Union_Spawn" )

    hook.Add( "PlayerSpawn", "UC::Spawn::Rain", function( client )
        if (!GetConVar("sv_uc_rain"):GetBool()) then
            return
        end
		
		timer.Simple(1, function()
			if (!IsValid(client)) then
				return
			end
			net.Start( "S2C_Union_Spawn" )
			net.Send( client )
		end)
    end)
end

print("UnionCity: South Side Loaded...")