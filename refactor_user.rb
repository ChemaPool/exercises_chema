def self.create_from_hash(hash, user = nil)
  return unless user && Setting.get('auth_third_party_auto_link_at_inital_login')
  return user = user_find(hash) if hash['info'] && hash['info']['email'].present?
  return user = user_create(hash) unless user

  if hash['info'].present? && hash['info']['image'].present?
    avatar_photo(hash)
    return user_image(user) unless avatar && user.image == avatar.store_hash
  end

  authorization_create
end

def user_find(hash)
  User.find_by(email: hash['info']['email'].downcase)
end

def user_create(hash)
  User.create_from_hash!(hash)
end

def avatar_photo(hash)
  Avatar.add(
    object:        'User',
    o_id:          user.id,
    url:           hash['info']['image'],
    source:        hash['provider'],
    deletable:     true,
    updated_by_id: user.id,
    created_by_id: user.id,
  )
end

def user_image(user)
  user.image = avatar.store_hash
  user.save
end

def authorization_create
  Authorization.create!(
    user:     user,
    uid:      hash['uid'],
    username: hash['info']['nickname'] hash['info']['username'] hash['info']['name'] hash['info']['email'] hash['username'],
    provider: hash['provider'],
    token:    hash['credentials']['token'],
    secret:   hash['credentials']['secret']
  )
end
