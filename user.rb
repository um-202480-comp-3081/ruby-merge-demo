# user.rb (feature-admin branch)
class User
    attr_reader :name, :email, :admin
    
    def initialize(name, email, admin = false)
        @name = name
        @email = email
        @admin = admin
    end
    
    def display_info
        "#{name} (#{email})#{' - Admin' if admin}"
    end
    
    def valid?
        name.length > 0 && email.include?('@')
    end
    
    def can_access_admin_panel?
        admin
    end
end
