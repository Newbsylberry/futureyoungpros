class CreateStudentInterests < ActiveRecord::Migration
  def change
    create_table :student_interests do |t|
      t.string :firstName
      t.string :lastName
      t.integer :school_id
      t.integer :category_id

      t.timestamps
    end
  end
end
