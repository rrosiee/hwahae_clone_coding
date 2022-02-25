class CreateHwahaeComments < ActiveRecord::Migration[5.2]
  def change
    create_table :hwahae_comments do |t|
      t.date :date
      t.text :comment_text
      t.references :user, foreign_key: true
      t.references :hwahae_content, foreign_key: true

      t.timestamps
    end
  end
end
