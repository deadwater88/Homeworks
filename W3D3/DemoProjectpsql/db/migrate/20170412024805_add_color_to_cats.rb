class AddColorToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :demos, :color, :string
  end
end
