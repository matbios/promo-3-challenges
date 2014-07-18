require_relative 'cookbook'
require_relative 'ui'
require_relative 'controller'

class app
  def run
    controller = Controller.new
    while true
      controller.fetch_and_display_recipes


    end
  end
end






cookbook_controller = Controller.new('recipes.csv')
cookbook_ui = UI.new(cookbook_controller)

cookbook_ui.display
