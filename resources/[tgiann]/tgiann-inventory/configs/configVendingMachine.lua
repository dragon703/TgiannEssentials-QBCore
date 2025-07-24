config.vendingMachine = {
    active = true,
    machines = {
        {
            objects = {
                'prop_vend_soda_01',
                'prop_vend_soda_02',
            },
            items = {
                { name = 'kurkakola',    price = 4, amount = 50 },
                { name = 'water_bottle', price = 4, amount = 50 },
            }
        },
        {
            objects = {
                'prop_vend_water_01',
                'prop_vend_coffe_01',
            },
            items = {
                { name = 'kurkakola',    price = 7, amount = 50 },
                { name = 'water_bottle', price = 2, amount = 50 },
            }
        },
    }
}
