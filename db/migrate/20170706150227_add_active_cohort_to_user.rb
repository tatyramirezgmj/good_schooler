class AddActiveCohortToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :active, :boolean
    add_column :users, :cohort, :integer
  end
end
