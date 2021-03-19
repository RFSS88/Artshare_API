# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_username  (username) UNIQUE



class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    #validates column username and that they must be present in order to save
    #an instance of User.

    has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork

    has_many :artworks_viewing,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

    # has_many :shared_artworks,
    # through: :artworks_viewing,
end
