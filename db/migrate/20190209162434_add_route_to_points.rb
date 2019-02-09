class AddRouteToPoints < ActiveRecord::Migration[5.2]
  def change
    add_reference :points, :route, foreign_key: true
  end
end
