class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.datetime :published_at

      t.timestamps
    end
  end
end
