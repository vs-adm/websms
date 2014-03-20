class Configuration
  attr_accessor :api_user,
                :api_password,
                :client_id

  def initialize
    self.api_user = ''
    self.api_password = ''
    self.client_id = nil
  end
end
