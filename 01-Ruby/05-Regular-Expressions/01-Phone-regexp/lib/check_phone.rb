def french_phone_number?(phone_number)
  if phone_number =~ /^0[1-9][0-9]{8}$|^0[1-9]( [0-9][0-9]){4}$|^0[1-9](-[0-9][0-9]){4}$|^\+33[1-9][0-9]{8}$|^\+33 [1-9]( [0-9][0-9]){4}$/
    true
  else
    false
  end
end

# TODO: true or false?

# It is valid when starting with a 0 and containing 10 digits
# It is valid when starging with +33 and containing 11 digits


# /^0|+33/  # starts with abc



# ^0[1-9][0-9]{8}$|
# ^0[1-9]( [0-9][0-9]){4}$|
# ^0[1-9](-[0-9][0-9]){4}$|
# ^\+33[1-9][0-9]{8}$|
# ^\+33 [1-9]( [0-9][0-9]){4}$
