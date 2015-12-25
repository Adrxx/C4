class PaletteGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)


  def add_palette
    template "_palette.scss.erb", "app/assets/stylesheets/c4/_palette.scss.erb"
  end
end
