Deface::Override.new(
                      :name => "add allow_backorders field",
                      :virtual_path => "spree/admin/variants/_form",
                      :insert_after => "code[erb-loud]:contains('f.text_field :on_hand')",
                      :partial => "spree/admin/variants/allow_backorders_field"
                    )
