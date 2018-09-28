class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.string :coding_system
      t.string :code
      t.text :description
      t.references :patient
      t.references :patient_condition
      t.references :admission
      
      t.timestamps
    end
  end
end
