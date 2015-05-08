Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:num", { :controller => "calculations", :action => "sqrt" })
  get("/payment/:interest_rate/:number_of_payments/:principal_value", { :controller => "calculations", :action => "pmt" })
end
