local L = LibStub("AceLocale-3.0"):NewLocale("BeStride", "enUS", true)
if not L then return end

L["Debug"] = "Debug"
L["DebugInformation"] = "Debug Information"
L["Mounts"] = "Mounts"
L["GUI.Options"] = "Options"
L["GUI.Options.Open.GUI"] = "Open GUI"
L["GUI.BUTTON.SelectAll"] = "Select All"
L["GUI.BUTTON.ClearAll"] = "Clear All"
L["GUI.BUTTON.Filter"] = "Filter"
L["GUI.BUTTON.Copy"] = "Copy"
L["GUI.BUTTON.Delete"] = "Delete"
L["GUI.TAB.Mounts"] = "Mounts"
L["GUI.TAB.MountOptions"] = "Mount Options"
L["GUI.TAB.MountOptions.SpecialMounts"] = "Special Mounts"
L["GUI.TAB.MountOptions.RepairMounts"] = "Repair Mounts"
L["GUI.TAB.ClassOptions"] = "Class Options"
L["GUI.TAB.Keybinds"] = "Keybinds"
L["GUI.TAB.Profiles"] = "Profiles"
L["GUI.TAB.About"] = "About"
L["GUI.TAB.Mounts.Ground"] = "Ground"
L["GUI.TAB.Mounts.Flying"] = "Flying"
L["GUI.TAB.Mounts.Dragonriding"] = "Dragonriding"
L["GUI.TAB.Mounts.Repair"] = "Repair"
L["GUI.TAB.Mounts.Swimming"] = "Swimming"
L["GUI.TAB.Mounts.Passenger"] = "Passenger"
L["GUI.TAB.Mounts.Special"] = "Special"
L["GUI.About"] = "Version: " .. version .. "\n" .. "Author: " .. author .. "\n" .. "Discord: https://discord.gg/6bZf5PF" .. "\n" .. "Description: " .. "\n\n" .. "        " .. "BeStride originally started out as YayMounts by Cyrae on Windrunner US and Anzu on Kirin Tor US" .. "\n" .. "        " .. "Later, Anaximander from Burning Legion US found the project was neglected and had several bugs which needed to be resolved" .. "\n" .. "        " .. "as part of the bug resolution process, the addon was modernized to make the code cleaner to follow as well as more modular." .. "\n\n" .. "Special Thanks:" .. "\n\n" .. "        " .. "Mindlessgalaxy: For helping with the beta testing"
L["Bindings.Header"] = "BeStride"
L["Bindings.Regular"] = "Mount Button"
L["Bindings.DragonRiding"] = "Force DragonRiding Mount Button"
L["Bindings.Flight"] = "Force Old Flight Mount Button"
L["Bindings.Ground"] = "Force Ground Mount Button"
L["Bindings.Repair"] = "Force Repair Mount Button"
L["Bindings.Passenger"] = "Force Passenger Mount Button"
L["Zone.AzuremystIsle"] = "Azuremyst Isle"
L["Zone.BloodmystIsle"] = "Bloodmyst Isle"
L["Zone.Deadmines"] = "The Deadmines"
L["Zone.AQ"] = "Ahn'Qiraj"
L["Zone.Dalaran"] = "Dalaran"
L["Zone.Dalaran.SubZone.Underbelly"] = "The Underbelly"
L["Zone.Dalaran.SubZone.UnderbellyDescent"] = "The Underbelly Descent"
L["Zone.Dalaran.SubZone.CircleofWills"] = "Circle of Wills"
L["Zone.Dalaran.SubZone.BlackMarket"] = "The Black Market"
L["Zone.Dalaran.SubZone.KrasusLanding"] = "Krasus' Landing"
L["Zone.Icecrown"] = "Icecrown"
L["Zone.Oculus"] = "The Oculus"
L["Zone.StormPeaks"] = "The Storm Peaks"
L["Zone.SholazarBasin"] = "Sholazar Basin"
L["Zone.Wintergrasp"] = "Wintergrasp"
L["Zone.Vashjir"] = "Vashj'ir"
L["Zone.Vashjir.SubZone.KelptharForest"] = "Kelp'thar Forest"
L["Zone.Vashjir.SubZone.ShimmeringExpanse"] = "Shimmering Expanse"
L["Zone.Vashjir.SubZone.AbyssalDepths"] = "Abyssal Depths"
L["Zone.Vashjir.SubZone.DamplightChamber"] = "Damplight Chamber"
L["Zone.Vashjir.SubZone.Nespirah"] = "Nespirah"
L["Zone.Vashjir.SubZone.LGhorek"] = "L'Ghorek"
L["Zone.VortexPinnacle"] = "The Vortex Pinnacle"
L["Zone.Nagrand"] = "Nagrand"
L["Continent.Draenor"] = "Draenor"
L["Skills.Riding"] = "Riding"
L["Settings.EnableNew"] = "Automatically enable new mounts upon learning them"
L["Settings.EmptyRandom"] = "Choose random usable mount if no usable mounts selected"
L["Settings.RemountAfterDismount"] = "Remount Immediately After Dismounting"
L["Settings.NoDismountWhileFlying"] = "Don't dismount while flying. You'll have to land or (if enabled in Blizzard options) cast a spell"
L["Settings.UseFlyingMount"] = "Use Flying type mounts even in areas where you cannot fly"
L["Settings.ForceFlyingMount"] = "Force Flying type mounts even in areas where you cannot fly"
L["Settings.CopyTargetMount"] = "Attempt to use the same mount as your current target"
L["Settings.PrioritizePassenger"] = "Prioritize Passenger Mounts when in group"
L["Settings.PrioritizeDragonRiding"] = "Priotize DragonRiding mount when usable"
L["Settings.NoSwimming"] = "Never use underwater mounts even when swimming"
L["Settings.FlyingBroom"] = "Always use Flying Broom instead of a normal mount"
L["Settings.Telaari"] = "Always use the Telaari Talbuk or Frostwolf War Wolf while in Nagrand"
L["Settings.ForceRobot"] = "Always use Sky Golem or Mechanized Lumber Extractor when you have learned Herbalism"
L["Settings.Repair.Use"] = "Use a Repair mount if player owns one and if meets durability threshold"
L["Settings.Repair.Force"] = "Force a Repair mount if player owns one"
L["Settings.Repair.Durability"] = "Item Low Durability %"
L["Settings.Repair.GlobalDurability"] = "Global Low Durability %"
L["Settings.Repair.InventoryDurability"] = "Inventory Item Low Durability %"
L["Classes.DeathKnight"] = "Death Knight"
L["Classes.DemonHunter"] = "Demon Hunter"
L["Classes.Druid"] = "Druid"
L["Classes.Evoker"] = "Evoker"
L["Classes.Hunter"] = "Hunter"
L["Classes.Mage"] = "Mage"
L["Classes.Monk"] = "Monk"
L["Classes.Paladin"] = "Paladin"
L["Classes.Priest"] = "Priest"
L["Classes.Rogue"] = "Rogue"
L["Classes.Shaman"] = "Shaman"
L["Classes.Warlock"] = "Warlock"
L["Classes.Warrior"] = "Warrior"
L["Settings.Classes.DeathKnight.WraithWalk"] = "Death Knight: Wraith Walk"
L["Settings.Classes.DemonHunter.FelRush"] = "Demon Hunter: Use Fel Rush"
L["Settings.Classes.DemonHunter.Glide"] = "Demon Hunter: Use Gliding"
L["Settings.Classes.Druid.FlightForm"] = "Druid: Use Flight Form"
L["Settings.Classes.Druid.TravelToTravel"] = "Druid: When in combat, shift from Travel or Aquatic form directly back to that form"
L["Settings.Classes.Druid.FlightFormPriority"] = "Druid: Prioritize using Flight Form over a regular mount even when not moving"
L["Settings.Classes.Druid.MountedToFlightForm"] = "Druid: When on a flying mount and flying + moving, shift into Flight Form"
L["Settings.Classes.Hunter.AspectOfTheCheetah"] = "Hunter: Aspect of the Cheetah"
L["Settings.Classes.Mage.SlowFall"] = "Mage: Slowfall"
L["Settings.Classes.Mage.Blink"] = "Mage: Blink"
L["Settings.Classes.Mage.BlinkPriority"] = "Mage: Prioritize Blink before Slowfall (even when falling)"
L["Settings.Classes.Monk.Roll"] = "Monk: Roll"
L["Settings.Classes.Monk.ZenFlight"] = "Monk: Use Zen Flight while moving or falling"
L["Settings.Classes.Paladin.DivineSteed"] = "Paladin: Divine Steed"
L["Settings.Classes.Priest.Levitate"] = "Priest: Levitate"
L["Settings.Classes.Rogue.Sprint"] = "Rogue: Sprint"
L["Settings.Classes.Shaman.GhostWolf"] = "Shaman: Ghost Wolf"
L["Settings.Classes.Evoker.Hover"] = "Evoker: Hover"
L["Settings.Profiles.CreateNew"] = "Create new Profile:"
L["Settings.Profiles.Current"] = "Current Profile:"
L["Settings.Profiles.CopyFrom"] = "Copy settings from:"
L["Settings.Profiles.Delete"] = "Delete profile:"
L["Settings.Classes.Warlock.BurningRush"] = "Warlock: Burning Rush"
