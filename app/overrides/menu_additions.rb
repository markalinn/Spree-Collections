Deface::Override.new(:virtual_path => "spree/layouts/admin", 
                     :name => "collections_tab", 
                     :insert_bottom => "[data-hook='admin_tabs']", 
                     :partial => "spree/admin/shared/collections_tab")

#Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
#                     :name => "collections_menu", 
#                     :insert_bottom => "#main-nav-bar[data-hook]", 
#                     :partial => "spree/shared/collections_menu")
