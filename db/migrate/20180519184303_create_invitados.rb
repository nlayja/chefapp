class CreateInvitados < ActiveRecord::Migration[5.1]
  def change
    create_table :invitados do |t|
      t.integer :chef_id
      t.string :name
      t.string :class
      t.string :email

      t.timestamps
    end
  end
end
