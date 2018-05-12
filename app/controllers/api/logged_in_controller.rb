class Api::V1::LoggedInController < Api::V1::BaseController
  before_action :authenticated_user!
end