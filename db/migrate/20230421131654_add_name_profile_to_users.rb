class AddNameProfileToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile, :text
    add_column :users, :string, :avatar
  end
end
