module HasFrequencyUnit
  extend ActiveSupport::Concern
  included do
    enum unit: %i(hr), _prefix: :frequency_unit
  end
end