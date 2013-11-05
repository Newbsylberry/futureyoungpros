class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipCode
      t.string :contactFirstName
      t.string :contactLastName
      t.string :contactEmail
      t.integer :school_district_id

      t.timestamps
    end
  end
end
