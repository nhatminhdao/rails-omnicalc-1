class ZebraController < ApplicationController
  def square
    render ({ :template => "templates/square" })
  end

  def square_results
    @the_num = params.fetch(:num_to_square)
    @the_square = @the_num.to_f ** 2
    
    render ({ :template => "templates/square_results" })  
  end

  def square_root
    render ({ :template => "templates/square_root" })
  end

  def square_root_results
    @the_num = params.fetch(:num_to_square_root)
    @the_square_root = @the_num.to_f ** 0.5
    
    render ({ :template => "templates/square_root_results" })  
  end

  def payment
    render ({ :template => "templates/payment" })
  end

  def payment_results
    @user_apr = params.fetch(:user_apr).to_f
    @r= @user_apr /100 /12
    @user_years = params.fetch(:user_years).to_i
    @num_periods = @user_years * 12
    @user_principal = params.fetch(:user_principal).to_f
    @payment = @r * @user_principal / (1 - (1 + @r) ** - @num_periods)
    
    render ({ :template => "templates/payment_results" })  
  end

  def random
    render ({ :template => "templates/random" })
  end

  def random_results
    @user_min = params.fetch(:user_min).to_f
    @user_max = params.fetch(:user_max).to_f
    @random_num = rand(@user_min..@user_max).to_f.round(16)
    
    render ({ :template => "templates/random_results" })  
  end
end
