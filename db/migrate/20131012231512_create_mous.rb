class CreateMous < ActiveRecord::Migration
  def change
    create_table :mous do |t|
      t.string :firstName
      t.string :lastName
      t.string :phone
      t.string :jobTitle
      t.string :duration
      t.date :availability
      t.string :considerations
      t.belongs_to :user

      t.timestamps
    end
  end
end
