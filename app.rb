require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      @reverse_name = params[:name]
      "#{@reverse_name.reverse}"
    end

    get '/square/:number' do
      @square_number = params[:number].to_i
      "#{@square_number * @square_number}"
    end

    get '/say/:number/:phrase' do
      answer = ''
        params[:number].to_i.times do
          answer += params[:phrase]
        end
        answer
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end

    get '/:operation/:number1/:number2' do
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      "#{@num1 + @num2}".to_s
    when 'subtract'
      "#{@num1 - @num2}"
    when 'multiply'
      "#{@num1 * @num2}"
    when 'divide'
      "#{@num1 / @num2}"
      end
    end

end
