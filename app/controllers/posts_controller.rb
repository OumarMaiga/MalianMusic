class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:titre, :description, :contenu, :type, :telechagement, :vue, :like, :admin_users, :users, :album, :mixtape)
    end

end
