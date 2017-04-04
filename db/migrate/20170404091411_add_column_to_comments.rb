class AddColumnToComments < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.string :author
    end
  end
end
