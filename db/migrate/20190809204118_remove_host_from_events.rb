class RemoveHostFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :host, :boolean
  end
end
