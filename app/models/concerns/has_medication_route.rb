module HasMedicationRoute
  extend ActiveSupport::Concern
  included do
    enum medication_route: %i(PO IM SC)
  end
end