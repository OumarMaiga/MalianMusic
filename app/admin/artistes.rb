ActiveAdmin.register Artiste do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

    permit_params :nom, :description, :date_naissance, :lieu_naissance, :telephone, :facebook, :instagram


end
