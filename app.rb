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
    @result = []
    @num.times do
      @result << @new_phrase
    end
    "#{@result.join(" ")}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
  end

end