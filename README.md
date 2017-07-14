# rails-module-awesome_nested_set
> Rails awesome_nested_set.


## step by step:
+ create migration:
```conf
rails g migration CreateCategories
```

```rb
class CreateCategories < ActiveRecord::Migration[5.1]
  
  def self.up
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id, :null => true, :index => true
      t.integer :lft, :null => false, :index => true
      t.integer :rgt, :null => false, :index => true

      # optional fields
      t.integer :depth, :null => false, :default => 0
      t.integer :children_count, :null => false, :default => 0
    end
  end

  def self.down
    drop_table :categories
  end
  
end

```

+ inital data:
```rb
science = Category.create!(:name => 'Science')
physics = Category.create!(:name => 'Physics')
physics.move_to_child_of(science)
gravity = Category.create!(:name => 'Gravity')
gravity.move_to_child_of(physics)
science.reload
```