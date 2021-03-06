class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :data
      t.binary :file
      t.string :data_type
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
