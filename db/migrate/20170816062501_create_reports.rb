class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.date :entry_date
      t.integer :user_id
      t.text :report

      t.timestamps
    end
  end
end
