class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :project_id, index: true
      t.string  :title
      t.text    :content
      t.boolean :publish, default: true
      t.string  :slug

      t.timestamps null: false
    end

    add_index :pages, :slug, unique: true
  end
end
