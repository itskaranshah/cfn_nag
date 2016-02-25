require 'json'
class Violation
  WARNING = 'warning'
  FAILING_VIOLATION = 'failing violation'

  attr_reader :type, :message, :logical_resource_ids, :violating_code

  def initialize(type:,
                 message:,
                 logical_resource_ids: nil,
                 violating_code: nil)
    @type = type
    @message = message
    @logical_resource_ids = logical_resource_ids
    @violating_code = violating_code

    fail if @type.nil?
    fail if @message.nil?
  end

  def to_s
    puts "#{@type} #{@message} #{@logical_resource_ids} #{@violating_code}"
  end

  def to_h
    {
      type: @type,
      message: @message,
      logical_resource_ids: @logical_resource_ids,
      violating_code: @violating_code
    }
  end
end