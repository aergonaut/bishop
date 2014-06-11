class Job < ActiveRecord::Base
  validates :command, presence: true

  belongs_to :created_by, class_name: "User"

  serialize :payload, JSON
  
  COMMANDS = { "Deploy" => "deploy" }
end
