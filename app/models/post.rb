class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :delete_all
end
