Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '235239873256423', 'f1f02cce800a811172fd8d8165372fc3'
  provider :identity, :fields => "email", :model => AdminUser, :path_prefix => "admin"
end
