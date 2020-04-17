class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :numeric_rating, inclusion: { in: [-1, 5]}

end

