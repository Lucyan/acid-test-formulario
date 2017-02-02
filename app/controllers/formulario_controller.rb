class FormularioController < ApplicationController
  # Vista principal de formulario
  def index
  end

  # Respueta de proceso de autenticación
  def respuesta
    uploaded_io = params[:image]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    image_string = Base64.strict_encode64(File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'rb').read)
    
    api_response = HTTParty.post("#{Rails.application.config.api_base_url}/login",
                      :body => { 'email' => params[:email], 'image' => image_string, 'user_agent' => request.user_agent }.to_json,
                      :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
    @response = api_response.code == 401 ? 'No Autorizado' : 'OK'
  end
end
