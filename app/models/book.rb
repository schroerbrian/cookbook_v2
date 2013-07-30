# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  cuisine    :string(255)
#  chef       :string(255)
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :title, :cuisine, :chef, :image, :recipe_ids, :comment_ids
  has_many :recipes
  has_many :comments

end
