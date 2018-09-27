module HasGender
  extend ActiveSupport::Concern
  included do
    enum gender: %i(male female other)
  end
end