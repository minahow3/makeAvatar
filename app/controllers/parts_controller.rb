class PartsController < ApplicationController

    # 全パーツのデータを渡す(/parts)
    def index
        @parts = Part.all
        render json: @parts.as_json(only: [:id, :part_type, :url])
    end

    # デフォルトのパーツのデータを渡す(/default_parts)
    def default_index
        @parts = Part.where(default_flag: true)
        render json: @parts.as_json(only: [:id, :part_type, :url])
    end
end
