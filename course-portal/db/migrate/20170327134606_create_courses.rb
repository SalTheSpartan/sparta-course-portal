class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.text :name
      t.text :duration

      t.timestamps
    end
  end
end
