Spree::Variant.class_eval do
  attr_accessible :allow_backorders

  def available?
    Spree::Config[:track_inventory_levels] ? ((Spree::Config[:allow_backorders] && allow_backorders?) || in_stock?) : true
  end
end
