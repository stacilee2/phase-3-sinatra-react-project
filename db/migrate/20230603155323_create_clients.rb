class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :eligibility
      t.integer :minutes
      t.integer :location_id
      t.timestamps
    end
  end
end
