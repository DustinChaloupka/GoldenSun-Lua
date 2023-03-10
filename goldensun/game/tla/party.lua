local party = {}

local Party = require("goldensun.game.party").new {
    order = require("goldensun.memory.game.tla.party.order")
}

function Party:new_player(id)
    return require("goldensun.game.tla.player").new({id = id})
end

setmetatable(party, {__index = Party})

return party
