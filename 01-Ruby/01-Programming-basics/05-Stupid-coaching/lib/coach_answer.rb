def coach_answer(your_message)

  if your_message == "I am going to work right now SIR !"
  return ""

  elsif your_message.include? "?"
  return "Silly question, get dressed and go to work !"

  else
  return "I don't care son, get dressed and go to work !"
  end

end
# TODO: return coach answer to your_message

def coach_answer_enhanced(your_message)
 if your_message == "You're a good boy"
    return "yes i know"
  end
  # TODO: return coach answer to your_message, with additional custom rules of yours !
end