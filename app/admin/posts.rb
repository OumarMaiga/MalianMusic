ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :titre, :description, :contenu, :user_id, :mixtape_id, :album_id, :admin_user_id

    form do |f|
	    inputs 'Posté - Detail' do
	      input :titre
	      input :description
	      hidden_field :etat, :value => :true
	      input :contenu
	      hidden_field :admin_user_id, :value => current_admin_user.id
	      
	      has_many :images, heading: 'Images' do |p|
	        p.file_field :img, :multiple => true, name: "img[titre][]"
	      end
	      input :prix
	      select :duree, [['Prix par...', nil], 'jour', 'mois'], label: "Durée"
	    end
	    actions
      end
      
end
