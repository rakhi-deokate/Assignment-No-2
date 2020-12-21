class CreateAuthorTable1s < ActiveRecord::Migration[6.1]
  def change
    create_table :author_table1s do |t|
      t.integer :author_name
      t.integer :date_of_birth

      t.timestamps
    end
  end
end
