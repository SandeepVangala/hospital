class AddOtherDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :text
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :integer
    add_column :users, :degree_from, :string
    add_column :users, :years_practice, :integer
  end
end
