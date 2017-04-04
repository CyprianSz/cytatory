class ChangeComments < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.remove :quote_id
      t.remove :user_id
      t.remove :author
    end
  end
end
