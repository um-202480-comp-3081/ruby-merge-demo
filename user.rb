# user.rb
class User
    attr_reader :name, :email
    
    def initialize(name, email)
        @name = name
        @email = email
    end
    
    def display_info
        "#{name} (#{email})"
    end
    
    def valid?
        name.length > 0 && email.include?('@')
    end
end
