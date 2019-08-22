class Show < ActiveRecord::Base

#return the highest value in the ratings column. hint: if there is a minimum
#Active Record method, might there be a maximum method?
  def self.highest_rating
  Show.maximum(:rating)
  end

  #this method should return the show with the highest rating. hint: use the
  #highest_rating method as a helper method.
  def self.most_popular_show
    Show.find_by(rating: self.highest_rating)
  end

  #returns the lowest value in the ratings column
  def self.lowest_rating
    Show.minimum(:rating)
  end

  #returns the lowest value in the ratings column
  def self.least_popular_show
    Show.find_by(rating: self.lowest_rating)
  end

  #returns the sum of all of the ratings
  def self.ratings_sum
    Show.sum(:rating)
  end

end
