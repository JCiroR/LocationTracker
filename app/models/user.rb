class User < ApplicationRecord
    has_many :routes, dependent: :destroy

    has_secure_password
    validates :user_name, presence: true,
    length: { minimum: 3 }
    validates :password, presence: true,
    length: { minimum: 5 }
end
