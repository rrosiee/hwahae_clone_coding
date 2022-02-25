class AddDetailToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :sex, :string
    add_column :users, :user_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
    add_column :users, :children_or_not, :string
    add_column :users, :age, :integer
    add_column :users, :skin_type, :string
    add_column :users, :worries_about_skin, :string
    add_column :users, :point, :integer
  end
end
