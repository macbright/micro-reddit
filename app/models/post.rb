class Post < ApplicationRecord
    validates :title, :body, presence: true
    validates :title, length: { minimum: 2 }

    belongs_to :user
    has_many :comments
end
