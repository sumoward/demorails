class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :username, :string, :limit => 100, :default=>"", :null=>false
      t.column :hashed_password, :string, :limit => 100, :default=>"", :null=>false
      t.column :first_name, :string, :limit => 100, :default=>"", :null=>false
      t.column :last_name, :string, :limit => 100, :default=>"", :null=>false
      t.column :email, :string, :limit => 100, :default=>"", :null=>false
      t.column :display_name, :string, :limit => 100, :default=>"", :null=>false
      t.column :user_level, :integer, :limit => 3, :default=>"", :null=>false
      
      
      
      
      
      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end
end
