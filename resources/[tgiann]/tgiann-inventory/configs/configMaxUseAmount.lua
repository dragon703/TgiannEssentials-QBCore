-- Update video: https://youtu.be/DeWn_e7cZwE
-- Each time you use an item in config, the number of uses decreases by one. when the number is 0, the item is deleted.
-- example use: if you set the max usage of a repair kit to 5. after repairing the vehicle 5 times the repair kit will be deleted
-- Added items need to be set to 'uniq = true' in item list
config.maxUseAmount = {
    binoculars = {
        amount = 5,
        autoDecreases = true -- When set to true, the number decreases by one when you use the item.
        --if it is set to false, you need to trigger x event after using the item "TriggerServerEvent("tgiann-inventory:decreaseMaxUseAmount", itemSlot)"
    },
    testitemuniq = {
        amount = 5,
        autoDecreases = true -- When set to true, the number decreases by one when you use the item.
        --if it is set to false, you need to trigger x event after using the item "TriggerServerEvent("tgiann-inventory:decreaseMaxUseAmount", itemSlot)"
    },
}
