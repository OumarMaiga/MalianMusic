class Post < ApplicationRecord
    has_many :images
    accepts_nested_attributes_for :images

    mount_uploader :contenu, ContenuUploader

    scope :musique, -> { where(typ: 'Musique') }
    scope :video, -> { where(typ: 'Video') }

end
