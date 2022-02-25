class CreateRankPages < ActiveRecord::Migration[5.2]
  def change
    create_table :rank_pages do |t|

      t.timestamps
    end
  end
end
