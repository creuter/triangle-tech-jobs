class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :url
      t.string :description
      t.string :city

      t.timestamps
    end
  end
end
