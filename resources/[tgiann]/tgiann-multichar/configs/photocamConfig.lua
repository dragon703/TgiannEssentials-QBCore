config.photoCam = {
    go = {
        pedCoord = vector4(-1007.0930, -486.5844, 39.9704, 120.0762),
        walkCoord = vector3(-1016.3293, -491.5453, 37.1109),
        camCoord = vector3(-1014.8283, -490.5078, 37.0799)
    },
    photoLocations = {
        {
            label = "Casino",
            coords = vector4(913.3811, 63.1370, 111.6612, 193.3213),
            camHeading = -20
        },
        {
            label = "Mazebank Arena",
            coords = vector4(-261.1570, -1889.7305, 27.7554, 319.6884),
            camHeading = -5
        },
        {
            label = "Grove St",
            coords = vector4(95.8445, -1931.6230, 20.8037, 48.0086),
            camHeading = 0
        },
        {
            label = "Waterfall",
            coords = vector4(-1605.8530, 2105.6890, 68.1063, 308.4874),
            camHeading = 20
        },
    }
}

config.photoCamMenu = {
    {
        type = "location",
        label = "locations",
        desc = "locationsdesc",
        data = config.photoCam.photoLocations
    },
    {
        type = "filter",
        label = "filters",
        desc = "filterdesc",
        data = {
            {
                label = 'No Filter',
                source = false,
            },
            {
                label = 'Black and white',
                source = 'spectator4',
            },
            {
                label = 'Security Camera',
                source = 'CAMERA_secuirity_FUZZ',
            },
            {
                label = 'Brightness',
                source = 'BeastLaunch02',
            },
            {
                label = 'Focus on center',
                source = 'AirRaceBoost01',
            },
            {
                label = 'Green effect',
                source = 'AirRaceBoost02',
            },
            {
                label = 'Sharpness',
                source = 'AmbientPUSH',
            },
            {
                label = 'Old effect purple',
                source = 'ArenaEMP',
            },
            {
                label = 'Old effect lightblue',
                source = 'ArenaEMP_Blend',
            },
            {
                label = 'Old effect brown',
                source = 'BeastIntro01',
            },
            {
                label = 'Old effect red',
                source = 'BeastIntro02',
            },
            {
                label = 'Beach regular',
                source = 'ArenaWheelPurple01',
            },
            {
                label = 'Beach highlight',
                source = 'ArenaWheelPurple02',
            },
            {
                label = 'Depth',
                source = 'Bank_HLWD',
            },
            {
                label = '420',
                source = 'Barry1_Stoned',
            },
            {
                label = 'Too much drugs',
                source = 'BikerFilter',
            },
            {
                label = 'Border Shadow',
                source = 'BikerForm01',
            },
            {
                label = 'Mexican movie light',
                source = 'Bikers',
            },
            {
                label = 'Mexican movie dark',
                source = 'BikersSPLASH',
            },
            {
                label = 'Green with lines',
                source = 'blackNwhite',
            },
            {
                label = 'Dirty Blur',
                source = 'BlackOut',
            },
            {
                label = 'Pink heat',
                source = 'BleepYellow02',
            },
            {
                label = 'Bloom heavy',
                source = 'Bloom',
            },
            {
                label = 'Bloom Midium',
                source = 'BloomLight',
            },
            {
                label = 'Bloom Light',
                source = 'BloomMid',
            },
            {
                label = 'Old TV',
                source = 'Broken_camera_fuzz',
            },
            {
                label = 'Hot blue',
                source = 'BulletTimeDark',
            },
            {
                label = 'Hot Red',
                source = 'casino_managersoffice',
            },
            {
                label = 'Day and night',
                source = 'casino_mainfloor',
            },
            {
                label = 'Old Camera',
                source = 'CHOP',
            },
            {
                label = 'Cinema light',
                source = 'cinema',
            },
            {
                label = 'Cinema heavy',
                source = 'cinema_001',
            },
            {
                label = 'Black and white bloom',
                source = 'cops',
            },
            {
                label = 'Light purple touch',
                source = 'CopsSPLASH',
            },
            {
                label = 'Light orange touch',
                source = 'CrossLine01',
            },
            {
                label = 'Clean background',
                source = 'CS1_railwayB_tunnel',
            },
            {
                label = 'Remove all light',
                source = 'downtown_FIB_cascades_opt',
            },
            {
                label = 'Red shadow',
                source = 'damage',
            },
            {
                label = 'Yellow highlight',
                source = 'DrivingFocusLight',
            },
            {
                label = 'Green highlight',
                source = 'DrivingFocusDark',
            },
            {
                label = 'Blue drip',
                source = 'DRUG_2_drive',
            },
            {
                label = 'Purple drip',
                source = 'drug_drive_blend02',
            },
            {
                label = 'Under water',
                source = 'Drug_deadman',
            },
            {
                label = 'Pure green',
                source = 'drug_flying_02',
            },
            {
                label = 'Pure pink',
                source = 'drug_flying_base',
            },
            {
                label = 'More lights',
                source = 'eatra_bouncelight_beach',
            },
            {
                label = 'Contrast',
                source = 'epsilion',
            },
            {
                label = 'Contrast 2',
                source = 'exile1_plane',
            },
            {
                label = 'Bright lights',
                source = 'Facebook_NEW',
            },
            {
                label = 'Bright lights 2',
                source = 'facebook_serveroom',
            },
            {
                label = 'Bright lights 3',
                source = 'FIB_5',
            },
            {
                label = 'Bright lights 4',
                source = 'FIB_6',
            },
            {
                label = 'Bright lights 5',
                source = 'FIB_A',
            },
            {
                label = 'Bright lights 6',
                source = 'FIB_B',
            },
            {
                label = 'Shadow with blur',
                source = 'fp_vig_blue',
            },
            {
                label = 'Green shadow with blur',
                source = 'fp_vig_green',
            },
            {
                label = 'Stripped to green',
                source = 'FranklinColorCode',
            },
            {
                label = 'Stripped to green 2',
                source = 'FranklinColorCodeBasic',
            },
            {
                label = 'Stripped to green 3',
                source = 'FranklinColorCodeBright',
            },
            {
                label = 'Cold colors',
                source = 'glasses_brown',
            },
            {
                label = 'Blue Shade',
                source = 'glasses_Darkblue',
            },
            {
                label = 'Green Shade',
                source = 'glasses_green',
            },
            {
                label = 'Orange shade',
                source = 'glasses_orange',
            },
            {
                label = 'Pink shade',
                source = 'glasses_pink',
            },
            {
                label = 'Purple shade',
                source = 'glasses_purple',
            },
            {
                label = 'Red shade',
                source = 'glasses_red',
            },
            {
                label = 'Orange and green',
                source = 'glasses_yellow',
            },
            {
                label = 'Fog',
                source = 'graveyard_shootout',
            },
            {
                label = 'Unclear shadow',
                source = 'helicamfirst',
            },
            {
                label = 'Red and blue',
                source = 'Hint_cam',
            },
            {
                label = 'Light blue',
                source = 'hud_def_colorgrade',
            },
            {
                label = 'Black and white 2',
                source = 'hud_def_desat_cold_kill',
            },
            {
                label = 'Black and white 3',
                source = 'hud_def_desatcrunch',
            },
            {
                label = 'Beach soft',
                source = 'InchPurple01',
            },
            {
                label = 'White and light blue',
                source = 'int_Hospital2_DM',
            },
            {
                label = 'Low black and blue',
                source = 'introblue',
            },
            {
                label = 'Purple blur',
                source = 'Kifflom',
            },
            {
                label = 'Fade background',
                source = 'michealspliff',
            },
            {
                label = 'Smug',
                source = 'MP_Arena_theme_atlantis',
            },
            {
                label = 'Yellow sky',
                source = 'MP_Arena_theme_evening',
            },
            {
                label = 'Spotlight blue',
                source = 'mp_lad_day',
            },
            {
                label = 'Spotlight red',
                source = 'mp_lad_judgment',
            },
            {
                label = 'Smog 2',
                source = 'nervousRON_fog',
            },
            {
                label = 'Black and white 4',
                source = 'NG_deathfail_BW_base',
            },
            {
                label = 'Hot colors',
                source = 'NG_filmic10',
            },
            {
                label = 'Black and white 5',
                source = 'phone_cam7',
            },
            {
                label = 'Dark fog',
                source = 'SALTONSEA',
            },
            {
                label = 'Dark fog 2',
                source = 'WATER_cove',
            },
            {
                label = 'Under water',
                source = 'underwater_deep',
            },
            {
                label = 'Soft pink',
                source = 'TinyPink01',
            },
        }
    },
    {
        type = "animation",
        label = "animations",
        desc = "animationsdesc",
        data = {
            {
                label = "Clear animation",
                anim = false
            },
            {
                label = "Pose 1",
                anim = { "five@nyck", "five_clip" }
            },
            {
                label = "Middle Finger",
                anim = { "capper@nyck", "capper_clip" }
            },
            {
                label = "Show Dick",
                anim = { "pose@nyck", "pose_clip" }
            },
            {
                label = "Sit & Middle Finger 2",
                anim = { "pose2@nyck", "pose2_clip" }
            },
            {
                label = "Look Ground",
                anim = { "pose3@nyck", "pose3_clip" }
            },
            {
                label = "Pose 2",
                anim = { "mafiag@nyck", "mafiag_clip" }
            },
            {
                label = "Pose 2",
                anim = { "15idk@animation", "15idk_clip" }
            },
            {
                label = "Pose 3",
                anim = { "bkcr@animation", "bkcr_clip" }
            },
            {
                label = "Pose 4",
                anim = { "bhw@animation", "bhw_clip" }
            },
            {
                label = "Pose 5",
                anim = { "99mafia@animation", "99mafia_clip" }
            },
            {
                label = "Pose 6",
                anim = { "krank@animation", "krank_clip" }
            },
            {
                label = "Boss Wait",
                anim = {
                    "anim@heists@heist_corona@single_team", "single_team_loop_boss"
                }
            },
            {
                label = "Hooker Wait",
                anim = {
                    "amb@world_human_prostitute@hooker@base", "base"
                }
            },
            {
                label = "Bodyguard",
                anim = {
                    "anim@amb@casino@hangout@ped_male@stand@02b@base", "base"
                }
            },
            {
                label = "Pose 7",
                anim = { "walllean2@queensisters", "walllean2_clip" }
            },
            {
                label = "Pose 8",
                anim = { "posecustom@queensisters", "posecustom_clip" }
            },
            {
                label = "Pose 9",
                anim = { "hotpose@queensisters", "hotpose_clip" }
            },
            {
                label = "Pose 11",
                anim = { "sitdownonknees@queensisters", "sitdown_clip" }
            },
            {
                label = "Pose 12",
                anim = { "selfieleanpose@animation", "selfiepose_clip" }
            },
            {
                label = "Pose 13",
                anim = { "leanwallpose@animation", "leanwall_clip" }
            },
            {
                label = "Pose 14",
                anim = { "thinkerpose@animation", "thinker_clip" }
            },
            {
                label = "Pose 15",
                anim = { "fuckyouselfie@animation", "fuckyouselfie_clip" }
            },
            {
                label = "Pose 16",
                anim = { "waitingpose@animation", "waitingpose_clip" }
            },
            {
                label = "Pose 17",
                anim = { "littlequeen2queensisters", "littlequeen2_clip" }
            },
            {
                label = "Pose 18",
                anim = { "nikyminaj@queensisters", "nikyminaj_clip" }
            },
            {
                label = "Pose 19",
                anim = { "sunpose1@queensisters", "sunpose1_clip" }
            },
            {
                label = "Pose 20",
                anim = { "customposesit2@queensisters", "posesit_clip" }
            },
        }
    }

}
