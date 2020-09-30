local mType = Game.createMonsterType("Floating Savant")
local monster = {}

monster.description = "a floating savant"
monster.experience = 8000
monster.outfit = {
	lookType = 1063,
	lookHead = 113,
	lookBody = 94,
	lookLegs = 78,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8000
monster.maxHealth = 8000
monster.race = "undead"
monster.corpse = 33341
monster.speed = 330
monster.summonCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "Lava Lurker Attendant", chance = 70, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "tssooosh tsoooosh tssoooosh!", yell = false}
}

monster.loot = {
	{id = "small enchanted ruby", chance = 10000, maxCount = 5},
	{id = "Red Crystal Fragment", chance = 10000, maxCount = 2},
	{id = "Red Gem", chance = 10000, maxCount = 3},
	{id = "Red Piece of Cloth", chance = 10000, maxCount = 3},
	{id = "Concentrated Demonic Blood", chance = 12000, maxCount = 5},
	{id = "Demonic Essence", chance = 10000, maxCount = 5},
	{id = 2553, chance = 10000},
	{id = "Sample of Monster Blood", chance = 10000, maxCount = 5}
}

monster.attacks = {
	{name ="combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 100, minDamage = -100, maxDamage = -200, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 15, minDamage = -390, maxDamage = -480, type = COMBAT_FIREDAMAGE, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 14, minDamage = -390, maxDamage = -480, type = COMBAT_ENERGYDAMAGE, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 2000, chance = 12, minDamage = -300, maxDamage = -400, type = COMBAT_FIREDAMAGE, effect = CONST_ME_EXPLOSIONAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -490, maxDamage = -630, type = COMBAT_FIREDAMAGE, length = 4, spread = 3, effect = CONST_ME_HITBYFIRE, target = false}
}

monster.defenses = {
	defense = 40,
	armor = 82
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)