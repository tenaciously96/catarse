class CreateCategories < ActiveRecord::Migration

  def self.up
    
    create_table :categories do |t|
      t.text :name, :null => false
      t.timestamps
    end

    add_index :categories, :name
    
  end
  
  def self.down
    
    drop_table :categories
    
  end
  
end
