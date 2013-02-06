Deface::Override.new(
                      :name => "add allow_backorders field",
                      :virtual_path => "spree/admin/products/_form",
                      :insert_before => "#shipping_specs",
                      :partial => "spree/admin/products/allow_backorders_field"
                    )
