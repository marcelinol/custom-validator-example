class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :other_params
      t.string :site

      t.timestamps null: false
    end
  end
end
