class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
