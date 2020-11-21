require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @num = @number.to_i
    @square = @num ** 2
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    arr = []
    arr << [@phrase] * @number
    "#{arr}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    str = ""
    str << @w1 + " "  + @w2 + " " + @w3 + " " + @w4 + " " + @w5 + "."
    "#{str}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    If @operation = "add"
      @ans = @num1 + @num2 
      "#{@ans.to_s}"
    Elseif @operation = "subtract"
      @ans = @num1 - @num2 
      "#{@ans.to_s}"
    Elseif @operation = "multiply"
      @ans = @num1 * @num2 
      "#{@ans.to_s}"
    Elseif @operation = "divide"
      @ans = @num1 / @num2 
      "#{@ans.to_s}"
    Else
      " "
    end
  

end