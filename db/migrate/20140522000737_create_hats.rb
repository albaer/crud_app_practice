class CreateHats < ActiveRecord::Migration
  def change
  	create_table :hats do |t|
  		t.string :name
  		t.string :description
  		t.integer :awesome
  		t.timestamps
  	end
  end
end
