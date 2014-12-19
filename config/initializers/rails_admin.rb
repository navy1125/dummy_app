require 'dragonfly/rails/images'

RailsAdmin.config do |c|
  c.excluded_models = [RelTest]
  c.authenticate_with {}
  c.current_user_method { current_user }
  c.authorize_with :cancan
  c.audit_with :history, User
end
