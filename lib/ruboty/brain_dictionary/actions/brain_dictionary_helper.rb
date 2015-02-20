module BrainDictionaryHelper
  module_function
  NAMESPACE = 'dictionary'

  def dictionary(robot)
    robot.brain.data[NAMESPACE] ||= {}
  end
end
