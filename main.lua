local emulator = nil

if vba then
    print("Loading VBA...")
    emulator = require("emulation.virtualboyadvanced")
elseif client then
    print("Loading BizHawk...")
    emulator = require("emulation.bizhawk")
end

local tbs = require("goldensun.tbs")
local tla = require("goldensun.tla")
tbs.emulator = emulator
tla.emulator = emulator

local game
if tbs.is_current_rom(tbs) then
    print("Loading TBS...")
    game = tbs
    tla = nil
elseif tla.is_current_rom(tla) then
    print("Loading TLA...")
    game = tla
    tbs = nil
end

while true do
    game.emulator:load_joypad(0)

    if not game:is_in_battle() then
        game:lock_zoom()
        game:ship_checks()
        game:teleport_ship()
        game:fast_travel()
        game:teleport_to_cursor()
    end

    game.emulator:frameadvance()
end
