class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.integer :rate
      t.string :author

      t.timestamps null: false
    end
  end
end
