config.stashes = {
    active = false,
    locations = {
        {
            coords = vec3(452.3, -991.4, 30.7),
            textUiLabel = 'Open personal locker',
            name = 'policelocker', -- uniq name
            label = 'Personal locker',
            slots = 70,
            weight = 70000,
            owner = true,                                     -- if  true, it creates a player-specific stash.
            jobs = { police = { 1, 2, 3, 4, 5, 6, 7, 8, 9 } } -- only 9 ranks for police job
        },
        {
            coords = vec3(301.3, -600.23, 43.28),
            textUiLabel = 'Open personal locker',
            name = 'emslocker', -- uniq name
            label = 'Personal Locker',
            slots = 70,
            weight = 70000,
            owner = true,
            jobs = { ambulance = true } -- all ranks for ambulance job
        },
        {
            coords = vec3(0.0, 0.0, 0.0),
            textUiLabel = 'Open test locker',
            name = 'testlocker', -- uniq name
            label = 'Personal Locker',
            slots = 70,
            weight = 70000,
            owner = false,
            jobs = { ambulance = true, police = { 1, 2, 3, 4, 5, 6, 7, 8, 9 } } -- all ranks for ambulance job, only 9 ranks for police job
        },
        {
            coords = vec3(443.6447, -975.7927, 30.6896),
            textUiLabel = 'Open Global Stash',
            name = 'globalstash', -- uniq name
            label = 'Global Stash',
            slots = 70,
            weight = 70000,
        },
    }
}
