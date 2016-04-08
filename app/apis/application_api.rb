class ApplicationApi < Grape::API
  format :json
  extend Napa::GrapeExtenders

  before do
    error!("401 Unauthorized", 401) unless authenticated?
  end

  helpers do
    def authenticated?
      return true if User.find_by_authentication_token(params[:access_token])
    end
  end

  mount ContactsApi => '/contacts'

  add_swagger_documentation
end
