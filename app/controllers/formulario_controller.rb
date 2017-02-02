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
    puts "*"*100
    puts image_string
    puts "*"*100
    
    base_url = 'http://localhost:3000/rest'
    api_response = HTTParty.post("#{base_url}/login",
                      :body => { 'email' => params[:email], 'image' => image_string }.to_json,
                      :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json' })
    @response = api_response.code == 401 ? 'No Autorizado' : 'OK'
  end
end
