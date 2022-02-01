class NumbersController < ApplicationController
  def winners_lucky
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def winners_unlucky
    @unlucky_array = Array.new

    5.times do
      unlucky_numbers = rand(1...100)
      
      @unlucky_array.push(unlucky_numbers)
    end

    render({ :template => "lottery_stuff/boohoo.html.erb"})
  end 

end
