class C4Generator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__) 

  def setup_migrations
    
    rake 'c4:install:migrations'
    rake 'db:migrate'

  end

  def setup_home_page

    template "views/layouts/admin.html.erb", "app/views/layouts/c4/admin.html.erb"

    template "views/admin/index.html.erb", "app/views/c4/admin/index.html.erb"

    template "views/_navlinks.html.erb", "app/views/c4/_navlinks.html.erb"

  end


  def add_palette
    template "_palette.scss.erb", "app/assets/stylesheets/c4/_palette.scss.erb"
  end

  def setup_contact_page
    if yes?('Would you like to install a contact module?')
      #TODO...
      puts "You'll have to wait for version 2.0..."
    end
  end

  def name_title
    name.titleize
  end

end
