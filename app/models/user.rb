class User < ApplicationRecord
    has_many :favorited_users, foreign_key: :favoriter_id, class_name: 'Favorite'
    has_many :favoritees, through: :favorited_users
    has_many :favoriting_users, foreign_key: :favoritee_id, class_name: 'Favorite'
    has_many :favoriters, through: :favoriting_users
end