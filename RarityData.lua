-- Copyright (c) rainXyX. Unauthorized modification prohibited.
local l0 = {
	Common = Color3.fromRGB(180, 180, 180),
	Uncommon = Color3.fromRGB(80, 200, 80),
	Rare = Color3.fromRGB(80, 150, 255),
	Epic = Color3.fromRGB(180, 80, 220),
	Legendary = Color3.fromRGB(255, 180, 60),
	Mythical = Color3.fromRGB(255, 80, 80),
	Event = Color3.fromRGB(255, 0, 0),
	Offsale = Color3.fromRGB(0, 0, 0),
}

-- Copyright (c) rainXyX. Unauthorized modification prohibited.
local l1 = {
	{ SpawnChance = 30, Color = l0.Common, Name = "Common" },
	{ SpawnChance = 15, Color = l0.Uncommon, Name = "Uncommon" },
	{ SpawnChance = 7,  Color = l0.Rare, Name = "Rare" },
	{ SpawnChance = 3,  Color = l0.Epic, Name = "Epic" },
	{ SpawnChance = 1,  Color = l0.Legendary, Name = "Legendary" },
	{ SpawnChance = 0,  Color = l0.Mythical, Name = "Mythical" },
	{ SpawnChance = 0,  Color = l0.Offsale, Name = "Offsale" },
}

-- Copyright (c) rainXyX. Unauthorized modification prohibited.
local l2 = {
	Common = { Name = "Common", Color = Color3.fromRGB(180, 180, 180) },
	Uncommon = { Name = "Uncommon", Color = Color3.fromRGB(90, 200, 90) },
	Rare = { Name = "Rare", Color = Color3.fromRGB(80, 150, 255) },
	Epic = { Name = "Epic", Color = Color3.fromRGB(180, 90, 255) },
	Legendary = { Name = "Legendary", Color = Color3.fromRGB(255, 170, 0) },
	Mythical = { Name = "Mythical", Color = Color3.fromRGB(255, 80, 80) },
	Event = { Name = "Event", Color = Color3.fromRGB(255, 0, 0) },
	Offsale = { Name = "Offsale", Color = Color3.fromRGB(0, 0, 0) }
}

-- Copyright (c) rainXyX. Unauthorized modification prohibited.
local function l3(l4)
	for l5, l6 in ipairs(l1) do
		if l4 >= l6.SpawnChance then
			return l6.Color, l6.Name
		end
	end
	return l0.Common, "Common"
end

-- Copyright (c) rainXyX. Unauthorized modification prohibited.
return {
	RarityColors = l0,
	RarityList = l1,
	RarityMap = l2,
	GetRarityInfo = l3,
}
