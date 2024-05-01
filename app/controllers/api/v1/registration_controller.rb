module Api
    module V1
        class RegistrationController < ApplicationController
            def register_user_with_part_set
                ActiveRecord::Base.transaction do
                    user = User.create!(user_params)
                    part_set = user.part_sets.create!(part_set_params)
                    render json: {user: user,part_set: part_set}, status: :created
                end
            rescue ActiveRecord::RecordInvalid => e
                render json: {error: e.message}, status: :unprocessably_entity
            end
        
            private

            def user_params
                params.require(:user).permit(:name)
            end

            def part_set_params
                params.require(:part_set).permit(:part_id, :x_position, :y_position)
            end
        end
    end
end




