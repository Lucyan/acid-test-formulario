# DESCRIPCION

Aplicación que contiene el formulario que realiza la llamada a la api del test

# DEMO HEROKU

[https://thawing-bayou-20305.herokuapp.com/](https://thawing-bayou-20305.herokuapp.com/)

# Requistos

* Ruby 2.3.3
* Rails 5.0.1
* postgresql
* API del test [https://github.com/Lucyan/acid-test](https://github.com/Lucyan/acid-test)

# Instalación

* Clonar repositorio local
* Ejecutar comando 'bundle install'


# Ejecución

* Ejecutar comando 'rails s' para levantar el servidor en puerto 3030
* Ingresar a la url local [http://localhost:3030](http://localhost:3030)

# Datos de prueba exitosa

* email: iverdejo@acid.cl
* imagen:
![biometrica.png](https://thawing-bayou-20305.herokuapp.com/biometrica.png)


# Configuración endpoint api

config/environments/development.rb

config.api_base_url = 'http://localhost:3000/rest'


# Repositorio api

[https://github.com/Lucyan/acid-test](https://github.com/Lucyan/acid-test)