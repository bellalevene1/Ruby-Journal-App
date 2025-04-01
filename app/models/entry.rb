class Entry < ApplicationRecord
    has_one_attached :image
    has_one_attached :audio
  end
  