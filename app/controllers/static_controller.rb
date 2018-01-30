class StaticController < ApplicationController
    def index
      @restauracjas = Restauracje.all
      @kliencis = Klienci.all
    end
end
