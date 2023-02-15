class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :ensure_json_request

def ensure_json_request
  unless request.headers["Accept"] =~ /vnd\.api\+json/
    render :nothing => true, :status => 406 # [ACCEPT] Espero receber a resposta 
  else
    unless request.get?
      return if request.headers["Content-Type"] =~ /vnd\.api\+json/
        render :nothing => true, :status => 415 # [Content-Type] eu envio a resposta
      end
    end
  end
end
