require "bundler"
Bundler.require

get "/" do
  @hash = {
    :name => "Cutest Animals",
    :message => "Welcome to the Cutest Animals API"
  }
  return @hash.to_json
end

get "/hedgehog" do
  hedgehog = set_animal("Hedgehog", "6", "Hedges", "https://i.ytimg.com/vi/x81b0qLXuNc/hqdefault.jpg", "A hedgehog is any of the spiny mammals of the subfamily Erinaceinae, in the order Erinaceomorpha.")
  return hedgehog.to_json
end

get "/bearcub" do
  bearcub = set_animal("Bear Cub", "8", "forest", "http://www.tehcute.com/pics/201109/polar-bear-cub-drinking-water.jpg", "Common characteristics of modern bears include large bodies with stocky legs, long snouts, shaggy hair, plantigrade paws with five nonretractile claws, and short tails.")
  return bearcub.to_json
end

get "/owl" do
  owl = set_animal("Owl", "10", "Trees and the sky", "https://s-media-cache-ak0.pinimg.com/736x/c0/32/38/c03238eb743c9ae69e9ee46186bb0a9c.jpg", "Owls are birds from the order Strigiformes, which includes about 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons and feathers adapted for silent flight.")
  return owl.to_json
end

get "/koala" do
  koala = set_animal("Koala", "7", "Eucalypt woodlands", "http://www.fraserislandexcursions.com.au/wp-content/uploads/2015/08/koala-26233-1.jpg", "It is easily recognisable by its stout, tailless body and large head with round, fluffy ears and large, spoon-shaped nose.")
  return koala.to_json
end

get "/bunny" do
  bunny = set_animal("Bunny Wabbit", "9", "Meadows, woods, forests, grasslands, deserts and wetlands.", "http://cdn2.hellogiggles.com/wp-content/uploads/2014/10/22/I-Felled-Over-Bunny-Meme-copy.jpg", "The male is called a buck and the female is a doe; a young rabbit is a kitten or kit.")
  return bunny.to_json
end

get "/bonus" do
  erb :json_test
end

def set_animal(name, cuteness, habitat, picture_url, description)
  return @animal_hash = {
    :name => name,
    :cuteness => cuteness,
    :habitat => habitat,
    :picture_url => picture_url,
    :description => description
  }
end
