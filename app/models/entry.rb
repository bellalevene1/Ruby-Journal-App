class Entry < ApplicationRecord
    has_one_attached :image
    geocoded_by :link 
    after_validation :geocode, if: :will_save_change_to_link?
  end
  