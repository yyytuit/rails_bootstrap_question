class User < ApplicationRecord
    validates:name, presence: true, length:{maximum:15}
    validates:email, presence: true

    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
    has_secure_password
    validates:password, presence: true,format: { with: VALID_PASSWORD_REGEX }

end
