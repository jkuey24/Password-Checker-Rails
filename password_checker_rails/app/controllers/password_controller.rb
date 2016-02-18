class PasswordController < ApplicationController

  def check
    @userId = params[:userId].to_s
    @password = params[:password].to_s

    if @userId.strip.empty? || @password.strip.empty?
      @correctalert = flash.now[:alert] = ""
    else
      @correctalert = flash.now[:alert] = "Your Login was Successful"
      
    end



    #
    # if @userId && @password
    #   flash.now[:notice]="Login Successful"
    #
    # else
    #   flash.now[:notice]="Login Unsuccessful."

    # end

  end #end of method check

end #end of PasswordController class
