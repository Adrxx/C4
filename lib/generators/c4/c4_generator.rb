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
    if yes?('Would you like to install a custom palette?')
      template "_palette.scss.erb", "app/assets/stylesheets/_palette.scss.erb" 
    end
  end

  def setup_contact_page
    if yes?('Would you like to install a contact module?')

      route "get 'admin/contacto' => 'c4/admin#contact', as: 'contact' "
      route "patch 'admin/contacto' => 'c4/admin#contact' "

      prepend_to_file "app/views/c4/_navlinks.html.erb" do
      "<%= link_to main_app.contact_path, class: 'c4-grid-cell' do %>
        <div class='centered'>
          <span class='icon-email'></span>
          <span class='name'>Contacto</span>
          <span class='description'>Edita los datos de contacto.</span>
        </div>
      <% end %>"
      end

      template "models/contact.rb", "app/models/c4/contact.rb"

      template "views/contact.erb", "app/views/mail_form/contact.erb"

      template "views/_contact_sheet.html.erb", "app/views/c4/_contact_sheet.html.erb"

      template "views/_contact_data.html.erb", "app/views/c4/_contact_data.html.erb"

      template "views/_contact_success.html.erb", "app/views/c4/_contact_success.html.erb"

    end
  end

  def name_title
    name.titleize
  end

end
