class Story < ApplicationRecord
    has_many :comments
    belongs_to :library
end
