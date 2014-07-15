# Encoding: utf-8

def mail_joke(email)

  unless email.is_a?(String)
    fail ArgumentError
  end

    unless email.include?("@")
      fail ArgumentError
    end

  email_ndd = email.split("@").last
  email_owner = email.split("@").first.gsub('.',' ')

  case email_ndd
    when "lewagon.org"
      "Well done #{email_owner}, you're skilled and capable"
    when "gmail.com"
      "#{email_owner}, you're an average but modern person"
    when "live.com"
      "#{email_owner}, aren't you born before 1973?"
    else
      "Sorry #{email_owner}, we don't know how to judge '#{email_ndd}'"
  end
end

puts mail_joke("boris@lewagon.org")
puts mail_joke("jean-marc.alarue@live.com")
puts mail_joke("to.to@gmzezil.com")


# TODO: Return a joke suited to the email provided
# mail_joke(boris@lewagon.org)

# if email /^[a-zA-z]/ => ArgumentError

# voir si le NDD est connu, si en fait aucune réponse n'est possible, c'est qu'on ne le connait pas.
# valider que ça commence par un string et pas un fixnum

 # it "should raise an ArgumentError if input is not an email" do
 #    lambda { mail_joke("foo") } .must_raise ArgumentError
 #  end

 #  it "should compliment LeWagon email owners" do
 #    response = mail_joke "boris@lewagon.org"
 #    response.must_equal "Well done boris, you're skilled and capable"
 #  end

 #  it "should tell Gmail user that they are average and modern" do
 #    response = mail_joke "boris@gmail.com"
 #    response.must_equal "boris, you're an average but modern person"
 #  end

 #  it "should tell Live user that they live in the past" do
 #    response = mail_joke "jean-marc.alarue@live.com"
 #    response.must_equal "jean-marc alarue, aren't you born before 1973?"
 #  end

 #  it "should tell unknownd domain users that we can't judge them" do
 #    response = mail_joke "voyageurdufutur@milkyway.gal"
 #    response.must_equal "Sorry voyageurdufutur, we don't know how to judge 'milkyway.gal'"
 #  end