Config = {}

Config.Blip = {
    blipName = 'Fast Travel', -- Config.Blip.blipName
    blipSprite = 784218150, -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

Config.FastTravel = {
    {
        title = 'Fast Travel Annesburg',
        description = 'fasttravel cost $10',
        destination = vector3(2945.21, 1272.35, 44.0 -1),
        cost = 10,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel Armadillo',
        description = 'fasttravel cost $10',
        destination = vector3(-3729.09, -2603.55, -12.94 -1),
        cost = 10,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel Blackwater',
        description = 'fasttravel cost $20',
        destination = vector3(-830.92, -1343.15, 43.67 -1),
        cost = 20,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel Rhodes',
        description = 'fasttravel cost $10',
        destination = vector3(1218.83, -1298.03, 76.0 -1),
        cost = 10,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel Strawberry',
        description = 'fasttravel cost $10',
        destination = vector3(-1827.5, -437.65, 159.78 -1),
        cost = 10,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel SaintDenis',
        description = 'fasttravel cost $10',
        destination = vector3(2688.77, -1459.11, 46.0 -1),
        cost = 10,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel Tumbleweed',
        description = 'fasttravel cost $10',
        destination = vector3(-5501.2, -2954.32, -1.73 -1),
        cost = 10,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel Valentine',
        description = 'fasttravel cost $10',
        destination = vector3(-170.64, 628.58, 113.00 -1),
        cost = 10,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel Van-Horn',
        description = 'fasttravel cost $10',
        destination = vector3(2891.5263, 619.09191, 57.721347 -1),
        cost = 10,
        traveltime = 30000,
    },
    {
        title = 'Fast Travel Sisika',
        description = 'fasttravel cost $10',
        destination = vector3(3266.8964, -715.8876, 42.03495 -1),
        cost = 10,
        traveltime = 30000,
    },
}

-- prompt locations
Config.FastTravelLocations = {

    {name = 'Fast Travel', location = 'annesburg',  coords = vector3(2931.614, 1283.1109, 44.65287 -0.8),  showblip = true}, --annesburg
    {name = 'Fast Travel', location = 'armadillo',  coords = vector3(-3729.09, -2603.55, -12.94 -0.8),     showblip = true}, --armadillo
    {name = 'Fast Travel', location = 'blackwater', coords = vector3(-830.92, -1343.15, 43.67 -0.8),       showblip = true}, --blackwater
    {name = 'Fast Travel', location = 'rhodes',     coords = vector3(1231.26, -1299.74, 76.9 -0.8),        showblip = true}, --rhodes
    {name = 'Fast Travel', location = 'strawberry', coords = vector3(-1827.5, -437.65, 159.78 -0.8),       showblip = true}, --strawberry
    {name = 'Fast Travel', location = 'st-denis',   coords = vector3(2747.10, -1394.87, 46.18 -0.8),       showblip = true}, --st denis
    {name = 'Fast Travel', location = 'tumbleweed', coords = vector3(-5501.2, -2954.32, -1.73 -0.8),       showblip = true}, --tumbleweed
    {name = 'Fast Travel', location = 'valentine',  coords = vector3(-174.39, 633.33, 114.09 -0.8),        showblip = true}, --valentine
    {name = 'Fast Travel', location = 'van-horn',   coords = vector3(2893.37, 624.33, 57.72 -0.8),         showblip = true}, --van horn trading post
    {name = 'Fast Travel', location = 'sisika',     coords = vector3(3266.8964, -715.8876, 42.03495 -0.8), showblip = true}, --sisika prison

}