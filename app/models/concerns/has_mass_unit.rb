module HasMassUnit
  extend ActiveSupport::Concern
  included do
    enum unit: %i(mg), _prefix: :mass_unit
  end
end