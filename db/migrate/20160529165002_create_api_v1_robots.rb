class CreateApiV1Robots < ActiveRecord::Migration
  def change
    create_table :api_v1_robots do |t|
      t.string :name
      t.string :profession
      t.string :image

      t.timestamps null: false
    end
  end
end
