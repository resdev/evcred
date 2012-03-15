class CreateEvclients < ActiveRecord::Migration
  def change
    create_table :evclients do |t|
      t.string :clientname
      t.string :email
      t.string :version
      t.text :userid
      t.text :pwd
      t.text :url
      t.date :datechanged

      t.timestamps
    end
  end
end
