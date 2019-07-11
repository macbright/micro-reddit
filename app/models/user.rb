class User < ApplicationRecord
    validates :name,:email, presence: true 
    validates :name, length: { minimum: 2 }

    validates :email, uniqueness: true 

    has_many :posts
    has_many :comments
end
