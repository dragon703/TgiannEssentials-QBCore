config.showLastLocation = true
config.lastLocationIcon = "lastLocation.svg"

config.spawnProtection = {
    active = false, -- if true, the player is automatically spawned in the last position if no time has elapsed since the player last exited the game when the player re-entered the game by the value of second
    second = 7200  -- 1 Hour = 3600
}

config.spawnAnimations = { -- dict, anim, time
    { "amb@world_human_strip_watch_stand@male_a@idle_a", "idle_a",      5000 },
    { "anim@mp_player_intcelebrationmale@salute",        "salute",      2500 },
    { "amb@world_human_cheering@female_d",               "base",        5000 },
    { "anim@mp_player_intcelebrationfemale@face_palm",   "face_palm",   5000 },
    { "mini@hookers_sp",                                 "idle_reject", 3000 },
    { "anim@mp_player_intcelebrationfemale@air_synth",   "air_synth",   5000 }
}

config.spawnLocations = {
    {
        label = "MRPD",
        desc = "Start your duty at the heart of law enforcement. Serve and protect the community from here.",
        icon = "police.svg",
        coords = vector4(418.5129, -991.1199, 29.3319, 30.0) -- MRPD
    },
    {
        label = "Job Center",
        desc = "Begin your career journey here. Find various employment opportunities and shape your future.",
        icon = "jobcenter.svg",
        coords = vector4(-268.1920, -958.0051, 31.2231, 208.5288) -- Job Center
    },
    {
        label = "Motel",
        desc = "egin your journey at this humble abode. A place to rest and plan your next move.",
        icon = "motel.svg",
        coords = vector4(310.8172, -231.3041, 54.0121, 158.2920) -- Motel
    },
    {
        label = "Hospital",
        desc = "Start your day at the heart of healthcare. Provide care and support to those in need.",
        icon = "hospital.svg",
        coords = vector4(293.0662, -601.9202, 43.3020, 67.7234) -- Hospital
    },
    {
        label = "Delperro Pier",
        desc = "Begin your adventure by the sea. Enjoy the ocean breeze and explore the coastal attractions.",
        icon = "fish.svg",
        coords = vector4(-1790.6482, -1187.9971, 13.0183, 60.1450) -- Pier
    }
}
