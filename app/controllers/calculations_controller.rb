class CalculationsController < ApplicationController
  def instructions
  end

  def sqrt
    @num = params[:num]
    @sqrt = Math.sqrt(@num.to_i)
  end

  def pmt
    @r = params[:interest_rate].to_f/10
    @n = params[:number_of_payments].to_i
    @pv = params[:principal_value].to_i
    @pmt = (@pv*@r)/(1-(1+@r)**(-@n))
  end
end
