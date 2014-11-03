class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.integer :school_id
      t.integer :size
      t.integer :business_id
      t.string :contact_email

      t.timestamps
    end
  end
end
