class CreateDiagnosticeProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnostic_procedures do |t|
      t.text :description
      t.datetime :moment
      t.references :patient

      t.timestamps
    end
  end
end
