// F3 - ACRE2 Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RADIO STRUCTURE

// Whether any radios should be assigned at all, to any units
// TRUE = Disable radios for all units
f_radios_settings_acre2_disableRadios = FALSE;

// Whether or not the frequencies should be left at default, and not split per side
// TRUE = Disable frequency seperation across sides
f_radios_settings_acre2_disableFrequencySplit = FALSE;


// Set a list of units that get a short wave
// if its nil, that means all units get a radio
// empty array means that noone gets
f_radios_settings_acre2_shortRange = nil;
// Set the list of units that get a long range
f_radios_settings_acre2_longRange = ["co", "dc", "m", "mmgg", "matg", "mtrg", "sn","vc", "pp", "eng", "engm", "uav", "div"];
// Unit types you want to give an extra long-range radio
// E.G: ["co", "m"] would give the CO and all medics an extra long-range radios
f_radios_settings_acre2_extraRadios = [""];


// Standard Short
f_radios_settings_acre2_standardSHRadio = "ACRE_PRC343";
// Standard LongRange
f_radios_settings_acre2_standardLRRadio = "ACRE_PRC148";
// Extra radio
f_radios_settings_acre2_extraRadio = "ACRE_PRC148";
// string id, displayname
f_radios_settings_acre2_languages = [["english","English"],["farsi","Farsi"],["greek","Greek"]];

// can add multiple
f_radios_settings_acre2_language_blufor = ["english"];
f_radios_settings_acre2_language_opfor = ["english"];
f_radios_settings_acre2_language_indfor = ["greek"];

// radio freq offset
f_radios_settings_acre2_offset_blufor = 0.0225;
f_radios_settings_acre2_offset_opfor = 0.0425;
f_radios_settings_acre2_offset_indfor = 0.0825;
// Correspond
f_radios_settings_acre2_groups_blufor = ["Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","India","Juliet","Kilo","Lima","Mike","November","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-ray","Yankee","Zulu"];
f_radios_settings_acre2_groups_opfor = ["Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","India","Juliet","Kilo","Lima","Mike","November","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-ray","Yankee","Zulu"];
f_radios_settings_acre2_groups_indfor = ["Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","India","Juliet","Kilo","Lima","Mike","November","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-ray","Yankee","Zulu"];


f_radios_setting_acre_override_blufor = [];
f_radios_setting_acre_override_opfor = [];
f_radios_setting_acre_override_indfor = [];

