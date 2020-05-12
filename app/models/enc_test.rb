class EncTest < ApplicationRecord
  attr_encryptor :password,
    key: 'This is a key that is 256 bits!!',
    mode: :per_attribute_iv_and_salt

  # password requirements:
  #  - 8 to 40 characters long
  #  - at least one capital letter, one lowercase letter, and one number.
  def self.generate_password
    base64_arg = 24
    password = SecureRandom.base64(base64_arg)

    while (/[a-z]/.match(password).blank? or /[A-Z]/.match(password).blank? or /\d/.match(password).blank?)
      password = SecureRandom.base64(base64_arg)
    end

    password
  end
end
