class RemoveNullFalseConstraintsAgain < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :color,       :string, null: true
    change_column :cats, :name,        :string, null: true
    change_column :cats, :sex,         :string, null: true, limit: 1
    change_column :cats, :description, :string, null: true
  end
end
