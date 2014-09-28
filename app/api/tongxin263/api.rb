module Tongxin263
  class API < Grape::API
  	version 'v1', :using => :header, :vendor => '263'
    format :json

    resource :users do

      desc "Return a user by mobile"
      params do
        requires :mobile, type: String, desc: "User Mobile"
      end
      route_param :mobile do
        get do
          user = User.find_by_mobile(params[:mobile])
          {
            status: true,
            user:{
              name: user.name,
              mobile: user.mobile,
              address: user.address,
              department: user.department.try(:name),
              position: user.position
            }
          }
        end
      end
  	end
    
    resource :department do
      desc "Return users of a department"
      params do
        requires :name, type: String, desc: "Department Name"
      end
      route_param :name do
        get '/users' do
          department = Department.find_by_name(params[:name])
          {
            status: true,
            users: department.users
          }
        end
      end
    end

  	# protected

  	# def http_authenticate
   #    authenticate_or_request_with_http_digest do |user_name, password|
   #      user_name == "foo" && password == "bar"
   #    end
   #    #warden.custom_failure! if performed?
   #  end
  end

end