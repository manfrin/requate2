class CreateNotifiers < ActiveRecord::Migration
  def change
    create_table :notifiers do |t|
      t.string :email
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
