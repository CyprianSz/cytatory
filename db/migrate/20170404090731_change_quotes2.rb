class ChangeQuotes2 < ActiveRecord::Migration[5.0]
  def change
    change_table :quotes do |t|
      t.references :user, index: true
    end
  end
end
