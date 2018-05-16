require "date"

this_day = Date.today
this_monday = this_day - (this_day.wday - 1)
this_monday_month = this_monday.month
this_monday_date = this_monday.day

puts <<~TEXT

#{this_monday_month}/#{this_monday_date}（月）
#{this_monday_month}/#{this_monday_date+1}（火）
#{this_monday_month}/#{this_monday_date+2}（水）
#{this_monday_month}/#{this_monday_date+3}（木）
#{this_monday_month}/#{this_monday_date+4}（金）

TEXT
