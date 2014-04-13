class Riddle < ActiveRecord::Base

  belongs_to :category
  has_many :comments

  def category_title
    category.title
  end

end