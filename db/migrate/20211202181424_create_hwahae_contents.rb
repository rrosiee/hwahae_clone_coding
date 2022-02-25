class CreateHwahaeContents < ActiveRecord::Migration[5.2]
  def change
    create_table :hwahae_contents do |t|
      t.string :content_title
      t.text :content_content
      t.string :editor_name

      t.timestamps
    end
  end
end
