# == Schema Information
#
# Table name: directors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    the_id = self.id
    matching_movies = Movie.where({ :director_id => self.id })
    films = matching_movies.order({ :year => :asc })
    return films
  end
end
