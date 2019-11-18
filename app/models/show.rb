class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    rating = self.highest_rating
    Show.where(rating: rating).take
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    rating = self.lowest_rating
    Show.where(rating: rating).take
  end

  def self.ratings_sum
  end

  def self.popular_shows
  end

  def self.shows_by_alphabetical_order
  end

end
