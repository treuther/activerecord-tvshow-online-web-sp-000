class Show < ActiveRecord::Base

#return the highest value in the ratings column. hint: if there is a minimum
#Active Record method, might there be a maximum method?
def self.highest_rating
Show.maximum(:rating)
end

def self.most_popular_show
  Show.find_by(rating: self.highest_rating)
end

end
