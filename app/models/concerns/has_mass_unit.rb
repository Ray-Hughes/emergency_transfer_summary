module HasMassUnit
  extend ActiveSupport::Concern
  included do
    enum mass_unit: %i(mg)
  end
end