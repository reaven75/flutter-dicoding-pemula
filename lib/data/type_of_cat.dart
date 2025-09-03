
enum Gender { male, female }

class AdoptionCat {
  final String name;
  final String breed;
  final Gender gender;
  final String age;
  final String location;
  final bool isAvailable;
  final bool isVaccinated;
  final String description;
  final String imageProfile;
  bool isBookmarked;
  List<String> imageUrl;

  AdoptionCat({
    required this.name,
    required this.breed,
    required this.gender,
    required this.age,
    required this.location,
    required this.description,
    required this.imageProfile,
    required this.imageUrl,
    required this.isAvailable,
    required this.isVaccinated,
    this.isBookmarked = false,
  });
}

List<AdoptionCat> bookmarkAdoptionList = [];


var adoptionCatList = [
  AdoptionCat(
    name: "Whiskers",
    breed: "Siamese",
    gender: Gender.male,
    age: "2 years",
    location: "New York",
    description: "Whiskers is an elegant Siamese cat with striking blue eyes and a charming personality. He's incredibly social, loves to engage in conversation with his humans, and has a playful nature that makes him perfect for families. He's good with children and other pets, and enjoys playing with interactive toys. Being a Siamese, he's very vocal and will let you know exactly what he wants. Whiskers is litter box trained and enjoys being groomed.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Siamese%20Cat%201.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Siamese%20Cat%201.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Siamese%20Cat%202.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Siamese%20Cat%204.jpg",
    ],
    isAvailable: false,
    isVaccinated: false,
  ),
  AdoptionCat(
    name: "Fluffy",
    breed: "Persian",
    gender: Gender.female,
    age: "3 years",
    location: "Los Angeles",
    description: "Fluffy is a gorgeous Persian cat with a luxurious long coat and sweet temperament. She adores being pampered and brushed, making her perfect for someone who enjoys grooming. While she's not very active, she loves to cuddle and will happily spend hours on your lap. Fluffy is quiet and gentle, preferring a calm environment. She's been raised indoors and is good with other calm pets. Her favorite activities include watching birds from the window and napping in sunbeams.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Persian%20Cat%20%204.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Persian%20Cat%20%204.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Persian%20Cat%202.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Persian%20Cat%203.jpg",
    ],
    isAvailable: true,
    isVaccinated: false,
  ),
  AdoptionCat(
    name: "Shadow",
    breed: "Maine Coon",
    gender: Gender.male,
    age: "4 years",
    location: "Chicago",
    description: "Shadow is a majestic Maine Coon with a heart as big as his size. Despite his large stature, he's incredibly gentle and patient. He enjoys playing with water, unlike most cats, and is known for his dog-like loyalty. Shadow is intelligent and can be taught tricks. He's great with children and other pets, making him an ideal family cat. His thick, water-resistant coat requires regular grooming, but he enjoys the attention. He's particularly fond of playing fetch and climbing to high places.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Maine%20Coon%20Cat%201_1.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Maine%20Coon%20Cat%201_1.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Maine%20Coon%20Cat%202_0.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Maine%20Coon%20Cat%204_0.jpg"

    ],
    isAvailable: true,
    isVaccinated: true,
  ),

  AdoptionCat(
    name: "Mittens",
    breed: "British Shorthair",
    gender: Gender.female,
    age: "2 years",
    location: "San Francisco",
    description: "Mittens is a charming British Shorthair with a plush, velvety coat and adorable round face. She's known for her calm and patient nature, making her perfect for a peaceful household. While not overly demanding of attention, she forms strong bonds with her family members. Mittens enjoys short play sessions but prefers lounging and observing her surroundings. She's very well-behaved, uses her scratch post religiously, and has excellent litter box habits. Her favorite toys are simple string toys and small balls.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/British%20Shorthair%20Cat%202.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/British%20Shorthair%20Cat%202.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/British%20Shorthair%20Cat%201_0.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/British%20Shorthair%20Cat%203.jpg",
    ],
    isAvailable: true,
    isVaccinated: true,
  ),

 

  AdoptionCat(
    name: "Bella",
    breed: "Sphynx",
    gender: Gender.female,
    age: "3 years",
    location: "Seattle",
    description: "Bella the Sphynx is a unique and striking hairless cat with an outgoing personality. Despite her lack of fur, she's incredibly warm and soft to touch, feeling like warm suede. She requires regular baths to maintain healthy skin, but she actually enjoys the warm water and attention. Bella is extremely affectionate and will seek out warm places, including your lap or under blankets. She's highly energetic, athletic, and loves to perform acrobatic feats. Being very social, she gets along well with other pets and children. Due to her lack of fur, she needs protection from sun and cold.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Sphynx%20%201.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Sphynx%20%201.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Sphynx%20%203.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Sphynx%204.jpg",
    ],
    isAvailable: true,
    isVaccinated: true,
  ),

  

  AdoptionCat(
    name: "Charlie",
    breed: "Bengal",
    gender: Gender.male,
    age: "3 years",
    location: "Houston",
    description: "Charlie the Bengal is a stunning example of his breed with beautiful spotted coat patterns. He's incredibly athletic and needs lots of vertical space to climb and exercise. As a Bengal, he's highly intelligent and needs mental stimulation through puzzle toys and training. He has a strong prey drive and loves playing with moving toys. Charlie enjoys water play and might even join you in the shower! He needs an active household that can keep up with his energy levels.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Bengal%201.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Bengal%201.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Bengal%202.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Bengal%203.jpg",
    ],
    isAvailable: true,
    isVaccinated: true,
  ),

  AdoptionCat(
    name: "Bella",
    breed: "Cornish Rex",
    gender: Gender.female,
    age: "3 years",
    location: "Seattle",
    description: "Bella the Cornish Rex is a unique cat with her wavy coat and elegant appearance. She's known for her outstanding agility and love for high places. Her soft, suede-like coat requires minimal grooming. She's very warm to the touch and loves to snuggle under blankets. Bella is highly social and forms strong bonds with her family. She's quite vocal and will engage in conversations with her humans. She's an excellent jumper and enjoys playing fetch.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Cornish%20Rex%20Cat%201.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Cornish%20Rex%20Cat%201.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Cornish%20Rex%20Cat%203.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Cornish%20Rex%20Cat%202.jpg",
    ],
    isAvailable: true,
    isVaccinated: true,
  ),

  AdoptionCat(
    name: "Oliver",
    breed: "Munchkin",
    gender: Gender.male,
    age: "2 years",
    location: "Boston",
    description: "Oliver is an adorable Munchkin cat with short legs but a big personality. Despite his small stature, he's surprisingly agile and can jump and play just like any other cat. He's extremely curious and loves to explore every corner of his home. Oliver is great with children and other pets, making him a perfect family companion. He's quite intelligent and enjoys learning new tricks. His favorite activities include chasing toys and finding cozy spots for napping.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Munchkin%20Cat%202.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Munchkin%20Cat%202.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Munchkin%20Cat%202.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Munchkin%20Cat%204.jpg",
    ],
    isAvailable: true,
    isVaccinated: true,
  ),

  AdoptionCat(
    name: "Charlie",
    breed: "Bombay",
    gender: Gender.male,
    age: "3 years",
    location: "Houston",
    description: "Charlie the Bombay is a striking black cat with copper-colored eyes that seem to glow. He's often called a 'mini-panther' due to his sleek, muscular build and shiny coat. Despite his mysterious appearance, he's incredibly affectionate and loves to be held. Charlie is a lap cat who will follow you around the house and sleep under the covers with you. He's good with children and makes an excellent indoor companion. His favorite activities include playing with catnip toys and receiving belly rubs.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Bombay%20Cat%201_0.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Bombay%20Cat%201_0.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Bombay%20Cat%202.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Bombay%20Cat%203.jpg",
    ],
    isAvailable: true,
    isVaccinated: true,
  ),

  AdoptionCat(
    name: "Charlie",
    breed: "Ragdoll",
    gender: Gender.male,
    age: "3 years",
    location: "Houston",
    description: "Charlie the Ragdoll lives up to his breed's name by going limp when held. He has stunning blue eyes and a color point coat that's incredibly soft. True to his breed, he's gentle, calm, and very people-oriented. Charlie follows his humans from room to room and greets visitors at the door. He's excellent with children and other pets, making him a perfect family cat. Despite his large size, he's very gentle and careful. He enjoys playing with feather toys and puzzle feeders, but his favorite activity is cuddling with his humans.",
    imageProfile: "https://consumer-cms.petfinder.com/sites/default/files/images/content/Ragdoll%201.jpg",
    imageUrl: [
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Ragdoll%201.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Ragdoll%202.jpg",
      "https://consumer-cms.petfinder.com/sites/default/files/images/content/Ragdoll%203.jpg",
    ],
    isAvailable: true,
    isVaccinated: true,
  ),

];
