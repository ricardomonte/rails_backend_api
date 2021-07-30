class AddJobTitleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :job, :string
    add_column :users, :phone, :string
  end
end
