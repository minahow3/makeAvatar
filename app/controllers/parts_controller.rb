class PartsController < ApplicationController

    # 全パーツのデータを渡す(/parts)
    def index
        @parts = Part.all
        render json: @parts.as_json(only: [:id, :part_type, :url])
    end
end
