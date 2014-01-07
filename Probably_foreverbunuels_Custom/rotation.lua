-- Custom PvP Subtlety Routine, made for Foreverbunuel
-- Built by Imogen with Love
ProbablyEngine.rotation.register_custom(261, "foreverbunuel's Custom", {

  -- =======================================
  --          Built by Imogen
  -- =======================================
  -- Contact me on Skype @ Eclipsedrain
  -- Or on the Probably Engine Website
  -- =======================================
  -- I provide lifetime support for all
  -- custom rotations. Just poke me!
  -- =======================================

  -- Shadowstep and Gap Closer Prevention
  { "Pause", "player.buff(Stealth)" },
  { "Pause", "player.buff(Vanish)" },
  
  -- Vanish Handler
  { "Burst of Speed", "player.buff(Vanish)" },
  
  -- Target Manipulation
  { "Pause", "target.immune.all" },
  { "Pause", "target.state.incapacitate" },
  { "Pause", "target.state.disorient" },
  
  -- Mouseover w/ Mod
  { "Blind", "modifier.control", "mouseover" },
  
  -- Keybinds, General
  { "Vanish", "modifier.shift" },
  { "Pause", "modifier.control" },
  { "Smoke Bomb", "modifier.alt", "ground" },

  -- Interrupt a Fucker
  { "Kick", "target.casting" },
  { "Gouge", "target.casting", "toggle.as" },
  { "Kidney Shot", "target.casting", "player.combopoints <= 2", "toggle.as" },
  { "Deadly Throw", "target.casting", "player.combopoints >= 3" },
  
  -- Survival
  { "Evasion", "player.health <= 70" },
  { "Recuperate", "player.health <= 50", "player.combopoints >= 4", "!player.buff(Recuperate)" },
  { "Recuperate", "player.health <= 80", "player.combopoints <= 2", "!player.buff(Recuperate)" },
  { "Burst of Speed", "player.state.snare" },
  { "Burst of Speed", "player.state.root" },
  { "Feint", "player.spell.(Elusiveness).exists", "toggle.feint" },
  
  -- Tricks of the Trade
  { "Tricks of the Trade", "focus.exists", "focus" },
  
  -- Dismantle Handle
  { "Dismantle", "target.class(Warrior)" },
  { "Dismantle", "target.class(Paladin)" },
  { "Dismantle", "target.class(Hunter)" },
  { "Dismantle", "target.class(DeathKnight)" },
  { "Dismantle", "target.class(Rogue)" },
  { "Dismantle", "target.class(Monk)" },
  { "Dismantle", "target.class(Druid)" },
  
  -- Combat Readiness Handler
  { "Combat Readiness", "player.health <= 80", "target.class(Warrior)", "target.range <= 10" },
  { "Combat Readiness", "player.health <= 80", "target.class(Paladin)", "target.range <= 10" },
  { "Combat Readiness", "player.health <= 80", "target.class(DeathKnight)", "target.range <= 10" },
  { "Combat Readiness", "player.health <= 80", "target.class(Rogue)", "target.range <= 10" },
  { "Combat Readiness", "player.health <= 80", "target.class(Monk)", "target.range <= 10" },
  { "Combat Readiness", "player.health <= 80", "target.class(Druid)", "target.range <= 10" },
  
  -- Subterfuge Handler
  { "Cheap Shot", "player.buff(Subterfuge)", "!target.debuff(Cheap Shot" },
  { "Rupture", "target.debuff(Rupture).duration <= 2", "player.combopoints <= 4", "toggle.rup" },
  { "Eviscerate", "player.buff(Subterfuge)", "player.combopoints = 5" },
  { "Ambush", "player.buff(Subterfuge)" },
  
  -- Get Fucked Button
  { "Shadow Dance", "toggle.burst", "target.range <= 10" },
  { "Shadow Blades", "toggle.burst", "target.range <= 10" },
  { "Eviscerate", "player.buff(Shadow Dance", "toggle.burst", "player.combopoints = 5" },
  { "Ambush", "player.buff(Shadow Dance", "toggle.burst" },
  
  -- Buffing
  { "Slice and Dice", "!player.buff(Slice and Dice)", "player.combopoints <= 3", "toggle.buff" },
  { "Slice and Dice", "player.buff(Slice and Dice).duration <= 4", "player.combopoints <= 3", "toggle.buff" },
  
  -- Rotation
  { "Kidney Shot", "!modifier.last(Kidney Shot)", "!target.debuff(Kidney Shot)", "player.combopoints = 5" },
  { "Rupture", "target.debuff(Rupture).duration <= 2", "player.combopoints <= 4", "toggle.rup" },
  { "Eviscerate", "player.combopoints >= 5" },
  { "Backstab", "player.combopoints < 5" },
  
  -- Shuriken Handler
  { "Shuriken Toss", "target.range >= 10" },
  
  -- Cant Backstab? We have you covered
  { "Hemorrhage", "toggle.hem" },
  
},{
  
  -- Stealth Handling
  { "Stealth", "!player.buff(Stealth)" },
  { "Shadow Walk", "target.range <= 10" },
  
  -- Debuff Handling
  { "Cloak of Shadows", "player.state.dot", "toggle.buff" },
  
  -- Sapping
  { "Sap", "target.debuff(Sap).duration <= 2", "toggle.sap" },
  
  -- Health Handling
  { "Recuperate", "player.health <= 95", "player.combopoints <= 3", "toggle.buff" },
  
  -- BoS Always on Stealth
  { "Burst of Speed", "!target.exists", "!player.buff(Burst of Speed)" },
  
  -- Mouseover (Beta)
  { "Disarm Trap", "mouseover" },
  
  -- Keybinds
  { "Distract", "modifier.control", "ground" },
  { "Sap", "modifier.alt", "target" },
  
    -- function ()
    -- ProbablyEngine.toggle.create('as', 'Interface\\Icons\\ability_druid_predatoryinstincts', 'Enables use of Alternate Silences.', '')
  -- end
  
   -- function ()
    -- ProbablyEngine.toggle.create('rup', 'Interface\\Icons\\ability_druid_predatoryinstincts', 'Enables use of Rupture', '')
  -- end
  
   -- function ()
    -- ProbablyEngine.toggle.create('buff', 'Interface\\Icons\\ability_druid_predatoryinstincts', 'Enables use of various buffs.', '')
  -- end
  
   -- function ()
    -- ProbablyEngine.toggle.create('hem', 'Interface\\Icons\\ability_druid_predatoryinstincts', 'Enables use of Hemmorhage if we cannot do anything else.', '')
  -- end
  
   -- function ()
    -- ProbablyEngine.toggle.create('sap', 'Interface\\Icons\\ability_druid_predatoryinstincts', 'Enables use of Sap while stealthed.', '')
  -- end
  
  })