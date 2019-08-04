ActiveAdmin.register Album do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :titre, :description, :admin_user_id, :user_id


end
