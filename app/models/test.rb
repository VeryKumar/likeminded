class Test < ApplicationRecord
    belongs_to :group
    belongs_to :user
    has_many :questions
end