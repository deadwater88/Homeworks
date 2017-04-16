class CreateDemoTable < ActiveRecord::Migration[5.0]
  def change
    create_table :demos do |t|
      t.string :name, null: false
      t.datetime
    end

  end
end
