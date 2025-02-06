class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      #dont have to add in id part rails automatically does it
      t.string "name" #generates column as string colume named name
      t.string "city"
      t.string "state"
      t.string "url"


      t.timestamps
    end
  end
end
