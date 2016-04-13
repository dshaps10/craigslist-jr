class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :category, index: true
      t.string :title, :body, null: false
      t.timestamps
    end
  end
end
