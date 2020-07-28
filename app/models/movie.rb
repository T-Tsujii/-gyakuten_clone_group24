class Movie < ApplicationRecord
    validates :title, presence: true
    validates :url, presence: true
    
    belongs_to :user
    has_many :watched_movies

    def watched_movie_by?(user)
        watched_movies.where(user_id: user.id).exists?
    end
    
end
