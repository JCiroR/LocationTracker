class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
