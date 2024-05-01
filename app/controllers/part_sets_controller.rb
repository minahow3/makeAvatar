class PartSetsController < ApplicationController

    # 特定のnameのPartSetのデータをすべて渡すAPI
    def index
        user = User.find_by(name: params[:name])
        if user
            part_sets = user.part_sets
            render json: part_sets.as_json(only: [:part_id, :x_position, :y_position])
        else
            render json: {error: "User not found"}, status: :not_found
        end
    end
end
