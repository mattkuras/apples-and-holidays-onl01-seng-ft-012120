require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
    holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
      holiday_supplies[:winter][:christmas] << "Balloons"
      holiday_supplies[:winter][:new_years] << "Balloons"

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, items|
    items << supply
  end
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
     holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].collect {|holiday, items| items}
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize! << ":"
    holiday.each do |holiday, supplies|
      supplies = supplies.join(", ")
      holiday = holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")<< ":"
      puts "  " + holiday + " " + supplies
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, items|
      if items.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end
  