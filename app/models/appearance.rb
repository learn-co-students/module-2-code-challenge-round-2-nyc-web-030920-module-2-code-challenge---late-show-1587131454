class Appearance < ApplicationRecord
    validates :rating, numericality: {greater_than_or_equal_to: 1}
    validates :rating, numericality: {less_than_or_equal_to: 5}
    validates :episode_id, uniqueness: {scope: :guest_id, message: "A guest can only appear on an episode once"}
    belongs_to :episode
    belongs_to :guest
end
