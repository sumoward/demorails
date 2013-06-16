class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string, :limit => 100, :default=>"", :null=>false
         t.column :body, :text, :default=>"", :null=>false
         t.column :author, :string, :limit => 100, :default=>"", :null=>false
         t.column :category, :string, :limit => 100, :default=>"", :null=>false
         t.column :status, :string, :limit => 100, :default=>"", :null=>false
         t.column :created_at, :datetime
      t.timestamps
    end
  end
  
  def self.down
    drop_table :post
  end
  
end
