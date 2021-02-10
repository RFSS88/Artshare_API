# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  image_url  :string           not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer          not null
#
# Indexes
#
#  index_artworks_on_artist_id            (artist_id)
#  index_artworks_on_image_url            (image_url) UNIQUE
#  index_artworks_on_title_and_artist_id  (title,artist_id) UNIQUE
#
class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :title, uniqueness: { scope: :artist_id }
       # message: 'An artist can not two works with the same name'}

    belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User
end
