class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lon, precision: 10, scale: 6
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
