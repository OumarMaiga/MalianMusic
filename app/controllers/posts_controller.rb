class PostsController < InheritedResources::Base
=begin   
  # POST /locations
  # POST /locations.json
  def create
    @post = Location.new(post_params)
    respond_to do |format|
      if @post.save
        params[:images]['titre'].each do |a|
        @image = @post.images.create!(:titre => a)
      end
      
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, post: @post }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end
  private

    def post_params
      params.require(:post).permit(:titre, :description, :contenu, :type, :telechagement, :vue, :like, :admin_users, :user, :album, :mixtape, images_attributes: [:id, :titre, :post])
    end
 =end
end
