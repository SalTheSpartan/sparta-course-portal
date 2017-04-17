class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :name
      t.date :start_date
      t.date :end_date
      t.text :size
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
