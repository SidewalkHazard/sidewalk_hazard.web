class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.decimal :lat
      t.decimal :long
      t.text :description
      t.text :why
      t.string :phone_id
      t.boolean :complete

      t.timestamps
    end
  end
end
