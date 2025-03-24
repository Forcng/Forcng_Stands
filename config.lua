Config = {}

Config.System = 'ox' -- If you don't wont to use ox you will need to edit Line 38 in client side to match your way of displaying the menu.

-- Ped Locations & items they will give to your players.
Config.TheGuys = {
    {   
        PedModel = 'a_m_m_fatlatin_01',
        PedPosition = vec4(-450.6809, 5326.3120, 82.5347, 209.6075),
        Items = {
            { name = 'burger', item = 'burger', cost = 5, icon = 'fas fa-hotdog', details = 'Burger - $5' },
            { name = 'Soda', item = 'soda', cost = 3, icon = 'fas fa-glass', details = 'A Can of Soda - $3' },
        }
    },
    {   
        PedModel = 'a_m_m_fatlatin_01',
        PedPosition = vec4(-448.8704, 5321.7607, 82.1171, 148.0139),
        Items = {
            { name = 'Soda', item = 'soda', cost = 3, icon = 'fas fa-glass', details = 'A Can of Soda - $3' },
        }
    },
    -- Add More Here
    -- {   
    --     PedModel = 'a_m_m_fatlatin_01',
    --     PedPosition = vec4(-448.8704, 5321.7607, 83.1171, 148.0139),
    --     Items = {
    --         { name = 'Soda', item = 'soda', cost = 3, icon = 'fas fa-glass', details = 'A Can of Soda - $3' },
    --     }
    -- },
    -- {   
    --     PedModel = 'a_m_m_fatlatin_01',
    --     PedPosition = vec4(-448.8704, 5321.7607, 83.1171, 148.0139),
    --     Items = {
    --         { name = 'Soda', item = 'soda', cost = 3, icon = 'fas fa-glass', details = 'A Can of Soda - $3' },
    --     }
    -- },
    -- {   
    --     PedModel = 'a_m_m_fatlatin_01',
    --     PedPosition = vec4(-448.8704, 5321.7607, 83.1171, 148.0139),
    --     Items = {
    --         { name = 'Soda', item = 'soda', cost = 3, icon = 'fas fa-glass', details = 'A Can of Soda - $3' },
    --     }
    -- },
    -- {   
    --     PedModel = 'a_m_m_fatlatin_01',
    --     PedPosition = vec4(-448.8704, 5321.7607, 83.1171, 148.0139),
    --     Items = {
    --         { name = 'Soda', item = 'soda', cost = 3, icon = 'fas fa-glass', details = 'A Can of Soda - $3' },
    --     }
    -- },
}