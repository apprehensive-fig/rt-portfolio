class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :img_url
      t.references :gallery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
