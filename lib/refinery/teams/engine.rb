module Refinery
  module Teams
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Teams

      engine_name :refinery_teams

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "teams"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.teams_admin_teams_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/teams/team'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Teams)
      end
    end
  end
end
