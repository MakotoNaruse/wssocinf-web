class UsersController < ApplicationController

    def identify
        # ユーザの問い合わせ
        line_user_id = params[:user_id]

        if line_user_id.blank?
            render :json => { message: "Error:Please entry user_id", status: 9}
            return
        end

        user = User.find_by(line_user_id: line_user_id)
        if user.present? # userが存在するか 
            past_time = Time.current - user.last_recieved_time
            render :json => { id: user.id, message: "Discovered user", status: 1, situation: user.situation, time: past_time }
        else 
            new_user = User.new
            new_user.line_user_id = line_user_id
            new_user.last_recieved_time = Time.current
            if new_user.save
                render :json => { id: new_user.id, message: "User created!", status: 2, situation: new_user.situation, time: 0 }
            else
                render :json => { message: "Error : Failed to create user", status: 9}
            end
        end
    end

    def change_situation
        # ユーザの問い合わせ
        line_user_id = params[:user_id]
        # situationの問い合わせ
        situation_num = params[:situation]

        if line_user_id.blank?
            render :json => { message: "Error : Please entry user_id", status: 9}
            return 
        end

        if situation_num.blank?
            render :json => { message: "Error : Please entry your situation", status: 9}
            return
        end

        user = User.find_by(line_user_id: line_user_id)
        
        if user.present? # userが存在するか 
            user.situation = situation_num
            user.last_recieved_time = Time.current
            if user.save
                render :json => { message: "Succeed!!", status: 1}
            else
                render :json => { message: "Miss in change user situation", status: 9}
            end
        else 
            render :json => { message: "Error : Not find user", status: 9}
        end

    end

end
