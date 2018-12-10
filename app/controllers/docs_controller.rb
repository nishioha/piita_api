class DocsController < ApplicationController

  def index
    @docs = Doc.all

    render json: @docs, each_serializer: DocSerializer
  end

  def show
    @doc = Doc.find_by!(uuid: params[:uuid])

    render json: @doc
  end
end
