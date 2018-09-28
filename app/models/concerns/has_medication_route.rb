module HasMedicationRoute
  extend ActiveSupport::Concern
  included do
    enum route: %i(po im sc), _prefix: :medication_route
  end
end