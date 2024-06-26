local utl = require "luci.util"
local uci = require "luci.model.uci".cursor()
local sys   = require "luci.sys"
local fs = require "nixio.fs" 

local lock = luci.model.uci.cursor():get("custom", "menu", "full")  

m = Map("texting", translate("Random Texting"), translate("Send random message to number at random times"))

m.on_after_save = function(self)
	luci.sys.call("/usr/lib/fullmenu/text-setup.sh &")
end

if lock == "1" then
	s = m:section(TypedSection, "setting", "Global Settings")
	s.anonymous = true

	s:option(Flag, "enabled", translate("Enabled : "))

	sdhour = s:option(ListValue, "start", translate("Starting Time :"))
	sdhour.rmempty = true
	sdhour:value("0", "12:00 AM")
	sdhour:value("1", "12:15 AM")
	sdhour:value("2", "12:30 AM")
	sdhour:value("3", "12:45 AM")
	sdhour:value("4", "01:00 AM")
	sdhour:value("5", "01:15 AM")
	sdhour:value("6", "01:30 AM")
	sdhour:value("7", "01:45 AM")
	sdhour:value("8", "02:00 AM")
	sdhour:value("9", "02:15 AM")
	sdhour:value("10", "02:30 AM")
	sdhour:value("11", "02:45 AM")
	sdhour:value("12", "03:00 AM")
	sdhour:value("13", "03:15 AM")
	sdhour:value("14", "03:30 AM")
	sdhour:value("15", "03:45 AM")
	sdhour:value("16", "04:00 AM")
	sdhour:value("17", "04:15 AM")
	sdhour:value("18", "04:30 AM")
	sdhour:value("19", "04:45 AM")
	sdhour:value("20", "05:00 AM")
	sdhour:value("21", "05:15 AM")
	sdhour:value("22", "05:30 AM")
	sdhour:value("23", "05:45 AM")
	sdhour:value("24", "06:00 AM")
	sdhour:value("25", "06:15 AM")
	sdhour:value("26", "06:30 AM")
	sdhour:value("27", "06:45 AM")
	sdhour:value("28", "07:00 AM")
	sdhour:value("29", "07:15 AM")
	sdhour:value("30", "07:30 AM")
	sdhour:value("31", "07:45 AM")
	sdhour:value("32", "08:00 AM")
	sdhour:value("33", "08:15 AM")
	sdhour:value("34", "08:30 AM")
	sdhour:value("35", "08:45 AM")
	sdhour:value("36", "09:00 AM")
	sdhour:value("37", "09:15 AM")
	sdhour:value("38", "09:30 AM")
	sdhour:value("39", "09:45 AM")
	sdhour:value("40", "10:00 AM")
	sdhour:value("41", "10:15 AM")
	sdhour:value("42", "10:30 AM")
	sdhour:value("43", "10:45 AM")
	sdhour:value("44", "11:00 AM")
	sdhour:value("45", "11:15 AM")
	sdhour:value("46", "11:30 AM")
	sdhour:value("47", "11:45 AM")
	sdhour:value("48", "12:00 PM")
	sdhour:value("49", "12:15 PM")
	sdhour:value("50", "12:30 PM")
	sdhour:value("51", "12:45 PM")
	sdhour:value("52", "01:00 PM")
	sdhour:value("53", "01:15 PM")
	sdhour:value("54", "01:30 PM")
	sdhour:value("55", "01:45 PM")
	sdhour:value("56", "02:00 PM")
	sdhour:value("57", "02:15 PM")
	sdhour:value("58", "02:30 PM")
	sdhour:value("59", "02:45 PM")
	sdhour:value("60", "03:00 PM")
	sdhour:value("61", "03:15 PM")
	sdhour:value("62", "03:30 PM")
	sdhour:value("63", "03:45 PM")
	sdhour:value("64", "04:00 PM")
	sdhour:value("65", "04:15 PM")
	sdhour:value("66", "04:30 PM")
	sdhour:value("67", "04:45 PM")
	sdhour:value("68", "05:00 PM")
	sdhour:value("69", "05:15 PM")
	sdhour:value("70", "05:30 PM")
	sdhour:value("71", "05:45 PM")
	sdhour:value("72", "06:00 PM")
	sdhour:value("73", "06:15 PM")
	sdhour:value("74", "06:30 PM")
	sdhour:value("75", "06:45 PM")
	sdhour:value("76", "07:00 PM")
	sdhour:value("77", "07:15 PM")
	sdhour:value("78", "07:30 PM")
	sdhour:value("79", "07:45 PM")
	sdhour:value("80", "08:00 PM")
	sdhour:value("81", "08:15 PM")
	sdhour:value("82", "08:30 PM")
	sdhour:value("83", "08:45 PM")
	sdhour:value("84", "09:00 PM")
	sdhour:value("85", "09:15 PM")
	sdhour:value("86", "09:30 PM")
	sdhour:value("87", "09:45 PM")
	sdhour:value("88", "10:00 PM")
	sdhour:value("89", "10:15 PM")
	sdhour:value("90", "10:30 PM")
	sdhour:value("91", "10:45 PM")
	sdhour:value("92", "11:00 PM")
	sdhour:value("93", "11:15 PM")
	sdhour:value("94", "11:30 PM")
	sdhour:value("95", "11:45 PM")
	sdhour.default = "32"

	sdhour = s:option(ListValue, "end", translate("Ending Time :"))
	sdhour.rmempty = true
	sdhour:value("0", "12:00 AM")
	sdhour:value("1", "12:15 AM")
	sdhour:value("2", "12:30 AM")
	sdhour:value("3", "12:45 AM")
	sdhour:value("4", "01:00 AM")
	sdhour:value("5", "01:15 AM")
	sdhour:value("6", "01:30 AM")
	sdhour:value("7", "01:45 AM")
	sdhour:value("8", "02:00 AM")
	sdhour:value("9", "02:15 AM")
	sdhour:value("10", "02:30 AM")
	sdhour:value("11", "02:45 AM")
	sdhour:value("12", "03:00 AM")
	sdhour:value("13", "03:15 AM")
	sdhour:value("14", "03:30 AM")
	sdhour:value("15", "03:45 AM")
	sdhour:value("16", "04:00 AM")
	sdhour:value("17", "04:15 AM")
	sdhour:value("18", "04:30 AM")
	sdhour:value("19", "04:45 AM")
	sdhour:value("20", "05:00 AM")
	sdhour:value("21", "05:15 AM")
	sdhour:value("22", "05:30 AM")
	sdhour:value("23", "05:45 AM")
	sdhour:value("24", "06:00 AM")
	sdhour:value("25", "06:15 AM")
	sdhour:value("26", "06:30 AM")
	sdhour:value("27", "06:45 AM")
	sdhour:value("28", "07:00 AM")
	sdhour:value("29", "07:15 AM")
	sdhour:value("30", "07:30 AM")
	sdhour:value("31", "07:45 AM")
	sdhour:value("32", "08:00 AM")
	sdhour:value("33", "08:15 AM")
	sdhour:value("34", "08:30 AM")
	sdhour:value("35", "08:45 AM")
	sdhour:value("36", "09:00 AM")
	sdhour:value("37", "09:15 AM")
	sdhour:value("38", "09:30 AM")
	sdhour:value("39", "09:45 AM")
	sdhour:value("40", "10:00 AM")
	sdhour:value("41", "10:15 AM")
	sdhour:value("42", "10:30 AM")
	sdhour:value("43", "10:45 AM")
	sdhour:value("44", "11:00 AM")
	sdhour:value("45", "11:15 AM")
	sdhour:value("46", "11:30 AM")
	sdhour:value("47", "11:45 AM")
	sdhour:value("48", "12:00 PM")
	sdhour:value("49", "12:15 PM")
	sdhour:value("50", "12:30 PM")
	sdhour:value("51", "12:45 PM")
	sdhour:value("52", "01:00 PM")
	sdhour:value("53", "01:15 PM")
	sdhour:value("54", "01:30 PM")
	sdhour:value("55", "01:45 PM")
	sdhour:value("56", "02:00 PM")
	sdhour:value("57", "02:15 PM")
	sdhour:value("58", "02:30 PM")
	sdhour:value("59", "02:45 PM")
	sdhour:value("60", "03:00 PM")
	sdhour:value("61", "03:15 PM")
	sdhour:value("62", "03:30 PM")
	sdhour:value("63", "03:45 PM")
	sdhour:value("64", "04:00 PM")
	sdhour:value("65", "04:15 PM")
	sdhour:value("66", "04:30 PM")
	sdhour:value("67", "04:45 PM")
	sdhour:value("68", "05:00 PM")
	sdhour:value("69", "05:15 PM")
	sdhour:value("70", "05:30 PM")
	sdhour:value("71", "05:45 PM")
	sdhour:value("72", "06:00 PM")
	sdhour:value("73", "06:15 PM")
	sdhour:value("74", "06:30 PM")
	sdhour:value("75", "06:45 PM")
	sdhour:value("76", "07:00 PM")
	sdhour:value("77", "07:15 PM")
	sdhour:value("78", "07:30 PM")
	sdhour:value("79", "07:45 PM")
	sdhour:value("80", "08:00 PM")
	sdhour:value("81", "08:15 PM")
	sdhour:value("82", "08:30 PM")
	sdhour:value("83", "08:45 PM")
	sdhour:value("84", "09:00 PM")
	sdhour:value("85", "09:15 PM")
	sdhour:value("86", "09:30 PM")
	sdhour:value("87", "09:45 PM")
	sdhour:value("88", "10:00 PM")
	sdhour:value("89", "10:15 PM")
	sdhour:value("90", "10:30 PM")
	sdhour:value("91", "10:45 PM")
	sdhour:value("92", "11:00 PM")
	sdhour:value("93", "11:15 PM")
	sdhour:value("94", "11:30 PM")
	sdhour:value("95", "11:45 PM")
	sdhour.default = "68"

	sdhour = s:option(ListValue, "times", translate("Times per Day :"))
	sdhour.rmempty = true
	sdhour:value("2", "2")
	sdhour:value("4", "4")
	sdhour:value("6", "6")
	sdhour:value("8", "8")
	sdhour:value("10", "10")
	sdhour:value("12", "12")
	sdhour:value("14", "14")
	sdhour:value("16", "16")
	sdhour:value("18", "18")
	sdhour:value("20", "20")
	sdhour:value("22", "22")
	sdhour:value("24", "24")
	sdhour:value("26", "26")
	sdhour:value("28", "28")
	sdhour:value("30", "30")
	sdhour:value("32", "32")
	sdhour:value("34", "34")
	sdhour:value("36", "36")
	sdhour:value("38", "38")
	sdhour:value("40", "40")
	sdhour.default = "10"


	s = m:section(TypedSection, "numbers", "Phone Numbers")
	s.anonymous = true
	s.addremove = false

	o = s:option(DynamicList, "number", translate("List of Phone Numbers : "))

	s = m:section(TypedSection, "messages", "Messages")
	s.anonymous = true
	s.addremove = false

	o = s:option(DynamicList, "message", translate("List of Messages : "))

	m:section(SimpleSection).template = "fullmenu/textarea"
else
	ss = m:section(TypedSection, "", "Menu Locked")
	ss.anonymous = true
end
return m