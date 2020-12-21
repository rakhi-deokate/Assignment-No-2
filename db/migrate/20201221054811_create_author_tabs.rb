class CreateAuthorTabs < ActiveRecord::Migration[6.1]
  def change
    create_table :author_tabs do |t|
      t.string :author_name
      t.integer :date_of_birth

      t.timestamps
    end
  end
end
