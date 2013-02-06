class AddAllowBackordersToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :allow_backorders, :boolean, :default => true
  end
end
