class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.string :good_or_bad

      t.timestamps
    end
  end
end
