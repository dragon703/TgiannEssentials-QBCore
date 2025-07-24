-- Update video: https://youtu.be/pd9llsg_mAg
-- Items on this list cannot be used after a certain number of days after they are created!
-- Added items need to be set to 'uniq = true' in item list
config.removeDecayableItem = false                     --When true, if the item has zero durability when you use it, it deletes the item directly
config.removeDecayableItemWhenInventoryCreated = false --When true, if the item has zero durability when inventory data created in the script, it deletes the item directly
config.decayableItems = {
    --[[
		key: item name
		value: second
	]]
    tosti = 172800,
    kurkakola = 30,
}
