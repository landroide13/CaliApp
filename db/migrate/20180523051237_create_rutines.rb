class CreateRutines < ActiveRecord::Migration[5.1]
  def change
    create_table :rutines do |t|
      t.string :exercise
      t.integer :sets
      t.integer :reps

      t.timestamps
    end
  end
end
