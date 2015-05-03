require 'rails/generators'
require 'rails/generators/base'
require 'pry'
module ColumnLike
  module Generators
    class InstallGenerator < Rails::Generators::Base
    	binding.pry
      source_root File.expand_path("../templates", __FILE__)
      desc "Creates initializers for ColumnLike"
  	  def copy_initializer
    	copy_file 'column_like_initializer.rb', 'config/initializers/column_like.rb'
  	 end

    end
  end
end