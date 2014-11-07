class AddContactToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :contact_email, :string
  end
end
