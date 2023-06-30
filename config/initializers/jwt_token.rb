JWT_SECRET = 'your_jwt_secret_key'

module JwtToken
  def self.encode(payload)
    JWT.encode(payload, JWT_SECRET)
  end

  def self.decode(token)
    JWT.decode(token, JWT_SECRET)[0]
  end
end
