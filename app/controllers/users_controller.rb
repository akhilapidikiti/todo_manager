class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render plain: User.all.order(:id).map {|user| user.to_s}.join("\n")
    end
    def show
        id = params[:id]
        user=User.find(id)
        render plain: user.to_s
    end
  
end