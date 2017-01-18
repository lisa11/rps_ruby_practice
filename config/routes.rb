Rails.application.routes.draw do
  get("/play/:the_move", { :controller => "game", :action => "rps" })
end
