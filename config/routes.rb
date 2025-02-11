Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "home" })
  get("/dice/:dice/:sides", { :controller => "pages", :action => "roll" })
end
