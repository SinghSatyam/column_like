class ActiveRecord::Base
  def self.method_missing(method_sym, *arguments, &block)
    if (method_sym.to_s =~ /^(.*)_like$/)==0
      column=method_sym.to_s.split('_like').flatten.first
      if column_names.include? column
        self.where("#{column} like ?","%#{arguments.first}%")
      else
        puts "*"*10+"You might want to check field name again"+"*"*10
        super
      end
    else
        super
    end
  end
end