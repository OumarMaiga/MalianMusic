class Mixtape < ApplicationRecord
  belongs_to :admin_user
  belongs_to :user
end
