# Modules define a new scope, so they are useful to create "namespaces".
#
# Namespaces give us the ability to define multiple classes with the same name
# (as long as they are within different module scopes). This is useful when you
# write "library" (a.k.a "lib") code that may be shared across multiple
# applications. To refer to a class within a module, use the :: operator.

# Here we define a globally scoped User class. Defining such a class in
# application code is (probably) okay because an application defines only one
# User class and application code is not shared.
class User

  def speak
    puts "I'm a global user."
  end

end

module NinasLib
  # This class is completely separate from the class defined above (even though
  # it has the same name) because it is within the NinasLib module scope.
  class User

    def speak
      puts "I'm a user defined within Nina's library."
    end

    # Does this method return the globally scoped User or the one within the
    # module scope?
    def user
      User
    end

  end
end

module MajasApp
  class User

    def speak
      puts "I'm a Maja's app user."
    end

    # This is how you refer to a class outside the local scope.
    def lib_user
      NinasLib::User
    end

    # This is how you refer to a class in the global scope.
    def global_user
      ::User
    end

  end
end
