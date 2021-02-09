class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true
    #validates column username and that they must be present in order to save
    #an instance of User.

end
