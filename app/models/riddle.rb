class Riddle < ActiveRecord::Base

  belongs_to :category

  def category_title
    category.title
  end

end