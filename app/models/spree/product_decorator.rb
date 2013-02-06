Spree::Product.class_eval do
  def allow_backorders?
    has_variants? ? variants.any?(&:allow_backorders?) : master.allow_backorders?
  end

  def allow_backorders
    allow_backorders?
  end

  def allow_backorders=(value)
    raise 'cannot set allow_backorders of product with variants' if has_variants? && Spree::Config[:track_inventory_levels]
    master.allow_backorders = value
  end
  
  def on_sale?
    has_stock? || (Spree::Config[:allow_backorders] && allow_backorders?)
  end
end
