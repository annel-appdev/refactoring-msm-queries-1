# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord

  def movie
    my_id = self.movie_id

    movie = Movie.where({ :id => my_id}).at(0)

    return movie
    end

  def actor
    a_id = self.actor_id
   matching_actors = Actor.where({:id => a_id})

  actor = matching_actors.at(0)
  return actor
  end

end
