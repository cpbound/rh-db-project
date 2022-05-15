class CreateAssociations < ActiveRecord::Migration[6.1]
  def change
    create_table :associations do |t|
      t.string :description
      t.references :album, null: false, foreign_key: true
      t.references :track, null: false, foreign_key: true

      t.timestamps
    end
  end
end
