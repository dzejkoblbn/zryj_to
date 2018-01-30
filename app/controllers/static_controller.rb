class StaticController < ApplicationController
    def index
      @restauracjas = Restauracje.all
    end
end
