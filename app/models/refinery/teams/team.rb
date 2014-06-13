module Refinery
  module Teams
    class Team < Refinery::Core::BaseModel
      self.table_name = 'refinery_teams'

      attr_accessible :title, :photo_id, :name, :job_title, :description_title, :description, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
