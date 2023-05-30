class DropColumnNameFromWelcomes < ActiveRecord::Migration[6.0]
  def change
    remove_column :welcomes, :content
  end
end
