class Video < ApplicationRecord
  resourcify

  belongs_to :user
end
