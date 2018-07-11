require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end
  
  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    @new_phrase = @phrase.split("%20").join(" ")
    @result = ""
    @num.times do
      @result += @phrase
    "#{@result}"
    end
  end

end