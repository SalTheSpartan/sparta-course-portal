class CreateSyllabuses < ActiveRecord::Migration[5.0]
  def change
    create_table :syllabuses do |t|
      t.text :title
      t.text :duration

      t.timestamps
    end
  end
end
