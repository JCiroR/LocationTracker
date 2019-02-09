class RemoveUserFromPoints < ActiveRecord::Migration[5.2]
  def change
    remove_reference :points, :user, foreign_key: true
  end
end
