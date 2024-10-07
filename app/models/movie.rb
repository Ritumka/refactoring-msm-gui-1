# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  belongs_to :director
  has_many :characters
  has_many :actors, through: :characters, source: :actor


  # def director
  #   Director.where({ :id => self.director_id }).at(0)
  # end
  
end
