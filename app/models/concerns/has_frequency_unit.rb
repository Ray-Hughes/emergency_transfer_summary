module HasFrequencyUnit
  extend ActiveSupport::Concern
  included do
    enum frequency_unit: %i(hour)
  end
end