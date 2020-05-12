class TestingOldishController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    render body: EncTest.all.size, status: 200
  end
  def show

  end
  def create
    pass = EncTest.generate_password
    EncTest.create(password: pass)
    return head :ok
  end
end

# class ParentClass
#   def log
#     puts "In parent"
#   end
# end

# class ChildClass < ParentClass
#   def log_with_extra_message
#     puts "In child, with extra message"
#     log_without_extra_message
#   end
#     # puts alias_method_chain.superclass

#   alias_method_chain :log, :extra_message
# end

# overwrite alias method chain
# require 'pry'
# binding.pry

# Module.module_eval { include B }




# redefine_method(Module::alias_method_chain, override)
# end

# ActiveSupport.include ActiveSupport::CoreExtensions::Modules
