--[[-----------------------------------------------------------------------
Categories
---------------------------------------------------------------------------
The categories of the default F4 menu.

Please read this page for more information:
https://darkrp.miraheze.org/wiki/DarkRP:Categories

In case that page can't be reached, here's an example with explanation:

DarkRP.createCategory{
    name = "Citizens", -- The name of the category.
    categorises = "jobs", -- What it categorises. MUST be one of "jobs", "entities", "shipments", "weapons", "vehicles", "ammo".
    startExpanded = true, -- Whether the category is expanded when you open the F4 menu.
    color = Color(0, 107, 0, 255), -- The color of the category header.
    canSee = function(ply) return true end, -- OPTIONAL: whether the player can see this category AND EVERYTHING IN IT.
    sortOrder = 100, -- OPTIONAL: With this you can decide where your category is. Low numbers to put it on top, high numbers to put it on the bottom. It's 100 by default.
}


Add new categories under the next line!
---------------------------------------------------------------------------]]
DarkRP.createCategory{
    name = "Criminal",
    categorises = "jobs",
    startExpanded = true,
    color = Color(224, 19, 19, 255),
    canSee = function(ply) return true end,
    sortOrder = 2
}
DarkRP.createCategory{
    name = "Government",
    categorises = "jobs",
    startExpanded = true,
    color = Color(229, 235, 8, 255),
    canSee = function(ply) return true end,
    sortOrder = 1
}
DarkRP.createCategory{
    name = "Civilian",
    categorises = "jobs",
    startExpanded = true,
    color = Color(53, 235, 8, 255),
    canSee = function(ply) return true end,
    sortOrder = 1
}
DarkRP.createCategory{
    name = "City Police",
    categorises = "jobs",
    startExpanded = true,
    color = Color(8, 44, 235, 255),
    canSee = function(ply) return true end,
    sortOrder = 1
}
DarkRP.createCategory{
    name = "First Responder",
    categorises = "jobs",
    startExpanded = true,
    color = Color(8, 235, 153, 255),
    canSee = function(ply) return true end,
    sortOrder = 2
}
DarkRP.createCategory{
    name = "Bayou Cartel",
    categorises = "jobs",
    startExpanded = true,
    color = Color(227, 70, 3, 255),
    canSee = function(ply) return true end,
    sortOrder = 2
}
DarkRP.createCategory{
    name = "Hatchet Family",
    categorises = "jobs",
    startExpanded = true,
    color = Color(88, 3, 227, 255),
    canSee = function(ply) return true end,
    sortOrder = 2
}
DarkRP.createCategory{
    name = "Maple Street Gang",
    categorises = "jobs",
    startExpanded = true,
    color = Color(227, 97, 3, 255),
    canSee = function(ply) return true end,
    sortOrder = 2
}
DarkRP.createCategory{
    name = "South Side Mafia",
    categorises = "jobs",
    startExpanded = true,
    color = Color(107, 94, 84, 255),
    canSee = function(ply) return true end,
    sortOrder = 2
}
