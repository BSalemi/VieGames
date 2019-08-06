class AddMaxNumEntrantsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :max_num_entrants, :integer
  end
end
