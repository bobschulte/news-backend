class Story < ApplicationRecord
    validates :url, uniqueness: true
    has_many :comments
end
