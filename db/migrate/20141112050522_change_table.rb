class ChangeTable < ActiveRecord::Migration
    def change
      change_table :items do |t|
        t.boolean :groceries
        t.boolean :home_improvement
        t.boolean :electronics
        t.boolean :clothes
    end
  end
end
