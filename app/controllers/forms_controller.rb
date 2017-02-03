class FormsController < ApplicationController
  # Vista principal de formulario
  def index
  end

  # Respueta de proceso de autenticación
  def respuesta
    @response = 'No Autorizado'
    if params[:image] && params[:email]
      uploaded_io = params[:image]
    
      image_string = Base64.strict_encode64(File.open(uploaded_io.tempfile, 'r').read)
    
      api_response = HTTParty.post("#{Rails.application.config.api_base_url}/login",
                      :body => { 'email' => params[:email], 'image' => image_string, 'user_agent' => request.user_agent }.to_json,
                      :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
      @response = 'OK' if api_response.code == 200
    end
  end
end
