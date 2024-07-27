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
end
