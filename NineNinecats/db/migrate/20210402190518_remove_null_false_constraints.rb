class RemoveNullFalseConstraints < ActiveRecord::Migration[5.2]
  def change
    change_column :cats, :color,       :string, null: true
    change_column :cats, :name,        :string, null: false
    change_column :cats, :sex,         :string, null: false, limit: 1
    change_column :cats, :description, :string, null: false
  end
end
