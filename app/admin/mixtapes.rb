ActiveAdmin.register Mixtape do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

    permit_params :titre, :description, :admin_user_id, :artiste_id

    form do |f|
        input :titre
        input :description
        hidden_field :admin_user_id, :value => current_admin_user.id
        input :artiste_id, :label => 'Artiste', :as => :select, :collection => Artiste.all.map{|a| ["#{a.nom}", a.id]}
        has_many :images, heading: 'Images' do |p|
	        p.file_field :titre, name: "images[titre][]"
        end
        actions
    end

    controller do
		after_create do	
		 	params[:images]['titre'].each do |a|
			 	@image = @mixtape.images.create!(:titre => a)
		 	end
         end
         after_update do
            params[:images]['titre'].each do |a|
                @image = @mixtape.images.create!(:titre => a)
            end
         end
	end

end
