class CreateMedicationOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_orders do |t|
      t.string :name
      t.decimal :unit
      t.decimal :dosage
      t.integer :route
      t.references :patient

      t.timestamps
    end
  end
end
