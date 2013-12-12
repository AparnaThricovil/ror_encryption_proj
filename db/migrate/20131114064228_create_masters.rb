class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :publickey
      t.string :privatekey

      t.timestamps
    end
  end
end
