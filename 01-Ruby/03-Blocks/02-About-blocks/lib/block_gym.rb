def tag(tag_name, attr = nil)
  if attr != nil
    "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
  else
    "<#{tag_name}>#{yield}</#{tag_name}>"
  end
end

#tag("h1", ["id", "title"]) {"Some Title"}
# "<h1 id='title'>Some Title</h1>"
# { "Some Title" }

  #TODO: Build HTML tags around content given in the block
  # The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]



def timer_for
  start = Time.now
  yield
  duree = Time.now - start
end
#TODO:  Return time taken to execute the given block
# aller chercher le temps au début, demander le temps à la fin, et afficher la différence.

def transform(element)
  yield (element)
  #TODO:  Simply execute the given block on element
end


#puts timer_for
#puts tag("h1", ["id", "title"]) {"mon block"}