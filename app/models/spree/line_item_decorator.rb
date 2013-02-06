Spree::LineItem.class_eval do
  def sufficient_stock?
    return true if (Spree::Config[:allow_backorders] && variant.allow_backorders?)
    if new_record? || !order.completed?
      variant.on_hand >= quantity
    else
      variant.on_hand >= (quantity - self.changed_attributes['quantity'].to_i)
    end
  end
end
