class Group < ApplicationRecord
    has_many :tests
    has_many :users, through: :tests 
end
