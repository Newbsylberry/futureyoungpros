class AddNotestoStudentInterest < ActiveRecord::Migration
  def change
    add_column :student_interests, :notes, :string
  end
end
