ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :titre, :description, :contenu, :typ, :artiste_id, :mixtapes_id, :albums_id, :admin_users_id, images_attributes: [:id, :titre, :post]

    form do |f|
	    inputs 'Posté - Detail' do
	      input :titre
	      input :description
	      hidden_field :etat, :value => :false
	      input :contenu
	      hidden_field :admin_users_id, :value => current_admin_user.id
	      input :artiste_id, :label => 'Artiste', :as => :select, :collection => Artiste.all.map{|a| ["#{a.nom}", a.id]}
	      has_many :images, heading: 'Images' do |p|
	        p.file_field :titre, :multiple => true, name: "images[titre][]"
	      end
		  input :mixtapes_id, :label => 'Mixtape', :as => :select, :collection => Mixtape.all.map{|m| ["#{m.titre}", m.id]}
		  input :albums_id, :label => 'Album', :as => :select, :collection => Album.all.map{|a| ["#{a.titre}", a.id]}
	      select :typ, [['Selectionez...', nil], 'Musique', 'Video'], label: "Musique / Vidéo"
	    end
	    actions
	  end

	controller do
		after_create do	
		 	params[:images]['titre'].each do |a|
			 	@image = @post.images.create!(:titre => a)
		 	end
	 	end
	end
	  
	action_item :publish, only: :show do
		link_to "Publiez", publish_admin_post_path(post), method: :put if !post.etat
	end
	action_item :unpublish, only: :show do
		link_to "Masquez", unpublish_admin_post_path(post), method: :put if post.etat
	end

	member_action :publish, method: :put do
		post = Post.find(params[:id])
		post.update(etat: true)
		redirect_to admin_post_path(post)
	end
	member_action :unpublish, method: :put do
		post = Post.find(params[:id])
		post.update(etat: false)
		redirect_to admin_post_path(post)
	end

	scope :all
	scope :musique
	scope :video
end
