class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.string :stripe_curtomer_id
      t.belongs_to :user
      t.belongs_to :event
      t.timestamps
    end
  end
end
