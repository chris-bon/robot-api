class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :profession
      t.string :image

      t.timestamps null: false
    end
  end
end
