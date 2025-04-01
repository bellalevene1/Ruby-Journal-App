class Entry < ApplicationRecord
    has_one_attached :image
    has_one_attached :audio
    geocoded_by :link # or use :location if that’s your field
    after_validation :geocode, if: :will_save_change_to_link?
  end
  