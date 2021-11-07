--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]
--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_Government = DarkRP.createJob("Judge", {
    color = Color(69, 11, 235, 255),
    model = {"models/player/breen.mdl"},
    description = [[The Judge can put people in jail and also pardon them. This is a serious RP Role]],
    weapons = {"med_kit", "weapon_deagle2", "arrest_stick", "unarrest_stick"},
    command = "Judge",
    max = 1,
    salary = 500,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Government",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

Team_Civilian = DarkRP.createJob("Citizen", {
    color = Color(176, 201, 19, 255),
    model = {
        "models/player/p2_chell.mdl",
        "models/player/alyx.mdl",
        "models/player/Group01/female_01.mdl",
        "models/player/Group01/male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/male_04.mdl",
        "models/player/Group01/female_03.mdl"
    },
    description = [[Basic everyday person ]],
    weapons = {},
    command = "Civilian",
    max = 0,
    salary = 90,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Civilian",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(125)
        ply:SetHealth(125)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_Government = DarkRP.createJob("Prosecutor", {
    color = Color(69, 11, 235, 255),
    model = {"models/player/kleiner.mdl"},
    description = [[The Prosecutor is a lawyer who conducts the case against a defendant in a criminal court. This is a Serious RP role]],
    weapons = {},
    command = "Prosecutor",
    max = 1,
    salary = 250,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Government",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_Government = DarkRP.createJob("Defense Attorney ", {
    color = Color(69, 11, 235, 255),
    model = {"models/player/gman_high.mdl"},
    description = [[The Defense Attorney is an attorney representing a defendant in a lawsuit or criminal prosecution.]],
    weapons = {},
    command = "Defense Attorney ",
    max = 1,
    salary = 250,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Government",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_Government = DarkRP.createJob("Mayor", {
    color = Color(69, 11, 235, 255),
    model = {"models/player/barney.mdl"},
    description = [[The Mayor can set laws, put the city on lockdown, and set jail position.]],
    weapons = {"weapon_deagle2"},
    command = "Mayor",
    max = 1,
    salary = 300,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Government",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_Government = DarkRP.createJob("Chief Of Police", {
    color = Color(69, 11, 235, 255),
    model = {"models/player/leet.mdl"},
    description = [[The Chief of police is highest Rank in the police force, this is a serious Rp role]],
    weapons = {"weapon_deagle2"},
    command = "Chief of Police",
    max = 1,
    salary = 275,
    admin = 0,
    vote = true,
    hasLicense = true,
    candemote = true,
    category = "Government",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_City_Police = DarkRP.createJob("Police Officer", {
    color = Color(69, 11, 235, 255),
    model = {"models/player/dod_american.mdl"},
    description = [[The Police Officer is sworn to protect and serve, this is a serious Rp role]],
    weapons = {"weapon_glock2", "arrest_stick", "unarrest_stick", "stunstick"},
    command = "Police Officer",
    max = 10,
    salary = 175,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "City Police",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_City_Police = DarkRP.createJob("Detective", {
    color = Color(69, 11, 235, 255),
    model = {"models/player/dod_german.mdl"},
    description = [[The Detective is a more advanced and strategic Officer of the law, this is a serious Rp role]],
    weapons = {"weapon_glock2", "arrest_stick", "unarrest_stick", "stunstick", "weapon_pumpshotgun2", "lockpick"},
    command = "Detective",
    max = 4,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "City Police",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_City_Police = DarkRP.createJob("Colonel", {
    color = Color(69, 11, 235, 255),
    model = {"models/player/urban.mdl"},
    description = [[The Colonel is an advisor for the Chief of Police, This is a serious RP role]],
    weapons = {"weapon_glock2", "arrest_stick", "unarrest_stick", "stunstick", "weapon_pumpshotgun2", "lockpick"},
    command = "Colonel",
    max = 1,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = true,
    category = "City Police",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_First_Responder = DarkRP.createJob("EMT", {
    color = Color(230, 39, 152, 255),
    model = {
        "models/player/Group03m/female_06.mdl",
        "models/player/Group03m/male_02.mdl",
        "models/player/Group03m/male_03.mdl"
    },
    description = [[The EMT is the lowest ranking Paramedic , can heal other players]],
    weapons = {"med_kit"},
    command = "EMT",
    max = 4,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "First Responder",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--]]
Team_First_Responder = DarkRP.createJob("Doctor", {
    color = Color(230, 39, 152, 255),
    model = {
        "models/player/mossman_arctic.mdl",
        "models/player/odessa.mdl"
    },
    description = [[The Doctor can heal other players]],
    weapons = {"med_kit"},
    command = "Doctor",
    max = 2,
    salary = 220,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "First Responder",
    NeedToChangeFrom = team_Civilian,
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
Team_Civilian = DarkRP.createJob("Gun Dealer", {
    color = Color(54, 227, 11, 255),
    model = {"models/player/monk.mdl"},
    description = [[The Gun Dealer deals guns duh! Don't get caught selling illegal weapons though!]],
    weapons = {"weapon_glock2"},
    command = "Gun Dealer",
    max = 10,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Criminal",
    NeedToChangeFrom = TEAM_Civilian
    PlayerSpawn = function(ply)
        ply:SetMaxHealth(200)
        ply:SetHealth(200)
        ply:SetArmor(150)
    end
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
TEAM_Criminal = DarkRP.createJob("Drug Dealer", {
    color = Color(20, 18, 18, 255),
    model = {"models/player/soldier_stripped.mdl"},
    description = [[Deal some drugs yo! just don't get caught!]],
    weapons = {},
    command = "Drug Dealer",
    max = 4,
    salary = 200,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminal",
    NeedToChangeFrom = TEAM_Civilian
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
TEAM_Criminal = DarkRP.createJob("Thief ", {
    color = Color(20, 18, 18, 255),
    model = {"models/player/arctic.mdl"},
    description = [[Steal some shit, don't get caught!]],
    weapons = {"lockpick"},
    command = "Thief",
    max = 4,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Criminal",
    NeedToChangeFrom = TEAM_Civilian
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
TEAM_Hatchet_Family = DarkRP.createJob("Hatchet Family Guard", {
    color = Color(111, 20, 201, 255),
    model = {
        "models/player/Group01/male_04.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/female_05.mdl",
        "models/player/Group01/female_06.mdl"
    },
    description = [[Hatchet Family Guard, keep the Hatchet Family safe and work your way through the ranks!]],
    weapons = {"lockpick", "stunstick"},
    command = "Guard",
    max = 6,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Hatchet Family",
    NeedToChangeFrom = TEAM_Civilian
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
TEAM_Hatchet_Family = DarkRP.createJob("Tony Hatchet", {
    color = Color(111, 20, 201, 255),
    model = {"models/player/phoenix.mdl"},
    description = [[One of the Hatchet Family Leaders]],
    weapons = {"lockpick", "stunstick", "weapon_deagle2", "weapon_ak472"},
    command = "Tony Hatchet",
    max = 1,
    salary = 500,
    admin = 1,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Hatchet Family",
    NeedToChangeFrom = TEAM_Civilian
})

--[[
    Generated using: DarkRP | Job Generator
    https://csite.io/tools/gmod-darkrp-job
--]]
TEAM_Hatchet_Family = DarkRP.createJob("Garry Hatchet", {
    color = Color(111, 20, 201, 255),
    model = {"models/player/phoenix.mdl"},
    description = [[One of the Hatchet Family Leaders]],
    weapons = {"stunstick", "weapon_deagle2", "weapon_ak472"},
    command = "Garry Hatchet",
    max = 1,
    salary = 500,
    admin = 1,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = "Hatchet Family",
    NeedToChangeFrom = TEAM_Civilian
})


--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultJob = Job_Citizen
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
