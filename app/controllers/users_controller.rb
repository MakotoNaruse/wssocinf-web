class UsersController < ApplicationController

    def identify
        # ユーザの問い合わせ
        line_user_id = params[:user_id]

        if line_user_id.blank?
            render :json => { id: user.id, message: "Error:Please entry user_id", status: 9}
        end

        user = User.find_by(line_user_id: line_user_id)
        if user.present? # userが存在するか 
            render :json => { id: user.id, message: "Discovered user", status: 1, situation: user.situation}
        else 
            # render :json => { message: "Error : Not find user"}
            new_user = User.new
            new_user.line_user_id = line_user_id
            if new_user.save
                render :json => { id: new_user.id, message: "User created!", status: 2, situation: user.situation}
            else
                render :json => { message: "Error : Failed to create user", status: 9}
            end
        end
    end

    def changeSituation
        # ユーザの問い合わせ
        line_user_id = params[:user_id]
        # situationの問い合わせ
        situation_num = params[:situation]

        if line_user_id.blank?
            render :json => { message: "Error : Please entry user_id", status: 9}
        end

        #if situation_num.blank?
            #render :json => { message: "Error : Please entry your situation", status: 9}
        #end

        user = User.find_by(line_user_id: line_user_id)
        if user.present? # userが存在するか 
            render :json => { message: "Succeed!!", status: 1}
        else 
            render :json => { message: "Error : Not find user", status: 9}
        end

    end

end
