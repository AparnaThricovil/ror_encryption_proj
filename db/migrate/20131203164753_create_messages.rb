class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :userid
      t.string :publickey
      t.text :message

      t.timestamps
    end
  end
end
