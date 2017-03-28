class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.text :title
      t.references :syllabus, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
