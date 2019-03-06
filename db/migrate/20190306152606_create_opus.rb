class CreateOpus < ActiveRecord::Migration[5.2]
  def change
    create_table :opus do |t|
      t.string :title
      t.string :designer
      t.integer :year
      t.string :image_url

      t.timestamps
    end
  end
end
