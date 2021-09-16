class Comment < ApplicationRecord
    validates :comments, :commenter_id, :artwork_id, presence: true

    belongs_to :commenter,
        primary_key: :id,
        foreign_key: :commenter_id,
        class_name: :User

    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork
end