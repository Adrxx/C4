module C4
  class Engine < ::Rails::Engine

    isolate_namespace ::C4

    config.to_prepare do
      Rails.application.config.assets.precompile += %w( c4/admin.css c4/c4.js )
      Devise::SessionsController.layout "c4/admin"
    end

    initializer "c4.ensure_user" do |app|

      if ActiveRecord::Base.connection.table_exists? 'c4_users'
        unless C4::User.any?
          password = "prueba" #SecureRandom::hex(4)
          email = "prueba@prueba.com"
          u = C4::User.new
          u.email = email
          u.role = "admin"
          u.password = password
          u.password_confirmation = password

          puts "Error: Could not generate initial superuser" unless u.save
          puts "backup C4 superuser generated..."

        end

      end

    end

  end


end

