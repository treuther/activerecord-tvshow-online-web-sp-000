class Show < ActiveRecord::Base

#return the highest value in the ratings column. hint: if there is a minimum
#Active Record method, might there be a maximum method?
def highest_rating
Show.maximum(:rating)
end

end
