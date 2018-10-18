class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :description
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
