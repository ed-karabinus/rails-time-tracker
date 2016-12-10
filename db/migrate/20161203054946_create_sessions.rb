class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
