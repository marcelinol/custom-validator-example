class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :personal_site

      t.timestamps null: false
    end
  end
end
