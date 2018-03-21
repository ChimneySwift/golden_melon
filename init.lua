-- Golden melon
minetest.register_craftitem(":farming:golden_melon", {
    description = "Golden Melon",
    inventory_image = "golden_melon_slice.png",
    on_use = function(itemstack, user, pointed_thing)
        minetest.do_item_eat(2, "", itemstack, user, pointed_thing)
        user:set_breath(user:get_breath() + 5)
        return itemstack
    end,
})

-- Compatability
minetest.register_alias("farming_plus:golden_melon", "farming:golden_melon")

-- Craft
minetest.register_craft({
    output = "farming:golden_melon 8",
    recipe = {
        {"farming:melon_slice", "farming:melon_slice", "farming:melon_slice"},
        {"farming:melon_slice", "default:gold_ingot",  "farming:melon_slice"},
        {"farming:melon_slice", "farming:melon_slice", "farming:melon_slice"},
    }
})