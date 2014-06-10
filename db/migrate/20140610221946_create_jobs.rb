class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :command
      t.text :payload
      t.text :description
      t.belongs_to :created_by, index: true

      t.timestamps
    end
  end
end
