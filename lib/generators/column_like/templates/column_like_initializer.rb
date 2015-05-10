class ActiveRecord::Base
  def self.method_missing(method_sym, *arguments, &block)
    if (method_sym.to_s =~ /^(.*)_like$/)==0
      column=method_sym.to_s.split('_like').flatten.first
      if column_names.include? column
        if ((arguments.first.include? '%') || (arguments.first.include? '*') || (arguments.first.include? '_'))
        self.where("lower(#{column}) like ?","#{arguments.first.downcase}")  
        else  
        self.where("lower(#{column}) like ?","%#{arguments.first.downcase}%")
        end
      else
        puts "*"*10+"You might want to check field name again"+"*"*10
        super
      end
    else
        super
    end
  end
end