class SidebarGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def copy_stuff
    template 'sidebar.rb',    "#{plugin_path}/lib/#{file_name}.rb"
    template 'content.html.erb', "#{plugin_path}/app/views/#{file_name}/_content.html.erb"
    template 'model_spec.rb',  "spec/models/#{file_name}_spec.rb"
  end

  private

  def plugin_path
    @plugin_path ||= "lib/#{file_name}"
  end
end
