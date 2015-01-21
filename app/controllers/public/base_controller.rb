# encoding: utf-8
class Public::BaseController < ActionController::Base
  protect_from_forgery
  layout 'layouts/public'
end
