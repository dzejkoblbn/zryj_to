module SessionsHelper
  def log_in(klient)
    session[:klient_id] = klient.id
  end
  def current_klient
    @current_klient ||= Klienci.find_by(id: session[:klient_id])
  end
  def logged_in?
      !current_klient.nil?
  end
  def log_out
    session.delete(:klient_id)
    @current_klient = nil
  end
end
