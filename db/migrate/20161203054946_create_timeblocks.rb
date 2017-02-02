class CreateTimeblocks < ActiveRecord::Migration
  def change
    create_table :timeblocks do |t|
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :description
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end
  end
end
