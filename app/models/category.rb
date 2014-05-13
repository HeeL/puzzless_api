class Category < ActiveRecord::Base

  has_many :riddles

  def count_riddles
    riddles.count
  end

end