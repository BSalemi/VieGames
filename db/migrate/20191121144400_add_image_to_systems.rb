class AddImageToSystems < ActiveRecord::Migration[5.2]
  def change
    add_column :systems, :image, :string
  end
end
