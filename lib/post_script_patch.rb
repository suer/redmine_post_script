module PostScriptPatch
  class PostScriptExecuter
    def execute
      Thread.start {
        yield
      }.join
    end 
  end
  
  def self.included(base)
    base.send(:include, InstanceMethods)
    base.class_eval do
      unloadable
      after_create :exec_script    
    end
  end
  module InstanceMethods
    def exec_script
      PostScriptExecuter.new.execute { load File.expand_path('../../bin/post_script.rb', __FILE__) }
    end
  end
end
