class Image < ApplicationRecord

  # belongs_to :admin_user
  # belongs_to :user
  belongs_to :post
  # belongs_to :album
  # belongs_to :mixtape
  
  mount_uploader :titre, PhotoUploader
  
end
