class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.text :description
      t.datetime :due
      t.references :project, index: true
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
