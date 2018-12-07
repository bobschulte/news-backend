class Story < ApplicationRecord
    validates :url, uniqueness: true
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :comments
end
