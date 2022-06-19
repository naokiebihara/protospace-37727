class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user_id
      t.references :prototype_id
      t.text :text
      t.timestamps
    end
  end
end
