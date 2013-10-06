class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :user_type
      t.belongs_to :program

      t.timestamps
    end
  end
end
