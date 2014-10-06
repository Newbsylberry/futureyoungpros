class CreateSchoolBusinesses < ActiveRecord::Migration
  def change
    create_table :school_businesses do |t|
      t.integer :school_id
      t.integer :business_id

      t.timestamps
    end
  end
end
