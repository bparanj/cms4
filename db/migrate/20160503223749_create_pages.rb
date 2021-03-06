class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :content
      t.string :ancestry

      t.timestamps null: false
    end
    add_index :pages, :ancestry
  end
end
