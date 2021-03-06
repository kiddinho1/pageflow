require 'rails/generators'

module Pageflow
  module Generators
    class ThemeGenerator < Rails::Generators::Base
      desc 'Creates a configurable theme based on the default theme.'

      argument :name,
               required: false,
               default: 'custom',
               desc: 'The name of the new theme'

      source_root File.expand_path('../templates', __FILE__)

      def copy_template
        directory('themes', File.join('app', 'assets', 'stylesheets', 'pageflow', 'themes'))
        empty_directory(File.join('app', 'assets', 'images', 'pageflow', 'themes', name))
      end
    end
  end
end
