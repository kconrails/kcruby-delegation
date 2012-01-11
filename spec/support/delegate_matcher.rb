module DelegateMatcher
  class DelegateMatcherClass
    def initialize delegated_method, options = {}
      @delegated_method = delegated_method
      @options = options
    end
  
    def matches? target
      raise "#{target.inspect} must delegate to something!" unless @options.has_key?(:to)
      
      @delegate_class = @options[:to].to_s.camelize.constantize
    
      @target = target

      @delegate_class.any_instance.stubs(@delegated_method).returns(arbitrary_value)

      begin
        target.send(@delegated_method) == arbitrary_value
      rescue
        false
      end
    end
  
    def failure_message
      "expected #{@target.inspect} to delegate the #{@delegated_method} method to #{@options[:to]}"
    end
  
    def negative_failure_message
      "expected #{@target.inspect} not to delegate the #{@delegated_method} method to #{@options[:to]}"
    end
  
    private
  
    def arbitrary_value
      'nonsense'
    end
  end
  
  def delegate *args
    DelegateMatcherClass.new *args
  end
end