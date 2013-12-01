class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :mou_id
      t.integer :student_interest_id
      t.datetime :hostDate

      t.timestamps
    end
  end
end
