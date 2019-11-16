class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = rand(1..20)
    num_2 = rand(1..20)
    num_3 = rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win You Lose"
    else
      resp.write "You Win You Lose"
    end

    # resp.write "Hello, World"
    resp.finish
  end

end
