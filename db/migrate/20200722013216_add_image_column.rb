class AddImageColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :chairs, :image, :string
  end
end
