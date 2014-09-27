module Tongxin263
  class API < Grape::API
  	version 'v1', :using => :header, :vendor => '263'
    format :json

    resource :users do

      desc "Return a user"
      params do
        requires :mobile, type: String, desc: "User Mobile"
      end
      route_param :mobile do
        get do
          User.find_by_mobile(params[:mobile])
        end
      end

      desc "Create a user"
      params do
        requires :name, type: String, desc: "User name"
        requires :mobile, type: String, desc: "User Mobile"
        requires :address, type: String, desc: "User Address"
      end
      post do
        User.create(name: params[:name], mobile: params[:mobile], address: params[:address])
      end
      
  	end


  	protected

  	def http_authenticate
      authenticate_or_request_with_http_digest do |user_name, password|
        user_name == "foo" && password == "bar"
      end
      #warden.custom_failure! if performed?
    end
  end

end