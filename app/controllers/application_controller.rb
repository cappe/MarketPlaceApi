class ApplicationController < ActionController::API
  include Authenticable
  include ActionController::Serialization
end
