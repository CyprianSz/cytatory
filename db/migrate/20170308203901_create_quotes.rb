class CreateQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :quotes do |t|
      t.text :sentence
      t.string :true_author
      t.string :fake_author
      t.string :user

      t.timestamps
    end
  end
end
