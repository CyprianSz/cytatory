class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.integer  :user_id
      t.text     :sentence
      t.string   :true_author
      t.string   :fake_author
      t.boolean  :accepted
      t.string   :source
      t.integer  :points

      t.timestamps
    end
  end
end