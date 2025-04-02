class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, etc.
  # Temporarily disabled to allow Lighthouse audit
  # allow_browser versions: :modern
end

