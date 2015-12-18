OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1667925190116529', '01af5c8e23c2d02b2e893f132baa24e2'
  
end
