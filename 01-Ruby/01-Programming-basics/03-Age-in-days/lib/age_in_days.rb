# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'

def age_in_days(day, month, year)
date_reformatee = Date.new(year,month,day)
delta = Date.today - date_reformatee
return delta.to_i

  #TODO: return the age expressed in days given the day, month, and year of birth
  # age_in_days(1, 1, 2014)
end
