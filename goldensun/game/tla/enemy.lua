local enemy = {}

local Enemy = require("goldensun.game.enemy").new {
    character_data = require("goldensun.memory.game.tla.enemy.characterdata"),
    -- output from building names from memory
    enemy_names = {
        "Venus Djinni", "Venus Djinni", "Venus Djinni", "Venus Djinni",
        "Venus Djinni", "Venus Djinni", "Venus Djinni", "Venus Djinni",
        "Venus Djinni", "Venus Djinni", "Venus Djinni", "Venus Djinni",
        "Venus Djinni", "Venus Djinni", "Mercury Djinni", "Mercury Djinni",
        "Mercury Djinni", "Mercury Djinni", "Mercury Djinni", "Mercury Djinni",
        "Mercury Djinni", "Mercury Djinni", "Mercury Djinni", "Mercury Djinni",
        "Mercury Djinni", "Mercury Djinni", "Mercury Djinni", "Mercury Djinni",
        "Mercury Djinni", "Mars Djinni", "Mars Djinni", "Mars Djinni",
        "Mars Djinni", "Mars Djinni", "Mars Djinni", "Mars Djinni",
        "Mars Djinni", "Mars Djinni", "Mars Djinni", "Mars Djinni",
        "Mars Djinni", "Mars Djinni", "Mars Djinni", "Jupiter Djinni",
        "Jupiter Djinni", "Jupiter Djinni", "Jupiter Djinni", "Jupiter Djinni",
        "Jupiter Djinni", "Jupiter Djinni", "Jupiter Djinni", "Jupiter Djinni",
        "Jupiter Djinni", "Jupiter Djinni", "Jupiter Djinni", "Jupiter Djinni",
        "Jupiter Djinni", "Jupiter Djinni", "?", "Ruffian", "Ruffian 2",
        "Ruffian 3", "Punch Ant", "Flash Ant", "Numb Ant", "Chestbeater",
        "Wild Gorilla", "Crazy Gorilla", "King Scorpion", "Devil Scorpion",
        "Sand Scorpion", "Briggs", "Sea Fighter", "Champa 2", "Champa 3",
        "Cuttle", "Calamar", "Man o' War", "Aqua Jelly", "Aqua Hydra", "Hydra",
        "Pyrodra", "Serpent", "Serpent", "Serpent", "Serpent", "Serpent",
        "Serpent 6", "Serpent 7", "Avimander", "Macetail", "Bombander",
        "Poseidon", "Poseidon", "Poseidon 3", "Moapa", "Moapa", "Moapa",
        "Knight", "Knight", "Knight 3", "Agatio", "Agatio", "Agatio", "Karst",
        "Karst", "Karst", "?", "Wild Wolf", "Dire Wolf", "White Wolf",
        "Angle Worm", "Fire Worm", "Chimera Worm", "Mini-Goblin", "Alec Goblin",
        "Baboon Goblin", "Momonga", "Squirrelfang", "Momangler", "Kobold",
        "Wargold", "Kobold King", "Mad Plant", "Mad Plant", "Mad Plant",
        "Mad Plant", "Mad Plant", "Emu", "Talon Runner", "Winged Runner",
        "Mummy", "Foul Mummy", "Grave Wight", "Wyvern Chick", "Pteranodon",
        "Winged Lizard", "Wolfkin Cub", "Wolfkin", "Skinwalker", "Dino",
        "Dinox", "Dinosaurus", "Assassin", "Slayer", "Dark Murder", "Doomsayer",
        "Lich", "Bane Wight", "Pixie", "Faery", "Weird Nypmh", "Wood Walker",
        "Elder Wood", "Estre Wood", "Star Magician", "Dark Wizard",
        "Evil Shaman", "Urchin Beast", "Needle Egg", "Sea Hedgehog",
        "Conch Shell", "Spiral Shell", "Poison Shell", "Merman", "Gillman",
        "Gillman Lord", "Sea Dragon", "Turtle Dragon", "Ocean Dragon",
        "Seabird", "Seafowl", "Great Seagull", "Roc", "Raptor", "Fell Raptor",
        "Wyvern", "Sky Dragon", "Winged Dragon", "Phoenix", "Fire Bird",
        "Wonder Bird", "Blue Dragon", "Cruel Dragon", "Dragon", "Flame Dragon",
        "Flame Dragon", "Fire Dragon", "Minotaurus", "Minos Warrior",
        "Minos Knight", "Gressil", "Little Death", "Mini-Death", "Red Demon",
        "Lesser Demon", "Mad Demon", "Aka Manah", "Druj", "Aeshma", "Valukar",
        "Valukar", "Valukar", "Living Armor", "Puppet Warrior", "Estre Baron",
        "Ghost Army", "Soul Army", "Spirit Army", "Dullahan", "Dullahan",
        "Dullahan", "Sentinel", "Sentinel", "Sentinel", "Vermin", "Vermin",
        "Mad Vermin", "Bat", "Bat", "Rabid Bat", "Giant Bat", "Wild Mushroom",
        "Wild Mushroom", "Death Cap", "Slime", "Slime", "Ooze", "Slime Beast",
        "Ghost", "Ghost Mage", "Horned Ghost", "Lich", "Zombie", "Undead",
        "Wight", "Bandit", "Thief", "Brigand", "Skeleton", "Bone Fighter",
        "Skull Warrior", "Will Head", "Death Head", "Willowisp", "Rat",
        "Armored Rat", "Plated Rat", "Rat Soldier", "Rat Fighter",
        "Rat Warrior", "Drone Bee", "Fighter Bee", "Warrior Bee", "Troll",
        "Cave Troll", "Brutal Troll", "Spider", "Tarantula", "Recluse", "Gnome",
        "Gnome Mage", "Gnome Wizard", "Ghoul", "Fiendish Ghoul",
        "Cannibal Ghoul", "Mauler", "Ravager", "Grisly", "Harpy", "Virago",
        "Harridan", "Siren", "Succubus", "Nightmare", "Mole", "Mad Mole",
        "Mole Mage", "Dirge", "Foul Dirge", "Vile Dirge", "Ape", "Killer Ape",
        "Dirty Ape", "Grub", "Worm", "Acid Maggot", "Orc", "Orc Captain",
        "Orc Lord", "Salamander", "Earth Lizard", "Thunder Lizard", "Manticore",
        "Magicore", "Manticore King", "Kobold", "Goblin", "Hobgoblin",
        "Gargoyle", "Clay Gargoyle", "Ice Gargoyle", "Gryphon", "Wild Gryphon",
        "Wise Gryphon", "Golem", "Earth Golem", "Grand Golem", "Dread Hound",
        "Cerberus", "Fenrir", "Stone Soldier", "Boulder Beast", "Raging Rock",
        "Chimera", "Chimera Mage", "Grand Chimera", "Amaze", "Amaze", "Creeper",
        "Spirit", "Lizard Man", "Lizard Fighter", "Lizard King", "Ant Lion",
        "Roach", "Doodle Bug", "Toadonpa", "Poison Toad", "Devil Frog",
        "Living Statue", "Hydros Statue", "Azart", "Azart", "Satrage",
        "Satrage", "Navampa", "Navampa", "Tret", "Kraken", "Tornado Lizard",
        "Storm Lizard", "Tempest Lizard", "Mystery Man", "Saturos", "Saturos",
        "Mystery Woman", "Menardi", "Fusion Dragon", "Deadbeard", "Mimic",
        "Mimic", "Mimic", "Mimic", "Mimic", "Mimic", "Mimic", "Mimic", "Mimic",
        "Zombie", "Doom Dragon", "Doom Dragon", "Doom Dragon", "Doom Dragon",
        "Doom Dragon", "Doom Dragon", "Doom Dragon", "Doom Dragon",
        "Doom Dragon", "Refresh Ball", "Thunder Ball", "Anger Ball",
        "Guardian Ball", "Azart", "Satrage", "Navampa", "Bandit", "Thief"
    }
}

function enemy.new(o)
    local self = o or {}
    setmetatable(self, {__index = Enemy})
    self.__index = self
    return self
end

return enemy
