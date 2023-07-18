class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :trainer, foreign_key: { to_table: :users }
      t.references :client, foreign_key: { to_table: :users }
      # Add any other appointment attributes

      t.timestamps
    end
  end
end
