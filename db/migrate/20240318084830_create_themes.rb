class CreateThemes < ActiveRecord::Migration[7.1]
  def change
    create_table :themes do |t|
      t.string :type, null: false
      t.jsonb :data, null: false, default: {}

      t.timestamps
    end
  end
end
