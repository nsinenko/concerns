class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :project, index: true
      t.text :content
      t.datetime :date

      t.timestamps
    end
  end
end
