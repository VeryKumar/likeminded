class User < ApplicationRecord
    # has_many :favorited_users, foreign_key: :favoriter_id, class_name: 'Favorite'
    # has_many :favoritees, through: :favorited_users
    # has_many :favoriting_users, foreign_key: :favoritee_id, class_name: 'Favorite'
    # has_many :favoriters, through: :favoriting_users

    has_many :favorites, foreign_key: :favoriter_id
    has_many :favorited_users, through: :favorites, source: :favoritee

    has_many :favorited_me, foreign_key: :favoritee_id, class_name: 'Favorite'
    has_many :users_who_favorited_me, through: :favorited_me, source: :favoriter


    has_secure_password
end