class User < ApplicationRecord
    validates :name, :age, :email, presence: true
    validates :email, uniqueness: true

end
