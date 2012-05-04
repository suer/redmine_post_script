module PostScriptPatch
  class PostScriptExecuter
    def execute(&f)
      Thread.start {
        sleep 10
        f.call
      }
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
