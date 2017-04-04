class ChangeQuotes < ActiveRecord::Migration[5.0]
  def change
    change_table :quotes do |t|
      t.remove :user_id
    end
  end
end
