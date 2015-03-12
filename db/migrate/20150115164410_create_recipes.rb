class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :url
      t.string :caption
      t.string :name
      t.string :procedure

      t.timestamps
    end
  end
end
