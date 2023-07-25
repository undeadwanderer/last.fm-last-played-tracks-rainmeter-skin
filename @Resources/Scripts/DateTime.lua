--Original code by balala @ RainMeter forums, modified by undead_wanderer. https://forum.rainmeter.net/viewtopic.php?t=27547&sid=2c92245dc02acee691f38e567e150788&start=10#p143062 --
function Update()
	local UTC = os.date('!*t')
	local LocalTime = os.date('*t')
	local DaylightSavings = 0
	if LocalTime.isdst then
		DaylightSavings = 3600
	end
	local LocalOffset = os.time(LocalTime) - os.time(UTC) + DaylightSavings
    local j = SKIN:GetVariable'DisplayedTracks'
	for i = 1, j do
		local StrYear, StrMonth, StrDay, StrHour, StrMinute, StrSecond = SKIN:GetMeasure('MeasureYear'..i), SKIN:GetMeasure('MeasureMonth'..i), SKIN:GetMeasure('MeasureDay'..i), SKIN:GetMeasure('MeasureHour'..i), SKIN:GetMeasure('MeasureMinute'..i)
		Year, Month, Day, Hour, Minute, Second = StrYear:GetValue(), StrMonth:GetValue(), StrDay:GetValue(), StrHour:GetValue(), StrMinute:GetValue(), "0"
			if Year == 0 then
				SKIN:Bang('!SetVariable', 'Track1Date', '')
			else
				local Tim = (os.time({year=Year, month=Month, day=Day, hour=Hour, min=Minute, sec=Second}) + LocalOffset)
				local YearM, MonthM, DayM, HourM, MinuteM = os.date("%Y", Tim), os.date("%b", Tim), os.date("%d", Tim), os.date("%H", Tim), os.date("%M", Tim)
				SKIN:Bang('!SetVariable', 'Track'..i..'Date', MonthM..' '..DayM..', '..YearM..' '..HourM..':'..MinuteM)
			end
	end
end