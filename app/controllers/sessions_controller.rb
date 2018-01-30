class SessionsController < ApplicationController
  def new
  end

  def create
      klient = Klienci.find_by(id_klienta: params[:session][:index])
      if klient && klient.authenticate(params[:session][:password])
            # Wszystko dobrze, logujemy
            log_in klient
            redirect_to klient
      else
            # Niedobrze

            render 'new'
      end
  end
  def destroy
    log_out
    redirect_to root_url
  end
end
