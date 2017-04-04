class ChangeComments2 < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.references :user,  index: true
      t.references :quote, index: true
    end
  end
end
