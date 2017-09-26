require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
    get '/hello' do
      "Hello World!"
    end

    # This is a sample dynamic route.
    get '/hello/:name' do
      @user_name = params[:name]
      "Hello #{@user_name}!"
    end

    # Code your final two routes here:

    get '/goodbye/:name' do
    "Goodbye, #{@user_name}."
  end


  def name
    @user_name = goodbye.select do
      |goodbye|
          goodbye.name == params[:name]
        end.first
        erb :'/name/show.html'
    end

    get '/multiply/:number1/:number2' do
      "number1 and number2"
    end

    def number
    @user_number = number.select do
      |number1, number2|
            multiply.number == params[:number1, :numner2]
          end.first
          erb :'/number1/:number2/show.html'
        end
end
#last_response.body
