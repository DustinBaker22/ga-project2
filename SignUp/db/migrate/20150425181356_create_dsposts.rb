class CreateDsposts < ActiveRecord::Migration
  def change
    create_table :dsposts do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
