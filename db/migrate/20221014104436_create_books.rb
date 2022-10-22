class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.date :published_at
      t.references :author, null: false, foreign_key: true
      # for experimentation in allowing a nullable foreign key
      # t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
