class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.string :grade
      t.text :phone
      t.string :website
      t.references :county, foreign_key: true

      t.timestamps
    end
  end
end
