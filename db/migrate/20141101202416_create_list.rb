class CreateList < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :type
    end
  end
end
