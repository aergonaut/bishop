class Authentication
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def user
    @user ||= user_from_omniauth
  end

  def authenticated?
    self.user.present?
  end

  protected

  def user_from_omniauth
    User.find_or_create_by!(self.params.slice(:provider, :uid)) do |user|
      user.login = self.params[:info][:nickname]
      user.email = self.params[:info][:email]
    end
  end
end
