class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :groups, :lessons do |t|
      # t.index [:group_id, :lesson_id]
      # t.index [:lesson_id, :group_id]
    end
  end
end
