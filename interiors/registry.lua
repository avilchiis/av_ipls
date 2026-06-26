-- Loaded via ox_lib require, cached after first load

local Registry = {}

-- After Hours
Registry["nightclubs"] = require "interiors.dlc_afterhours.nightclubs"

-- Bikers
Registry["clubhouse1"] = require "interiors.dlc_bikers.clubhouse1"
Registry["clubhouse2"] = require "interiors.dlc_bikers.clubhouse2"
Registry["cocaine"] = require "interiors.dlc_bikers.cocaine"
Registry["counterfeit_cash"] = require "interiors.dlc_bikers.counterfeit_cash"
Registry["document_forgery"] = require "interiors.dlc_bikers.document_forgery"
Registry["meth"] = require "interiors.dlc_bikers.meth"
Registry["weed"] = require "interiors.dlc_bikers.weed"

-- Cayo Perico
Registry["cayoperico_base"] = require "interiors.dlc_cayoperico.base"
Registry["nightclub"] = require "interiors.dlc_cayoperico.nightclub"
Registry["submarine"] = require "interiors.dlc_cayoperico.submarine"

-- Executives & Other Criminals
Registry["executive_apartment1"] = require "interiors.dlc_executive.apartment1"
Registry["executive_apartment2"] = require "interiors.dlc_executive.apartment2"
Registry["executive_apartment3"] = require "interiors.dlc_executive.apartment3"

-- Finance & Felony
Registry["office1"] = require "interiors.dlc_finance.office1"
Registry["office2"] = require "interiors.dlc_finance.office2"
Registry["office3"] = require "interiors.dlc_finance.office3"
Registry["office4"] = require "interiors.dlc_finance.office4"

-- GTA Online
Registry["apartment_hi_1"] = require "interiors.gta_online.apartment_hi_1"
Registry["apartment_hi_2"] = require "interiors.gta_online.apartment_hi_2"
Registry["house_hi_1"] = require "interiors.gta_online.house_hi_1"
Registry["house_hi_2"] = require "interiors.gta_online.house_hi_2"
Registry["house_hi_3"] = require "interiors.gta_online.house_hi_3"
Registry["house_hi_4"] = require "interiors.gta_online.house_hi_4"
Registry["house_hi_5"] = require "interiors.gta_online.house_hi_5"
Registry["house_hi_6"] = require "interiors.gta_online.house_hi_6"
Registry["house_hi_7"] = require "interiors.gta_online.house_hi_7"
Registry["house_hi_8"] = require "interiors.gta_online.house_hi_8"
Registry["house_low_1"] = require "interiors.gta_online.house_low_1"
Registry["house_mid_1"] = require "interiors.gta_online.house_mid_1"

-- GTA Online Updates
Registry["simeonfix"] = require "interiors.gta_mpsum2.simeonfix"
Registry["mpsum2_vehicle_warehouse"] = require "interiors.gta_mpsum2.vehicle_warehouse"
Registry["warehouse"] = require "interiors.gta_mpsum2.warehouse"

-- GTA V Base Game
Registry["bahama"] = require "interiors.gtav.bahama"
Registry["gtav_base"] = require "interiors.gtav.base"
Registry["floyd"] = require "interiors.gtav.floyd"
Registry["franklin"] = require "interiors.gtav.franklin"
Registry["franklin_aunt"] = require "interiors.gtav.franklin_aunt"
Registry["graffitis"] = require "interiors.gtav.graffitis"
Registry["lester_factory"] = require "interiors.gtav.lester_factory"
Registry["michael"] = require "interiors.gtav.michael"
Registry["north_yankton"] = require "interiors.gtav.north_yankton"
Registry["pillbox_hospital"] = require "interiors.gtav.pillbox_hospital"
Registry["red_carpet"] = require "interiors.gtav.red_carpet"
Registry["simeon"] = require "interiors.gtav.simeon"
Registry["stripclub"] = require "interiors.gtav.stripclub"
Registry["trevors_trailer"] = require "interiors.gtav.trevors_trailer"
Registry["ufo"] = require "interiors.gtav.ufo"
Registry["zancudo_gates"] = require "interiors.gtav.zancudo_gates"

-- Gunrunning
Registry["bunkers"] = require "interiors.dlc_gunrunning.bunkers"
Registry["gunrunning_yacht"] = require "interiors.dlc_gunrunning.yacht"

-- Heists
Registry["heists_carrier"] = require "interiors.dlc_heists.carrier"
Registry["heists_yacht"] = require "interiors.dlc_heists.yacht"

-- Import/Export
Registry["garage1"] = require "interiors.dlc_import.garage1"
Registry["garage2"] = require "interiors.dlc_import.garage2"
Registry["garage3"] = require "interiors.dlc_import.garage3"
Registry["garage4"] = require "interiors.dlc_import.garage4"
Registry["import_vehicle_warehouse"] = require "interiors.dlc_import.vehicle_warehouse"

-- Los Santos Drug Wars
Registry["drugwars_base"] = require "interiors.dlc_drugwars.base"
Registry["freakshop"] = require "interiors.dlc_drugwars.freakshop"
Registry["drugwars_garage"] = require "interiors.dlc_drugwars.garage"
Registry["drugwars_lab"] = require "interiors.dlc_drugwars.lab"
Registry["traincrash"] = require "interiors.dlc_drugwars.traincrash"

-- Los Santos Tuners
Registry["tuner_garage"] = require "interiors.dlc_tuner.garage"
Registry["meetup"] = require "interiors.dlc_tuner.meetup"

-- Mercenaries
Registry["club"] = require "interiors.dlc_mercenaries.club"
Registry["fixes"] = require "interiors.dlc_mercenaries.fixes"
Registry["mercenaries_lab"] = require "interiors.dlc_mercenaries.lab"

-- Smuggler's Run
Registry["hangar"] = require "interiors.dlc_smuggler.hangar"

-- The Chop Shop
Registry["chopshop_base"] = require "interiors.dlc_chopshop.base"
Registry["bounties_base"] = require "interiors.dlc_bounties.base"
Registry["cargoship"] = require "interiors.dlc_chopshop.cargoship"
Registry["bounties_carrier"] = require "interiors.dlc_bounties.carrier"
Registry["cartel_garage"] = require "interiors.dlc_chopshop.cartel_garage"
Registry["lifeguard"] = require "interiors.dlc_chopshop.lifeguard"
Registry["bounties_office"] = require "interiors.dlc_bounties.office"
Registry["salvage"] = require "interiors.dlc_chopshop.salvage"

-- The Contract
Registry["airstrip"] = require "interiors.dlc_agents.airstrip"
Registry["agents_base"] = require "interiors.dlc_agents.base"
Registry["billboards"] = require "interiors.dlc_security.billboards"
Registry["factory"] = require "interiors.dlc_agents.factory"
Registry["security_garage"] = require "interiors.dlc_security.garage"
Registry["hangar_door"] = require "interiors.dlc_agents.hangar_door"
Registry["musicrooftop"] = require "interiors.dlc_security.musicrooftop"
Registry["agents_office"] = require "interiors.dlc_agents.office"
Registry["security_office1"] = require "interiors.dlc_security.office1"
Registry["security_office2"] = require "interiors.dlc_security.office2"
Registry["security_office3"] = require "interiors.dlc_security.office3"
Registry["security_office4"] = require "interiors.dlc_security.office4"
Registry["studio"] = require "interiors.dlc_security.studio"

-- The Criminal Enterprises
Registry["money_base"] = require "interiors.dlc_money.base"
Registry["carwash"] = require "interiors.dlc_money.carwash"
Registry["construction"] = require "interiors.dlc_money.construction"
Registry["money_office"] = require "interiors.dlc_money.office"

-- The Diamond Casino
Registry["arcade"] = require "interiors.dlc_casino.arcade"
Registry["arcade_basement"] = require "interiors.dlc_casino.arcade_basement"
Registry["casino"] = require "interiors.dlc_casino.casino"
Registry["penthouse"] = require "interiors.dlc_casino.penthouse"

-- The Doomsday Heist
Registry["facility"] = require "interiors.dlc_doomsday.facility"

-- The High Life
Registry["highlife_apartment1"] = require "interiors.dlc_high_life.apartment1"
Registry["highlife_apartment2"] = require "interiors.dlc_high_life.apartment2"
Registry["highlife_apartment3"] = require "interiors.dlc_high_life.apartment3"
Registry["apartment4"] = require "interiors.dlc_high_life.apartment4"
Registry["apartment5"] = require "interiors.dlc_high_life.apartment5"
Registry["apartment6"] = require "interiors.dlc_high_life.apartment6"

-- The Last Dose / Mansions
Registry["mansions_base"] = require "interiors.dlc_mansions.base"
Registry["mansion1"] = require "interiors.dlc_mansions.mansion1"
Registry["mansion2"] = require "interiors.dlc_mansions.mansion2"
Registry["mansion3"] = require "interiors.dlc_mansions.mansion3"
Registry["mansion_basement1"] = require "interiors.dlc_mansions.mansion_basement1"
Registry["mansion_basement2"] = require "interiors.dlc_mansions.mansion_basement2"
Registry["mansion_basement3"] = require "interiors.dlc_mansions.mansion_basement3"

return Registry