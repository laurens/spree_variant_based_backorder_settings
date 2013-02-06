Spree::BaseHelper.class_eval do
  def variant_options_with_variant_backorder_settings(v, allow_back_orders = nil, include_style = true)
    allow_back_orders ||= (Spree::Config[:allow_backorders] && v.allow_back_orders?)
    variant_options_without_variant_backorder_settings(v, allow_back_orders, include_style)
  end
  
  alias_method_chain :variant_options, :variant_backorder_settings
end
