# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :email_string

  def initialize(email_string)
    @email_string = email_string
  end

  def parse
    self.email_string.split(/[\s,]/).delete_if {|email| email == ""}.uniq
  end
end
