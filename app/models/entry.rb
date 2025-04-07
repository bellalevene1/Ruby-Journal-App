class Entry < ApplicationRecord
  has_one_attached :image

  # Geocode using the :link field (user-entered location)
  geocoded_by :link

  # Validations
  validate :geocode_and_validate_location
  validates :image, presence: { message: "must be uploaded" }

  # Custom location validation
  def geocode_and_validate_location
    result = Geocoder.search(link).first

    Rails.logger.debug "Geocoder result for '#{link}': #{result&.data.inspect}"

    if result.nil? || !valid_nominatim_type?(result)
      errors.add(:link, "is not a valid location")
    else
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end

  def valid_nominatim_type?(result)
    allowed_types = %w[
      city town village hamlet suburb
      state region country county
      province municipality administrative
    ]

    allowed_types.include?(result.data["type"])
  end
end






