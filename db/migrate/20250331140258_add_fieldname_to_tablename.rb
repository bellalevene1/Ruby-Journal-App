class AddFieldnameToTablename < ActiveRecord::Migration[7.2]
  def change
    add_column :entries, :link, :string
  end
end
