class C4ModuleGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  argument :attributes, type: :array, default: [], banner: "name description field:type field:type"

  def add_module

    @name = attributes[0]
    desc = attributes[1]

    #Add Route
    route "resources :#{name_}, path: 'admin/#{name_}', except: :show, path_names: { new: 'nuevo', edit: 'editar' }, module: 'c4'"

    #Add Link to home page
    prepend_to_file "app/views/c4/_navlinks.html.erb" do
    "<%= link_to main_app.#{name_}_path, class: 'c4-grid-cell' do %>
      <div class='centered'>
        <span class='icon-folder_shared'></span>
        <span class='name'>#{ name_title}</span>
        <span class='description'>#{ desc.capitalize }</span>
      </div>
    <% end %>"
    end

    @model = attributes.from(2).join(' ')
    @first = attributes[2].partition(':').first


    #Generate Model
    generate :model, "#{singular} #{@model}"
    rake 'db:migrate'

    #Generate Controller
    template "controllers/controller.rb", "app/controllers/c4/#{name_}_controller.rb"

    #Generate Views 
    template "views/new.html.erb", "app/views/c4/#{name_}/new.html.erb"
    template "views/edit.html.erb", "app/views/c4/#{name_}/edit.html.erb"
    template "views/index.html.erb", "app/views/c4/#{name_}/index.html.erb"
    template "views/_form.html.erb", "app/views/c4/#{name_}/_form.html.erb"


  end

  private

  def model_names
    @model.split.map {|m| ":#{m.partition(':').first}" }
  end

  def name_
    @name.underscore
  end

  def singular
    @name.singularize
  end

  def name_title
    @name.titleize
  end

end
