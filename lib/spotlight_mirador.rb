require 'spotlight_mirador/version'
require 'spotlight_mirador/view_helpers'
require 'mirador_rails'

module SpotlightMirador
  ActionController::Base.prepend_view_path File.dirname(__FILE__) + '/../app/views'
  ActionView::Base.send :include, SpotlightMirador::ViewHelpers
end
