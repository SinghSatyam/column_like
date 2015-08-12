class ActiveRecord::Base
  def self.method_missing(method_sym, *arguments, &block)
    if (method_sym.to_s =~ /^(.*)_like$/)==0
      column=method_sym.to_s.split('_like').flatten.first
      if column_names.include? column
        if ((arguments.first.include? '%') || (arguments.first.include? '*') || (arguments.first.include? '_'))
          self.where("lower(#{column}) like ?","#{arguments.first.downcase}")
        elsif arguments.first == ''
          self.where("lower(#{column}) like ?","")
        else
          self.where("lower(#{column}) like ?","%#{arguments.first.downcase}%")
        end
      else
        puts "*"*20+"You might want to check field name again"+"*"*20
        super
      end
    else
      super
    end
  end
end