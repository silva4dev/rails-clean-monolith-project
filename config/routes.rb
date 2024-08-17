Rails.application.routes.draw do
  post "/bookings", to: UrlHelper.path(:booking, "cargo_bookings", :create)
  post "/cargorouting", to: UrlHelper.path(:booking, "cargo_routing", :create)
  get "/optimal_route", to: UrlHelper.path(:routing, "cargo_routing", :find_optimal_route)
end
