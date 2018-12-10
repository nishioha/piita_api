class DocsController < ApplicationController

  def index
    @docs = Doc.all

    render json: @docs, each_serializer: DocSerializer
  end
end
