class CreateMenus < ActiveRecord::Migration
  def up
    create_table :menus do |t|
      t.string :name

      t.timestamps
    end
    
    add_index :menus, :name
  end
  
  def down
    drop_table :menus
  end
end
