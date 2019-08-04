json.extract! post, :id, :titre, :description, :contenu, :type, :telechagement, :vue, :like, :admin_users, :users, :album, :mixtape, :created_at, :updated_at
json.url post_url(post, format: :json)
