class AddAuthorToQuotes < ActiveRecord::Migration[5.0]
  def change
    add_column :quotes, :user, :string
  end
end
