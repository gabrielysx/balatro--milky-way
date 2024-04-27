--- STEAMODDED HEADER
--- MOD_NAME: Milky Way
--- MOD_ID: MilkyWay
--- MOD_AUTHOR: [Gavri_el]
--- MOD_DESCRIPTION: Add new content to expand the planet card related mecchanics

----------------------------------------------
------------MOD CODE -------------------------
function SMODS.INIT.MilkyWay()
    local mod_id = "MilkyWay"
    local rota_mod = SMODS.findModByID(mod_id)

    --SMODS.Sprite:new("c_alchemy_undiscovered", rota_mod.path, "c_alchemy_undiscovered.png", 71, 95, "asset_atli"):register();

    local planet_io_def = {
        name = "IO",
        text = {
            "Level up every",
            "hand that contains",
            "a {C:attention}Flush"
        }
    }
    local planet_io = SMODS.C.planet:new(planet_io_def.name, --name
    planet_io_def.name, --slug
    {hand_type = 'Flush'}, --config
    {x = 0,y = 0}, --position (default 0,0)
    5, --cost
    1, --cost multiplier
    "Hand Upgrade" --effect
)
end