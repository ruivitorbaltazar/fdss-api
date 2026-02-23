# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

### Location Categories
puts('>> Creating Location Categories')
LocationCategory.first_or_create([
  { name: "Accommodation" },
  { name: "Food & Beverage" },
  { name: "Culture & Entertainment" },
  { name: "Sports & Recreation" },
  { name: "Health & Wellness" },
  { name: "Outdoors & Nature" },
  { name: "Attractions" },
  { name: "Transportation" },
  { name: "Shopping & Services" },
])

### Location Sub Categories
puts('>> Creating Location Sub Categories')
accommodation_id = LocationCategory.find_by(name: "Accommodation").id
LocationSubCategory.first_or_create([
  { name: "House", location_category_id: accommodation_id },
  { name: "Apartment", location_category_id: accommodation_id },
  { name: "Villa", location_category_id: accommodation_id },
  { name: "Hotel", location_category_id: accommodation_id },
  { name: "Motel", location_category_id: accommodation_id },
  { name: "Hostel", location_category_id: accommodation_id },
  { name: "Pension", location_category_id: accommodation_id },
  { name: "Camping", location_category_id: accommodation_id },
  { name: "Glamping", location_category_id: accommodation_id },
  { name: "Bungalow", location_category_id: accommodation_id },
  { name: "Houseboat", location_category_id: accommodation_id },
  { name: "Boatel", location_category_id: accommodation_id },
  { name: "Farm House", location_category_id: accommodation_id },
  { name: "Cottage", location_category_id: accommodation_id },
  { name: "Cabin", location_category_id: accommodation_id },
  { name: "Lodge", location_category_id: accommodation_id },
  { name: "Treehouse", location_category_id: accommodation_id },
  { name: "Monastery / Convent", location_category_id: accommodation_id },
  { name: "Resort", location_category_id: accommodation_id },
])
food_beverage_id = LocationCategory.find_by(name: "Food & Beverage").id
LocationSubCategory.first_or_create([
  { name: "Restaurant", location_category_id: food_beverage_id },
  { name: "Cafeteria", location_category_id: food_beverage_id },
  { name: "Cafe", location_category_id: food_beverage_id },
  { name: "Tavern", location_category_id: food_beverage_id },
  { name: "Food Stand", location_category_id: food_beverage_id },
  { name: "Bar", location_category_id: food_beverage_id },
  { name: "Beverage Vendor", location_category_id: food_beverage_id },
  { name: "Coffee Shop", location_category_id: food_beverage_id },
  { name: "Beer House", location_category_id: food_beverage_id },
  { name: "Brewery", location_category_id: food_beverage_id },
  { name: "Winery", location_category_id: food_beverage_id },
  { name: "Distillery", location_category_id: food_beverage_id },
])
culture_entertainment_id = LocationCategory.find_by(name: "Culture & Entertainment").id
LocationSubCategory.first_or_create([
  { name: "Museum", location_category_id: culture_entertainment_id },
  { name: "Art Gallery", location_category_id: culture_entertainment_id },
  { name: "Theatre", location_category_id: culture_entertainment_id },
  { name: "Opera", location_category_id: culture_entertainment_id },
  { name: "Auditorium", location_category_id: culture_entertainment_id },
  { name: "Stadium", location_category_id: culture_entertainment_id },
  { name: "Arena", location_category_id: culture_entertainment_id },
  { name: "Library", location_category_id: culture_entertainment_id },
  { name: "University", location_category_id: culture_entertainment_id },
  { name: "Movie Theatre", location_category_id: culture_entertainment_id },
  { name: "Community Centre", location_category_id: culture_entertainment_id },
  { name: "Concert Hall", location_category_id: culture_entertainment_id },
  { name: "Country Club", location_category_id: culture_entertainment_id },
  { name: "Cabaret", location_category_id: culture_entertainment_id },
  { name: "Comedy Club", location_category_id: culture_entertainment_id },
  { name: "Nightclub", location_category_id: culture_entertainment_id },
  { name: "Arcade", location_category_id: culture_entertainment_id },
])
sports_recreation_id = LocationCategory.find_by(name: "Sports & Recreation").id
LocationSubCategory.first_or_create([
  { name: "Shooting Range", location_category_id: sports_recreation_id },
  { name: "Swimming Pool", location_category_id: sports_recreation_id },
  { name: "Tennis Court", location_category_id: sports_recreation_id },
  { name: "Padel Court", location_category_id: sports_recreation_id },
  { name: "Basketball Court", location_category_id: sports_recreation_id },
  { name: "Volleyball Court", location_category_id: sports_recreation_id },
  { name: "Futsal Court", location_category_id: sports_recreation_id },
  { name: "Football Pitch", location_category_id: sports_recreation_id },
  { name: "Rugby Pitch", location_category_id: sports_recreation_id },
  { name: "Skate Park", location_category_id: sports_recreation_id },
  { name: "Boxing Ring", location_category_id: sports_recreation_id },
  { name: "Cricket Ground", location_category_id: sports_recreation_id },
  { name: "Lacrosse Field", location_category_id: sports_recreation_id },
  { name: "Baseball Field", location_category_id: sports_recreation_id },
  { name: "Softball Field", location_category_id: sports_recreation_id },
  { name: "Ice Hockey Rink", location_category_id: sports_recreation_id },
  { name: "Roller Hockey Rink", location_category_id: sports_recreation_id },
  { name: "Ice Skating Rink", location_category_id: sports_recreation_id },
  { name: "Roller Skating Rink", location_category_id: sports_recreation_id },
  { name: "Bowling Alley", location_category_id: sports_recreation_id },
  { name: "Hiking Trail", location_category_id: sports_recreation_id },
  { name: "Martial Arts Dojo", location_category_id: sports_recreation_id },
  { name: "Athletic Track", location_category_id: sports_recreation_id },
  { name: "Cycling Track", location_category_id: sports_recreation_id },
  { name: "Equestrian Centre", location_category_id: sports_recreation_id },
  { name: "Ski Resort", location_category_id: sports_recreation_id },
  { name: "Golf Course", location_category_id: sports_recreation_id },
  { name: "Race Car Track", location_category_id: sports_recreation_id },
  { name: "Kart Circuit", location_category_id: sports_recreation_id },
  { name: "Paintball Field", location_category_id: sports_recreation_id },
  { name: "Airsoft Field", location_category_id: sports_recreation_id },
  { name: "Laser Tag Arena", location_category_id: sports_recreation_id },
])
health_wellness_id = LocationCategory.find_by(name: "Health & Wellness").id
LocationSubCategory.first_or_create([
  { name: "Hospital", location_category_id: health_wellness_id },
  { name: "Clinic", location_category_id: health_wellness_id },
  { name: "Dental Practice", location_category_id: health_wellness_id },
  { name: "Optician", location_category_id: health_wellness_id },
  { name: "Massage Therapist", location_category_id: health_wellness_id },
  { name: "Physiotherapist", location_category_id: health_wellness_id },
  { name: "Psychologist", location_category_id: health_wellness_id },
  { name: "Rehabilitation Centre", location_category_id: health_wellness_id },
  { name: "Pharmacy", location_category_id: health_wellness_id },
  { name: "Gymnasium", location_category_id: health_wellness_id },
  { name: "Fitness Centre", location_category_id: health_wellness_id },
  { name: "Meditation Centre", location_category_id: health_wellness_id },
  { name: "Day Spa", location_category_id: health_wellness_id },
  { name: "Medical Spa", location_category_id: health_wellness_id },
  { name: "Thermal Spa", location_category_id: health_wellness_id },
  { name: "Yoga Studio", location_category_id: health_wellness_id },
  { name: "Tai Chi Studio", location_category_id: health_wellness_id },
  { name: "Pilates Studio", location_category_id: health_wellness_id },
])
outdoors_nature_id = LocationCategory.find_by(name: "Outdoors & Nature").id
LocationSubCategory.first_or_create([
  { name: "Park", location_category_id: outdoors_nature_id },
  { name: "Garden", location_category_id: outdoors_nature_id },
  { name: "Botanical Garden", location_category_id: outdoors_nature_id },
  { name: "Woods", location_category_id: outdoors_nature_id },
  { name: "Forest", location_category_id: outdoors_nature_id },
  { name: "Jungle", location_category_id: outdoors_nature_id },
  { name: "Meadow", location_category_id: outdoors_nature_id },
  { name: "Desert", location_category_id: outdoors_nature_id },
  { name: "River Beach", location_category_id: outdoors_nature_id },
  { name: "Ocean Beach", location_category_id: outdoors_nature_id },
  { name: "Sea", location_category_id: outdoors_nature_id },
  { name: "Lake", location_category_id: outdoors_nature_id },
  { name: "Lagoon", location_category_id: outdoors_nature_id },
  { name: "Waterfall", location_category_id: outdoors_nature_id },
  { name: "Hot Spring", location_category_id: outdoors_nature_id },
  { name: "Vulcano", location_category_id: outdoors_nature_id },
  { name: "Cave", location_category_id: outdoors_nature_id },
  { name: "Cliff / Canyon", location_category_id: outdoors_nature_id },
  { name: "Nature Reserve", location_category_id: outdoors_nature_id },
  { name: "Animal Sanctuary", location_category_id: outdoors_nature_id },
  { name: "Ranch", location_category_id: outdoors_nature_id },
  { name: "Farm", location_category_id: outdoors_nature_id },
  { name: "Mountain", location_category_id: outdoors_nature_id },
  { name: "Glacier", location_category_id: outdoors_nature_id },
])
attractions_id = LocationCategory.find_by(name: "Attractions").id
LocationSubCategory.first_or_create([
  { name: "Theme Park", location_category_id: attractions_id },
  { name: "Water Park", location_category_id: attractions_id },
  { name: "Viewpoint", location_category_id: attractions_id },
  { name: "Bridge", location_category_id: attractions_id },
  { name: "Monument", location_category_id: attractions_id },
  { name: "Statue", location_category_id: attractions_id },
  { name: "Prison", location_category_id: attractions_id },
  { name: "Catacombs", location_category_id: attractions_id },
  { name: "Shrine", location_category_id: attractions_id },
  { name: "Rooftop", location_category_id: attractions_id },
  { name: "Memorial", location_category_id: attractions_id },
  { name: "Cemetery", location_category_id: attractions_id },
  { name: "Church", location_category_id: attractions_id },
  { name: "Cathedral", location_category_id: attractions_id },
  { name: "Chapel", location_category_id: attractions_id },
  { name: "Sanctuary", location_category_id: attractions_id },
  { name: "Castle", location_category_id: attractions_id },
  { name: "Palace", location_category_id: attractions_id },
  { name: "Tunnel", location_category_id: attractions_id },
  { name: "Observatory", location_category_id: attractions_id },
  { name: "Planetarium", location_category_id: attractions_id },
  { name: "Historical Site", location_category_id: attractions_id },
  { name: "Prehistoric Site", location_category_id: attractions_id },
  { name: "Playground", location_category_id: attractions_id },
  { name: "Aquarium", location_category_id: attractions_id },
  { name: "Zoo", location_category_id: attractions_id },
  { name: "Battlefield", location_category_id: attractions_id },
  { name: "Sewer", location_category_id: attractions_id },
  { name: "Square", location_category_id: attractions_id },
])
transportation_id = LocationCategory.find_by(name: "Transportation").id
LocationSubCategory.first_or_create([
  { name: "Airport", location_category_id: transportation_id },
  { name: "Aerodrome", location_category_id: transportation_id },
  { name: "Helipad", location_category_id: transportation_id },
  { name: "Train Station", location_category_id: transportation_id },
  { name: "Metro Station", location_category_id: transportation_id },
  { name: "Tram Stop", location_category_id: transportation_id },
  { name: "Bus Station", location_category_id: transportation_id },
  { name: "Bus Stop", location_category_id: transportation_id },
  { name: "Parking Lot", location_category_id: transportation_id },
])
shopping_services_id = LocationCategory.find_by(name: "Shopping & Services").id
LocationSubCategory.first_or_create([
  { name: "Supermarket", location_category_id: shopping_services_id },
  { name: "Grocer", location_category_id: shopping_services_id },
  { name: "Convenience Shop", location_category_id: shopping_services_id },
  { name: "Market", location_category_id: shopping_services_id },
  { name: "Butcher", location_category_id: shopping_services_id },
  { name: "Clothes Shop", location_category_id: shopping_services_id },
  { name: "Shoe Shop", location_category_id: shopping_services_id },
  { name: "Jeweller", location_category_id: shopping_services_id },
  { name: "Boutique", location_category_id: shopping_services_id },
  { name: "Furniture Shop", location_category_id: shopping_services_id },
  { name: "Homeware Shop", location_category_id: shopping_services_id },
  { name: "Hardware Shop", location_category_id: shopping_services_id },
  { name: "Garden Centre", location_category_id: shopping_services_id },
  { name: "Electronics Shop", location_category_id: shopping_services_id },
  { name: "Bookshop", location_category_id: shopping_services_id },
  { name: "Craft Shop", location_category_id: shopping_services_id },
  { name: "Sports Shop", location_category_id: shopping_services_id },
  { name: "Music Shop", location_category_id: shopping_services_id },
  { name: "Toy Shop", location_category_id: shopping_services_id },
  { name: "Pet Shop", location_category_id: shopping_services_id },
  { name: "Florist", location_category_id: shopping_services_id },
  { name: "Gift Shop", location_category_id: shopping_services_id },
  { name: "Antiques Shop", location_category_id: shopping_services_id },
  { name: "Car Parts Shop", location_category_id: shopping_services_id },
  { name: "Car Dealer", location_category_id: shopping_services_id },
  { name: "Department Store", location_category_id: shopping_services_id },
  { name: "Retail Park", location_category_id: shopping_services_id },
  { name: "Shopping Centre", location_category_id: shopping_services_id },
  { name: "Hair Dresser", location_category_id: shopping_services_id },
  { name: "Barber", location_category_id: shopping_services_id },
  { name: "Beauty Salon", location_category_id: shopping_services_id },
  { name: "Tattoo Studio", location_category_id: shopping_services_id },
  { name: "Make-up Artist", location_category_id: shopping_services_id },
  { name: "Veterinary", location_category_id: shopping_services_id },
  { name: "Trade Shop", location_category_id: shopping_services_id },
  { name: "Dry Cleaner", location_category_id: shopping_services_id },
  { name: "Office", location_category_id: shopping_services_id },
  { name: "Real Estate Agency", location_category_id: shopping_services_id },
  { name: "Self-storage Facility", location_category_id: shopping_services_id },
  { name: "Travel Agency", location_category_id: shopping_services_id },
  { name: "Car Rental", location_category_id: shopping_services_id },
  { name: "Photography Studio", location_category_id: shopping_services_id },
  { name: "Nursery / Child Care", location_category_id: shopping_services_id },
  { name: "Tailor", location_category_id: shopping_services_id },
  { name: "Print Shop", location_category_id: shopping_services_id },
  { name: "Key cutting service", location_category_id: shopping_services_id },
  { name: "Repair Shop", location_category_id: shopping_services_id },
])

### Countries
puts('>> Creating Countries')
Country.first_or_create([
{ name: "Afghanistan", phone_code:	"93",	alpha_2_code: "AF", alpha_3_code: "AFG" },
{ name: "Albania", phone_code:	"355",	alpha_2_code: "AL", alpha_3_code: "ALB" },
{ name: "Algeria", phone_code:	"213",	alpha_2_code: "DZ", alpha_3_code: "DZA" },
{ name: "American", phone_code: "Samoa	1-684",	alpha_2_code: "AS", alpha_3_code: "ASM" },
{ name: "Andorra", phone_code:	"376",	alpha_2_code: "AD", alpha_3_code: "AND" },
{ name: "Angola", phone_code:	"244",	alpha_2_code: "AO", alpha_3_code: "AGO" },
{ name: "Anguilla", phone_code:	"1-264",	alpha_2_code: "AI", alpha_3_code: "AIA" },
{ name: "Antarctica", phone_code:	"672",	alpha_2_code: "AQ", alpha_3_code: "ATA" },
{ name: "Antigua and Barbuda	", phone_code: "1-268",	alpha_2_code: "AG", alpha_3_code: "ATG" },
{ name: "Argentina", phone_code:	"54",	alpha_2_code: "AR", alpha_3_code: "ARG" },
{ name: "Armenia", phone_code:	"374",	alpha_2_code: "AM", alpha_3_code: "ARM" },
{ name: "Aruba", phone_code:	"297",	alpha_2_code: "AW", alpha_3_code: "ABW" },
{ name: "Australia", phone_code:	"61",	alpha_2_code: "AU", alpha_3_code: "AUS" },
{ name: "Austria", phone_code:	"43",	alpha_2_code: "AT", alpha_3_code: "AUT" },
{ name: "Azerbaijan", phone_code:	"994",	alpha_2_code: "AZ", alpha_3_code: "AZE" },
{ name: "Bahamas", phone_code:	"1-242",	alpha_2_code: "BS", alpha_3_code: "BHS" },
{ name: "Bahrain", phone_code:	"973",	alpha_2_code: "BH", alpha_3_code: "BHR" },
{ name: "Bangladesh", phone_code:	"880",	alpha_2_code: "BD", alpha_3_code: "BGD" },
{ name: "Barbados", phone_code:	"1-246",	alpha_2_code: "BB", alpha_3_code: "BRB" },
{ name: "Belarus", phone_code:	"375",	alpha_2_code: "BY", alpha_3_code: "BLR" },
{ name: "Belgium", phone_code:	"32",	alpha_2_code: "BE", alpha_3_code: "BEL" },
{ name: "Belize", phone_code:	"501",	alpha_2_code: "BZ", alpha_3_code: "BLZ" },
{ name: "Benin", phone_code:	"229",	alpha_2_code: "BJ", alpha_3_code: "BEN" },
{ name: "Bermuda", phone_code:	"1-441",	alpha_2_code: "BM", alpha_3_code: "BMU" },
{ name: "Bhutan", phone_code:	"975",	alpha_2_code: "BT", alpha_3_code: "BTN" },
{ name: "Bolivia", phone_code:	"591",	alpha_2_code: "BO", alpha_3_code: "BOL" },
{ name: "Bosnia and Herzegovina", phone_code: "387",	alpha_2_code: "BA", alpha_3_code: "BIH" },
{ name: "Botswana", phone_code:	"267",	alpha_2_code: "BW", alpha_3_code: "BWA" },
{ name: "Brazil", phone_code:	"55",	alpha_2_code: "BR", alpha_3_code: "BRA" },
{ name: "British Indian Ocean Territory", phone_code: "246",	alpha_2_code: "IO", alpha_3_code: "IOT" },
{ name: "British Virgin Islands", phone_code: "1-284",	alpha_2_code: "VG", alpha_3_code: "VGB" },
{ name: "Brunei", phone_code:	"673",	alpha_2_code: "BN", alpha_3_code: "BRN" },
{ name: "Bulgaria", phone_code:	"359",	alpha_2_code: "BG", alpha_3_code: "BGR" },
{ name: "Burkina Faso", phone_code: "226",	alpha_2_code: "BF", alpha_3_code: "BFA" },
{ name: "Burundi", phone_code:	"257",	alpha_2_code: "BI", alpha_3_code: "BDI" },
{ name: "Cambodia", phone_code:	"855",	alpha_2_code: "KH", alpha_3_code: "KHM" },
{ name: "Cameroon", phone_code:	"237",	alpha_2_code: "CM", alpha_3_code: "CMR" },
{ name: "Canada", phone_code:	"1",	alpha_2_code: "CA", alpha_3_code: "CAN" },
{ name: "Cape Verde", phone_code: "238",	alpha_2_code: "CV", alpha_3_code: "CPV" },
{ name: "Cayman Islands", phone_code: "1-345",	alpha_2_code: "KY", alpha_3_code: "CYM" },
{ name: "Central African Republic", phone_code: "236",	alpha_2_code: "CF", alpha_3_code: "CAF" },
{ name: "Chad", phone_code:	"235",	alpha_2_code: "TD", alpha_3_code: "TCD" },
{ name: "Chile", phone_code:	"56",	alpha_2_code: "CL", alpha_3_code: "CHL" },
{ name: "China", phone_code:	"86",	alpha_2_code: "CN", alpha_3_code: "CHN" },
{ name: "Christmas Island", phone_code: "61",	alpha_2_code: "CX", alpha_3_code: "CXR" },
{ name: "Cocos Islands", phone_code: "61",	alpha_2_code: "CC", alpha_3_code: "CCK" },
{ name: "Colombia", phone_code:	"57",	alpha_2_code: "CO", alpha_3_code: "COL" },
{ name: "Comoros", phone_code:	"269",	alpha_2_code: "KM", alpha_3_code: "COM" },
{ name: "Cook Islands", phone_code: "682",	alpha_2_code: "CK", alpha_3_code: "COK" },
{ name: "Costa Rica", phone_code: "506",	alpha_2_code: "CR", alpha_3_code: "CRI" },
{ name: "Croatia", phone_code:	"385",	alpha_2_code: "HR", alpha_3_code: "HRV" },
{ name: "Cuba", phone_code:	"53",	alpha_2_code: "CU", alpha_3_code: "CUB" },
{ name: "Curacao", phone_code:	"599",	alpha_2_code: "CW", alpha_3_code: "CUW" },
{ name: "Cyprus", phone_code:	"357",	alpha_2_code: "CY", alpha_3_code: "CYP" },
{ name: "Czech Republic", phone_code:	"420",	alpha_2_code: "CZ", alpha_3_code: "CZE" },
{ name: "Democratic Republic of the Congo", phone_code: "243",	alpha_2_code: "CD", alpha_3_code: "COD" },
{ name: "Denmark", phone_code:	"45",	alpha_2_code: "DK", alpha_3_code: "DNK" },
{ name: "Djibouti", phone_code:	"253",	alpha_2_code: "DJ", alpha_3_code: "DJI" },
{ name: "Dominica", phone_code:	"1-767",	alpha_2_code: "DM", alpha_3_code: "DMA" },
{ name: "Dominican Republic", phone_code: "1-809, 1-829, 1-849",	alpha_2_code: "DO", alpha_3_code: "DOM" },
{ name: "East Timor", phone_code:	"670",	alpha_2_code: "TL", alpha_3_code: "TLS" },
{ name: "Ecuador", phone_code:	"593",	alpha_2_code: "EC", alpha_3_code: "ECU" },
{ name: "Egypt", phone_code:	"20",	alpha_2_code: "EG", alpha_3_code: "EGY" },
{ name: "El Salvador", phone_code:	"503",	alpha_2_code: "SV", alpha_3_code: "SLV" },
{ name: "Equatorial Guinea", phone_code:	"240",	alpha_2_code: "GQ", alpha_3_code: "GNQ" },
{ name: "Eritrea", phone_code:	"291",	alpha_2_code: "ER", alpha_3_code: "ERI" },
{ name: "Estonia", phone_code:	"372",	alpha_2_code: "EE", alpha_3_code: "EST" },
{ name: "Ethiopia", phone_code:	"251",	alpha_2_code: "ET", alpha_3_code: "ETH" },
{ name: "Falkland Islands", phone_code: "500",	alpha_2_code: "FK", alpha_3_code: "FLK" },
{ name: "Faroe Islands", phone_code: "298",	alpha_2_code: "FO", alpha_3_code: "FRO" },
{ name: "Fiji", phone_code:	"679",	alpha_2_code: "FJ", alpha_3_code: "FJI" },
{ name: "Finland", phone_code:	"358",	alpha_2_code: "FI", alpha_3_code: "FIN" },
{ name: "France", phone_code:	"33",	alpha_2_code: "FR", alpha_3_code: "FRA" },
{ name: "French Polynesia", phone_code:	"689",	alpha_2_code: "PF", alpha_3_code: "PYF" },
{ name: "Gabon", phone_code:	"241",	alpha_2_code: "GA", alpha_3_code: "GAB" },
{ name: "Gambia", phone_code:	"220",	alpha_2_code: "GM", alpha_3_code: "GMB" },
{ name: "Georgia", phone_code:	"995",	alpha_2_code: "GE", alpha_3_code: "GEO" },
{ name: "Germany", phone_code:	"49",	alpha_2_code: "DE", alpha_3_code: "DEU" },
{ name: "Ghana", phone_code:	"233",	alpha_2_code: "GH", alpha_3_code: "GHA" },
{ name: "Gibraltar", phone_code:	"350",	alpha_2_code: "GI", alpha_3_code: "GIB" },
{ name: "Greece", phone_code:	"30",	alpha_2_code: "GR", alpha_3_code: "GRC" },
{ name: "Greenland", phone_code:	"299",	alpha_2_code: "GL", alpha_3_code: "GRL" },
{ name: "Grenada", phone_code:	"1-473",	alpha_2_code: "GD", alpha_3_code: "GRD" },
{ name: "Guam", phone_code:	"1-671",	alpha_2_code: "GU", alpha_3_code: "GUM" },
{ name: "Guatemala", phone_code:	"502",	alpha_2_code: "GT", alpha_3_code: "GTM" },
{ name: "Guernsey", phone_code:	"44-1481",	alpha_2_code: "GG", alpha_3_code: "GGY" },
{ name: "Guinea", phone_code:	"224",	alpha_2_code: "GN", alpha_3_code: "GIN" },
{ name: "Guinea-Bissau", phone_code:	"245",	alpha_2_code: "GW", alpha_3_code: "GNB" },
{ name: "Guyana", phone_code:	"592",	alpha_2_code: "GY", alpha_3_code: "GUY" },
{ name: "Haiti", phone_code:	"509",	alpha_2_code: "HT", alpha_3_code: "HTI" },
{ name: "Honduras", phone_code:	"504",	alpha_2_code: "HN", alpha_3_code: "HND" },
{ name: "Hong Kong", phone_code:	"852",	alpha_2_code: "HK", alpha_3_code: "HKG" },
{ name: "Hungary", phone_code:	"36",	alpha_2_code: "HU", alpha_3_code: "HUN" },
{ name: "Iceland", phone_code:	"354",	alpha_2_code: "IS", alpha_3_code: "ISL" },
{ name: "India", phone_code:	"91",	alpha_2_code: "IN", alpha_3_code: "IND" },
{ name: "Indonesia", phone_code:	"62",	alpha_2_code: "ID", alpha_3_code: "IDN" },
{ name: "Iran", phone_code:	"98",	alpha_2_code: "IR", alpha_3_code: "IRN" },
{ name: "Iraq", phone_code:	"964",	alpha_2_code: "IQ", alpha_3_code: "IRQ" },
{ name: "Ireland", phone_code:	"353",	alpha_2_code: "IE", alpha_3_code: "IRL" },
{ name: "Isle of Man", phone_code: "44-1624",	alpha_2_code: "IM", alpha_3_code: "IMN" },
{ name: "Israel", phone_code:	"972",	alpha_2_code: "IL", alpha_3_code: "ISR" },
{ name: "Italy", phone_code:	"39",	alpha_2_code: "IT", alpha_3_code: "ITA" },
{ name: "Ivory Coast", phone_code:	"225",	alpha_2_code: "CI", alpha_3_code: "CIV" },
{ name: "Jamaica", phone_code:	"1-876",	alpha_2_code: "JM", alpha_3_code: "JAM" },
{ name: "Japan", phone_code:	"81",	alpha_2_code: "JP", alpha_3_code: "JPN" },
{ name: "Jersey", phone_code:	"44-1534",	alpha_2_code: "JE", alpha_3_code: "JEY" },
{ name: "Jordan", phone_code:	"962",	alpha_2_code: "JO", alpha_3_code: "JOR" },
{ name: "Kazakhstan", phone_code:	"7",	alpha_2_code: "KZ", alpha_3_code: "KAZ" },
{ name: "Kenya", phone_code:	"254",	alpha_2_code: "KE", alpha_3_code: "KEN" },
{ name: "Kiribati", phone_code:	"686",	alpha_2_code: "KI", alpha_3_code: "KIR" },
{ name: "Kosovo", phone_code:	"383",	alpha_2_code: "XK", alpha_3_code: "XKX" },
{ name: "Kuwait", phone_code:	"965",	alpha_2_code: "KW", alpha_3_code: "KWT" },
{ name: "Kyrgyzstan", phone_code:	"996",	alpha_2_code: "KG", alpha_3_code: "KGZ" },
{ name: "Laos", phone_code:	"856",	alpha_2_code: "LA", alpha_3_code: "LAO" },
{ name: "Latvia", phone_code:	"371",	alpha_2_code: "LV", alpha_3_code: "LVA" },
{ name: "Lebanon", phone_code:	"961",	alpha_2_code: "LB", alpha_3_code: "LBN" },
{ name: "Lesotho", phone_code:	"266",	alpha_2_code: "LS", alpha_3_code: "LSO" },
{ name: "Liberia", phone_code:	"231",	alpha_2_code: "LR", alpha_3_code: "LBR" },
{ name: "Libya", phone_code:	"218",	alpha_2_code: "LY", alpha_3_code: "LBY" },
{ name: "Liechtenstein", phone_code:	"423",	alpha_2_code: "LI", alpha_3_code: "LIE" },
{ name: "Lithuania", phone_code:	"370",	alpha_2_code: "LT", alpha_3_code: "LTU" },
{ name: "Luxembourg", phone_code:	"352",	alpha_2_code: "LU", alpha_3_code: "LUX" },
{ name: "Macau", phone_code:	"853",	alpha_2_code: "MO", alpha_3_code: "MAC" },
{ name: "Macedonia", phone_code:	"389",	alpha_2_code: "MK", alpha_3_code: "MKD" },
{ name: "Madagascar", phone_code:	"261",	alpha_2_code: "MG", alpha_3_code: "MDG" },
{ name: "Malawi", phone_code:	"265",	alpha_2_code: "MW", alpha_3_code: "MWI" },
{ name: "Malaysia", phone_code:	"60",	alpha_2_code: "MY", alpha_3_code: "MYS" },
{ name: "Maldives", phone_code:	"960",	alpha_2_code: "MV", alpha_3_code: "MDV" },
{ name: "Mali", phone_code:	"223",	alpha_2_code: "ML", alpha_3_code: "MLI" },
{ name: "Malta", phone_code:	"356",	alpha_2_code: "MT", alpha_3_code: "MLT" },
{ name: "Marshall Islands", phone_code:	"692",	alpha_2_code: "MH", alpha_3_code: "MHL" },
{ name: "Mauritania", phone_code:	"222",	alpha_2_code: "MR", alpha_3_code: "MRT" },
{ name: "Mauritius", phone_code:	"230",	alpha_2_code: "MU", alpha_3_code: "MUS" },
{ name: "Mayotte", phone_code:	"262",	alpha_2_code: "YT", alpha_3_code: "MYT" },
{ name: "Mexico", phone_code:	"52",	alpha_2_code: "MX", alpha_3_code: "MEX" },
{ name: "Micronesia", phone_code:	"691",	alpha_2_code: "FM", alpha_3_code: "FSM" },
{ name: "Moldova", phone_code:	"373",	alpha_2_code: "MD", alpha_3_code: "MDA" },
{ name: "Monaco", phone_code:	"377",	alpha_2_code: "MC", alpha_3_code: "MCO" },
{ name: "Mongolia", phone_code:	"976",	alpha_2_code: "MN", alpha_3_code: "MNG" },
{ name: "Montenegro", phone_code:	"382",	alpha_2_code: "ME", alpha_3_code: "MNE" },
{ name: "Montserrat", phone_code:	"1-664",	alpha_2_code: "MS", alpha_3_code: "MSR" },
{ name: "Morocco", phone_code:	"212",	alpha_2_code: "MA", alpha_3_code: "MAR" },
{ name: "Mozambique", phone_code:	"258",	alpha_2_code: "MZ", alpha_3_code: "MOZ" },
{ name: "Myanmar", phone_code:	"95",	alpha_2_code: "MM", alpha_3_code: "MMR" },
{ name: "Namibia", phone_code:	"264",	alpha_2_code: "NA", alpha_3_code: "NAM" },
{ name: "Nauru", phone_code:	"674",	alpha_2_code: "NR", alpha_3_code: "NRU" },
{ name: "Nepal", phone_code:	"977",	alpha_2_code: "NP", alpha_3_code: "NPL" },
{ name: "Netherlands", phone_code:	"31",	alpha_2_code: "NL", alpha_3_code: "NLD" },
{ name: "Netherlands Antilles", phone_code: "599",	alpha_2_code: "AN", alpha_3_code: "ANT" },
{ name: "New Caledonia", phone_code:	"687",	alpha_2_code: "NC", alpha_3_code: "NCL" },
{ name: "New Zealand", phone_code:	"64",	alpha_2_code: "NZ", alpha_3_code: "NZL" },
{ name: "Nicaragua", phone_code:	"505",	alpha_2_code: "NI", alpha_3_code: "NIC" },
{ name: "Niger", phone_code:	"227",	alpha_2_code: "NE", alpha_3_code: "NER" },
{ name: "Nigeria", phone_code:	"234",	alpha_2_code: "NG", alpha_3_code: "NGA" },
{ name: "Niue", phone_code:	"683",	alpha_2_code: "NU", alpha_3_code: "NIU" },
{ name: "North Korea", phone_code:	"850",	alpha_2_code: "KP", alpha_3_code: "PRK" },
{ name: "Northern Mariana Islands", phone_code:	"1-670",	alpha_2_code: "MP", alpha_3_code: "MNP" },
{ name: "Norway", phone_code:	"47",	alpha_2_code: "NO", alpha_3_code: "NOR" },
{ name: "Oman", phone_code:	"968",	alpha_2_code: "OM", alpha_3_code: "OMN" },
{ name: "Pakistan", phone_code:	"92",	alpha_2_code: "PK", alpha_3_code: "PAK" },
{ name: "Palau", phone_code:	"680",	alpha_2_code: "PW", alpha_3_code: "PLW" },
{ name: "Palestine", phone_code:	"970",	alpha_2_code: "PS", alpha_3_code: "PSE" },
{ name: "Panama", phone_code:	"507",	alpha_2_code: "PA", alpha_3_code: "PAN" },
{ name: "Papua New Guinea", phone_code:	"675",	alpha_2_code: "PG", alpha_3_code: "PNG" },
{ name: "Paraguay", phone_code:	"595",	alpha_2_code: "PY", alpha_3_code: "PRY" },
{ name: "Peru", phone_code:	"51",	alpha_2_code: "PE", alpha_3_code: "PER" },
{ name: "Philippines", phone_code:	"63",	alpha_2_code: "PH", alpha_3_code: "PHL" },
{ name: "Pitcairn", phone_code:	"64",	alpha_2_code: "PN", alpha_3_code: "PCN" },
{ name: "Poland", phone_code:	"48",	alpha_2_code: "PL", alpha_3_code: "POL" },
{ name: "Portugal", phone_code:	"351",	alpha_2_code: "PT", alpha_3_code: "PRT" },
{ name: "Puerto Rico", phone_code:	"1-787, 1-939",	alpha_2_code: "PR", alpha_3_code: "PRI" },
{ name: "Qatar", phone_code:	"974",	alpha_2_code: "QA", alpha_3_code: "QAT" },
{ name: "Republic of the Congo", phone_code:	"242",	alpha_2_code: "CG", alpha_3_code: "COG" },
{ name: "Reunion", phone_code:	"262",	alpha_2_code: "RE", alpha_3_code: "REU" },
{ name: "Romania", phone_code:	"40",	alpha_2_code: "RO", alpha_3_code: "ROU" },
{ name: "Russia", phone_code:	"7",	alpha_2_code: "RU", alpha_3_code: "RUS" },
{ name: "Rwanda", phone_code:	"250",	alpha_2_code: "RW", alpha_3_code: "RWA" },
{ name: "Saint Barthelemy", phone_code:	"590",	alpha_2_code: "BL", alpha_3_code: "BLM" },
{ name: "Saint Helena", phone_code:	"290",	alpha_2_code: "SH", alpha_3_code: "SHN" },
{ name: "Saint Kitts and Nevis", phone_code:	"1-869",	alpha_2_code: "KN", alpha_3_code: "KNA" },
{ name: "Saint Lucia", phone_code:	"1-758",	alpha_2_code: "LC", alpha_3_code: "LCA" },
{ name: "Saint Martin", phone_code:	"590",	alpha_2_code: "MF", alpha_3_code: "MAF" },
{ name: "Saint Pierre and Miquelon", phone_code:	"508",	alpha_2_code: "PM", alpha_3_code: "SPM" },
{ name: "Saint Vincent and the Grenadines", phone_code:	"1-784",	alpha_2_code: "VC", alpha_3_code: "VCT" },
{ name: "Samoa", phone_code:	"685",	alpha_2_code: "WS", alpha_3_code: "WSM" },
{ name: "San Marino", phone_code:	"378",	alpha_2_code: "SM", alpha_3_code: "SMR" },
{ name: "Sao Tome and Principe", phone_code:	"239",	alpha_2_code: "ST", alpha_3_code: "STP" },
{ name: "Saudi Arabia", phone_code:	"966",	alpha_2_code: "SA", alpha_3_code: "SAU" },
{ name: "Senegal", phone_code:	"221",	alpha_2_code: "SN", alpha_3_code: "SEN" },
{ name: "Serbia", phone_code:	"381",	alpha_2_code: "RS", alpha_3_code: "SRB" },
{ name: "Seychelles", phone_code:	"248",	alpha_2_code: "SC", alpha_3_code: "SYC" },
{ name: "Sierra Leone", phone_code:	"232",	alpha_2_code: "SL", alpha_3_code: "SLE" },
{ name: "Singapore", phone_code:	"65",	alpha_2_code: "SG", alpha_3_code: "SGP" },
{ name: "Sint Maarten", phone_code:	"1-721",	alpha_2_code: "SX", alpha_3_code: "SXM" },
{ name: "Slovakia", phone_code:	"421",	alpha_2_code: "SK", alpha_3_code: "SVK" },
{ name: "Slovenia", phone_code:	"386",	alpha_2_code: "SI", alpha_3_code: "SVN" },
{ name: "Solomon Islands", phone_code:	"677",	alpha_2_code: "SB", alpha_3_code: "SLB" },
{ name: "Somalia", phone_code:	"252",	alpha_2_code: "SO", alpha_3_code: "SOM" },
{ name: "South Africa", phone_code:	"27",	alpha_2_code: "ZA", alpha_3_code: "ZAF" },
{ name: "South Korea", phone_code:	"82",	alpha_2_code: "KR", alpha_3_code: "KOR" },
{ name: "South Sudan", phone_code:	"211",	alpha_2_code: "SS", alpha_3_code: "SSD" },
{ name: "Spain", phone_code:	"34",	alpha_2_code: "ES", alpha_3_code: "ESP" },
{ name: "Sri Lanka", phone_code:	"94",	alpha_2_code: "LK", alpha_3_code: "LKA" },
{ name: "Sudan", phone_code:	"249",	alpha_2_code: "SD", alpha_3_code: "SDN" },
{ name: "Suriname", phone_code:	"597",	alpha_2_code: "SR", alpha_3_code: "SUR" },
{ name: "Svalbard and Jan Mayen", phone_code:	"47",	alpha_2_code: "SJ", alpha_3_code: "SJM" },
{ name: "Swaziland", phone_code:	"268",	alpha_2_code: "SZ", alpha_3_code: "SWZ" },
{ name: "Sweden", phone_code:	"46",	alpha_2_code: "SE", alpha_3_code: "SWE" },
{ name: "Switzerland", phone_code:	"41",	alpha_2_code: "CH", alpha_3_code: "CHE" },
{ name: "Syria", phone_code:	"963",	alpha_2_code: "SY", alpha_3_code: "SYR" },
{ name: "Taiwan", phone_code:	"886",	alpha_2_code: "TW", alpha_3_code: "TWN" },
{ name: "Tajikistan", phone_code:	"992",	alpha_2_code: "TJ", alpha_3_code: "TJK" },
{ name: "Tanzania", phone_code:	"255",	alpha_2_code: "TZ", alpha_3_code: "TZA" },
{ name: "Thailand", phone_code:	"66",	alpha_2_code: "TH", alpha_3_code: "THA" },
{ name: "Togo", phone_code:	"228",	alpha_2_code: "TG", alpha_3_code: "TGO" },
{ name: "Tokelau", phone_code:	"690",	alpha_2_code: "TK", alpha_3_code: "TKL" },
{ name: "Tonga", phone_code:	"676",	alpha_2_code: "TO", alpha_3_code: "TON" },
{ name: "Trinidad and Tobago", phone_code:	"1-868",	alpha_2_code: "TT", alpha_3_code: "TTO" },
{ name: "Tunisia", phone_code:	"216",	alpha_2_code: "TN", alpha_3_code: "TUN" },
{ name: "Turkey", phone_code:	"90",	alpha_2_code: "TR", alpha_3_code: "TUR" },
{ name: "Turkmenistan", phone_code:	"993",	alpha_2_code: "TM", alpha_3_code: "TKM" },
{ name: "Turks and Caicos Islands", phone_code:	"1-649",	alpha_2_code: "TC", alpha_3_code: "TCA" },
{ name: "Tuvalu", phone_code:	"688",	alpha_2_code: "TV", alpha_3_code: "TUV" },
{ name: "U.S. Virgin Islands", phone_code:	"1-340",	alpha_2_code: "VI", alpha_3_code: "VIR" },
{ name: "Uganda", phone_code:	"256",	alpha_2_code: "UG", alpha_3_code: "UGA" },
{ name: "Ukraine", phone_code:	"380",	alpha_2_code: "UA", alpha_3_code: "UKR" },
{ name: "United Arab Emirates", phone_code:	"971",	alpha_2_code: "AE", alpha_3_code: "ARE" },
{ name: "United Kingdom", phone_code:	"44",	alpha_2_code: "GB", alpha_3_code: "GBR" },
{ name: "United States", phone_code:	"1",	alpha_2_code: "US", alpha_3_code: "USA" },
{ name: "Uruguay", phone_code:	"598",	alpha_2_code: "UY", alpha_3_code: "URY" },
{ name: "Uzbekistan", phone_code:	"998",	alpha_2_code: "UZ", alpha_3_code: "UZB" },
{ name: "Vanuatu", phone_code:	"678",	alpha_2_code: "VU", alpha_3_code: "VUT" },
{ name: "Vatican", phone_code:	"379",	alpha_2_code: "VA", alpha_3_code: "VAT" },
{ name: "Venezuela", phone_code:	"58",	alpha_2_code: "VE", alpha_3_code: "VEN" },
{ name: "Vietnam", phone_code:	"84",	alpha_2_code: "VN", alpha_3_code: "VNM" },
{ name: "Wallis and Futuna", phone_code:	"681",	alpha_2_code: "WF", alpha_3_code: "WLF" },
{ name: "Western Sahara", phone_code:	"212",	alpha_2_code: "EH", alpha_3_code: "ESH" },
{ name: "Yemen", phone_code:	"967",	alpha_2_code: "YE", alpha_3_code: "YEM" },
{ name: "Zambia", phone_code:	"260",	alpha_2_code: "ZM", alpha_3_code: "ZMB" },
{ name: "Zimbabwe", phone_code:	"263",	alpha_2_code: "ZW", alpha_3_code: "ZWE" },
])

### Addresses
puts('>> Creating Addresses')
Address.first_or_create([
  {
    address_line_1: "Rua das Flores, 123",
    address_line_2: "Apartamento 45",
    address_line_3: "Bairro das Rosas",
    postal_code: "1234-567",
    city: "Lisboa",
    state: "Lisboa",
    country_id: Country.find_by(name: "Portugal").id,
    latitude: "38.7169",
    longitude: "-9.1399"
  },
  {
    address_line_1: "Avenida dos Aliados, 456",
    address_line_2: "Sala 789",
    address_line_3: "Centro da Cidade",
    postal_code: "2345-678",
    city: "Porto",
    state: "Porto",
    country_id: Country.find_by(name: "Portugal").id,
    latitude: "41.1496",
    longitude: "-8.6110"
  },
  {
    address_line_1: "Praça da República, 789",
    address_line_2: "Edifício Central",
    address_line_3: "Zona Histórica",
    postal_code: "3456-789",
    city: "Coimbra",
    state: "Coimbra",
    country_id: Country.find_by(name: "Portugal").id,
    latitude: "40.2033",
    longitude: "-8.4103"
  }
])

### Locations
puts('>> Creating Locations')
park = LocationSubCategory.find_by(name: "Park") || LocationSubCategory.find(1)
garden = LocationSubCategory.find_by(name: "Garden") || LocationSubCategory.find(2)
square = LocationSubCategory.find_by(name: "Square") || LocationSubCategory.find(3)
Location.first_or_create([
  {
    name: "Parque das Necessidades",
    description: "Um parque encantador no coração de Lisboa, perfeito para piqueniques e encontros ao ar livre.",
    location_sub_category_id: park.id,
    location_category_id: park.location_category_id,
    address_id: Address.find_by(city: "Lisboa").id,
    notes: "O parque possui áreas de lazer, jardins bem cuidados e uma atmosfera tranquila, ideal para relaxar e desfrutar da natureza."
  },
  {
    name: "Jardim Botânico do Porto",
    description: "Um jardim botânico deslumbrante no Porto, com uma variedade de plantas exóticas e áreas de descanso.",
    location_sub_category_id: garden.id,
    location_category_id: garden.location_category_id,
    address_id: Address.find_by(city: "Porto").id,
    notes: "O jardim oferece um ambiente sereno, perfeito para passeios tranquilos e momentos de contemplação da natureza."
  },
  {
    name: "Praça do Comércio",
    description: "Uma praça icónica em Lisboa, conhecida por sua arquitetura impressionante e vista para o rio Tejo.",
    location_sub_category_id: square.id,
    location_category_id: square.location_category_id,
    address_id: Address.find_by(city: "Lisboa").id,
    notes: "A praça é um ponto de encontro popular, oferecendo uma atmosfera vibrante e oportunidades para eventos culturais e sociais."
  }
])

### People
puts('>> Creating People')
Person.first_or_create([
  {
    first_name: "João",
    last_name: "Silva",
    birth_date: Date.new(1990, 1, 1),
    phone_code: "351",
    phone_number: "912345678",
    email: "joao.silva@example.com",
    address_id: 1,
  },
  {
    first_name: "Maria",
    last_name: "Santos",
    birth_date: Date.new(1985, 5, 15),
    partner_person_id: 1,
    phone_code: "351",
    phone_number: "923456789",
    email: "maria.santos@example.com",
    address_id: 2,
  },
  {
    first_name: "Pedro",
    last_name: "Santos Silva",
    birth_date: Date.new(2010, 9, 30),
    phone_code: "351",
    phone_number: "934567890",
    email: "pedro.santos.silva@example.com",
    address_id: 3,
  }
])

### Filiations
puts('>> Creating Filiations')
Filiation.first_or_create([
  {
    parent_person_id: 1,
    child_person_id: 3,
  },
  {
    parent_person_id: 2,
    child_person_id: 3,
  }
])

### Restrictions
puts('>> Creating Restrictions')
Restriction.first_or_create([
  {
    name: "Peanut Allergy",
    description: "Pessoa com alergia a nozes e derivados.",
    avoidances: "Evitar alimentos que contenham nozes, amendoim e produtos derivados. Verificar rótulos de alimentos cuidadosamente para garantir que não haja contaminação cruzada.",
    treatments: "Em caso de exposição, administrar um anti-histamínico e, se necessário, usar um auto-injetor de epinefrina. Procurar atendimento médico imediatamente.",
    category: 2
  },
  {
    name: "Lactose Intolerance",
    description: "Pessoa com intolerância à lactose, incapaz de digerir adequadamente a lactose presente em produtos lácteos.",
    avoidances: "Evitar o consumo de leite e produtos lácteos, como queijo, iogurte e sorvete. Optar por alternativas sem lactose, como leite de amêndoa, soja ou aveia.",
    treatments: "Em caso de ingestão acidental, os sintomas podem ser aliviados com o uso de suplementos de lactase, que ajudam a digerir a lactose. Consultar um profissional de saúde para orientações adicionais.",
    category: 3
  },
])

### Personal Restrictions
puts('>> Creating Personal Restrictions')
PersonalRestriction.first_or_create([
  {
    person_id: 1,
    restriction_id: 1,
    severity: 3,
    notes: "João tem uma alergia severa a nozes, o que significa que mesmo uma pequena quantidade de nozes ou amendoim pode desencadear uma reação alérgica grave. Ele deve evitar completamente alimentos que contenham nozes e sempre carregar um auto-injetor de epinefrina para emergências."
  },
  {
    person_id: 2,
    restriction_id: 2,
    severity: 1,
    notes: "Maria tem uma intolerância moderada à lactose, o que significa que ela pode consumir pequenas quantidades de produtos lácteos sem apresentar sintomas graves. No entanto, é importante que ela evite o consumo excessivo de lactose para prevenir desconfortos gastrointestinais."
  }
])

### Users
puts('>> Creating Users')
User.first_or_create([
  {
    email: "joao.silva@example.com",
    password: "password1234joao",
    password_confirmation: "password1234joao",
    role: 0,
    status: 1,
    person_id: 1
  },
  {
    email: "maria.santos@example.com",
    password: "password1234maria",
    password_confirmation: "password1234maria",
    role: 1,
    status: 1,
    person_id: 2
  }
])

### Events
puts('>> Creating Events')
Event.first_or_create([
  {
    name: "Fim de Semana Secreto",
    description: "Um evento exclusivo para membros selecionados, oferecendo atividades únicas e experiências memoráveis.",
    budget: 80,
    recurrence: 30, # Mensal
    slug: "fim-de-semana-secreto",
    user_id: 1
  },
  {
    name: "Jantar de Amigos de Faculdade",
    description: "Reunião anual dos amigos da faculdade para relembrar os bons tempos e criar novas memórias juntos.",
    budget: 30,
    recurrence: 365, # Anual
    slug: "jantar-de-amigos-de-faculdade",
    user_id: 2
  },
  {
    name: "Aniversário da Avó",
    description: "Celebração especial para comemorar o aniversário da avó com toda a família reunida.",
    budget: 50,
    recurrence: 365, # Anual
    slug: "aniversario-da-avo",
    user_id: 2
  }
])

### Editions
puts('>> Creating Editions')
Edition.first_or_create([
  {
    event_id: 1,
    name: "Edição de Janeiro",
    description: "Primeira edição do ano, com atividades especiais para começar o ano com o pé direito.",
    budget: 80,
    slug: "edicao-de-janeiro",
    meeting_location_id: Location.find_by(name: "Parque das Necessidades").id,
    start_date: Date.new(2024, 1, 15),
    end_date: Date.new(2024, 1, 17),
    user_id: 1
  },
  {
    event_id: 1,
    name: "Edição de Fevereiro",
    description: "Segunda edição do ano, com foco em atividades ao ar livre e diversão em família.",
    budget: 80,
    slug: "edicao-de-fevereiro",
    meeting_location_id: Location.find_by(name: "Parque das Necessidades").id,
    start_date: Date.new(2024, 2, 20),
    end_date: Date.new(2024, 2, 22),
    user_id: 1
  },
  {
    event_id: 1,
    name: "Edição de Março",
    description: "Terceira edição do ano, com uma variedade de atividades para todos os gostos e idades.",
    budget: 80,
    slug: "edicao-de-marco",
    meeting_location_id: Location.find_by(name: "Parque das Necessidades").id,
    start_date: Date.new(2024, 3, 25),
    end_date: Date.new(2024, 3, 27),
    user_id: 1
  }
])

### Participants
puts('>> Creating Participants')
Participant.first_or_create([
  {
    person_id: 1,
    edition_id: 1,
    role: 1,
    status: 1,
    visibility_status: 1,
    payment_due: 50,
    payment_status: 1,
    invitation_date: Date.new(2024, 1, 1),
    response_date: Date.new(2024, 1, 5),
    notes: "João confirmou presença e está ansioso para participar do evento. Ele é um membro ativo e contribui regularmente para as atividades do grupo. Ele também é responsável por organizar a logística do transporte para o evento."
  },
  {
    person_id: 2,
    edition_id: 1,
    role: 2,
    status: 1,
    visibility_status: 1,
    payment_due: 80,
    payment_status: 0,
    invitation_date: Date.new(2024, 1, 1),
    response_date: Date.new(2024, 1, 5),
    notes: "Maria confirmou presença e está animada para participar do evento. Ela é uma pessoa sociável e gosta de se envolver em atividades em grupo. Ela também é responsável por organizar as refeições para o evento."
  },
  {
    person_id: 3,
    edition_id: 1,
    role: 2,
    status: 1,
    visibility_status: 1,
    payment_due: 0,
    payment_status: 2,
    invitation_date: Date.new(2024, 1, 1),
    response_date: Date.new(2024, 1, 5),
    notes: "Pedro confirmou presença e está empolgado para participar do evento. Ele é um jovem entusiasta que adora aventuras ao ar livre. Ele também é responsável por organizar as atividades recreativas para o evento."
  }
])

### Bookings
puts('>> Creating Bookings')
Booking.first_or_create([
  {
    edition_id: 3,
    name: "Reserva de Hotel",
    description: "Reserva de hotel para acomodar os participantes durante o evento.",
    location_id: 3,
    start_date: Date.new(2024, 3, 25),
    end_date: Date.new(2024, 3, 27),
    contact_first_name: "António",
    contact_last_name: "Antunes",
    contact_phone_code: "+351",
    contact_phone_number: "912345678",
    price_adult: 150.0,
    price_child: 75.0,
    price_total: 450.0,
    external_url: "https://hotelcentral.com/reserva/edicao-3",
    notes: "Hotel com todas as comodidades necessárias para os participantes. Dono do hotel vive no próprio hotel portanto pode ser contatado a qualquer momento para resolver quaisquer questões relacionadas à reserva.",
    visibility_status: 1,
    scheduled_status: 1,
    user_id: 1
  }
])

### Booking Participants
puts('>> Creating Booking Participants')
BookingParticipant.first_or_create([
  { booking_id: 1, participant_id: 1 },
  { booking_id: 1, participant_id: 2 },
  { booking_id: 1, participant_id: 3 }
])

### Posts
puts('>> Creating Posts')
Post.first_or_create([
  {
    title: "Bem-vindos ao Fim de Semana Secreto!",
    body: "Estamos muito felizes em anunciar o início do nosso evento mensal, o Fim de Semana Secreto. Este evento é uma oportunidade para todos os participantes se conhecerem melhor e aproveitarem momentos de diversão em grupo.",
    slug: "bem-vindos-ao-fim-de-semana-secreto",
    external_url: "https://example.com/posts/bem-vindos-ao-fim-de-semana-secreto",
    category: 2,
    user_id: 1
  },
  {
    title: "Dicas para aproveitar ao máximo o Fim de Semana Secreto",
    body: nil,
    slug: "dicas-para-aproveitar-ao-maximo-o-fim-de-semana-secreto",
    external_url: "https://example.com/posts/dicas-para-aproveitar-ao-maximo-o-fim-de-semana-secreto",
    category: 0,
    user_id: 1
  },
  {
    title: "Atividades confirmadas para a Edição de Janeiro",
    body: "Estamos animados para compartilhar as atividades confirmadas para a Edição de Janeiro do Fim de Semana Secreto. Preparem-se para um fim de semana cheio de diversão e aventuras!",
    slug: "atividades-confirmadas-para-a-edicao-de-janeiro",
    external_url: "https://example.com/posts/atividades-confirmadas-para-a-edicao-de-janeiro",
    category: 2,
    user_id: 1
  },
  {
    title: "Restaurante maravilha",
    body: "Se você está procurando um lugar para jantar durante o Fim de Semana Secreto, recomendamos o Restaurante Maravilha. Eles oferecem uma variedade de pratos deliciosos e um ambiente acolhedor, perfeito para desfrutar de uma refeição em grupo.",
    slug: "restaurante-maravilha",
    external_url: "https://example.com/posts/restaurante-maravilha",
    category: 2,
    user_id: 2
  }
])

### Event Posts
puts('>> Creating Event Posts')
EventPost.first_or_create([
  { event_id: 1, post_id: 1 },
])

### Edition Posts
puts('>> Creating Edition Posts')
EditionPost.first_or_create([
  { edition_id: 1, post_id: 2 },
  { edition_id: 1, post_id: 3 }
])

### Booking Posts
puts('>> Creating Booking Posts')
BookingPost.first_or_create([
  { booking_id: 1, post_id: 4 }
])

### Comments
puts('>> Creating Comments')
Comment.first_or_create([
  {
    post_id: 1,
    user_id: 2,
    body: "Estou muito animada para participar do Fim de Semana Secreto! Mal posso esperar para conhecer todos os outros participantes e aproveitar as atividades planejadas. Vai ser incrível!"
  },
  {
    post_id: 1,
    user_id: 1,
    body: "Eu também estou super empolgado para o Fim de Semana Secreto! Vai ser uma ótima oportunidade para fazer novas amizades e criar memórias inesquecíveis. Mal posso esperar para começar!"
  },
  {
    post_id: 2,
    user_id: 1,
    body: "Ótimas dicas para aproveitar ao máximo o Fim de Semana Secreto! Vou seguir todas elas para garantir que eu tenha a melhor experiência possível durante o evento."
  },
])

### Reactions
puts('>> Creating Reactions')
Reaction.first_or_create([
  { post_id: 1, comment_id: nil, user_id: 2, emoji: "👍" },
  { post_id: nil, comment_id: 1, user_id: 2, emoji: "❤️" },
  { post_id: nil, comment_id: 2, user_id: 1, emoji: "😊" },
  { post_id: 2, comment_id: nil, user_id: 1, emoji: "🇵🇹" }
])

### Items
puts('>> Creating Items')
Item.first_or_create([
  { event_id: 1, name: "Binóculos", description: nil },
  { event_id: 1, name: "Fato de Banho", description: nil },
  { event_id: 1, name: "Câmara Fotográfica", description: nil },
  { event_id: 1, name: "Mochila de Hidratação", description: nil },
  { event_id: 1, name: "Fato de Treino", description: nil },
  { event_id: 1, name: "Roupa Confortável", description: nil },
])

### Edition Items
puts('>> Creating Edition Items')
EditionItem.first_or_create([
  { edition_id: 1, item_id: 1, amount: 2, notes: "Binóculos de alta qualidade" },
  { edition_id: 1, item_id: 2, amount: 3, notes: "Fatos de banho para todas as idades" },
  { edition_id: 2, item_id: 3, amount: 1, notes: "Câmara fotográfica para capturar momentos especiais" },
  { edition_id: 2, item_id: 4, amount: 1, notes: "Mochilas de hidratação para todas as idades" },
  { edition_id: 3, item_id: 5, amount: 1, notes: "Fatos de treino para atividades ao ar livre" },
  { edition_id: 3, item_id: 6, amount: 1, notes: "Roupas confortáveis para relaxar e aproveitar o evento" },
])

### Vehicle Categories
puts('>> Creating Vehicle Categories')
VehicleCategory.first_or_create([
  { name: "Car" },
  { name: "Taxi" },
  { name: "Bus" },
  { name: "Van" },
  { name: "Caravan" },
  { name: "Truck" },
  { name: "Limosine" },
  { name: "Motorcycle" },
  { name: "Boat" },
  { name: "Cruise" },
  { name: "Yacht" },
  { name: "Ferry" },
  { name: "Submarine" },
  { name: "Canoe / Kayak" },
  { name: "Gondola" },
  { name: "Bicycle" },
  { name: "Scooter" },
  { name: "Airplane" },
  { name: "Helicopter" },
  { name: "Hot Air Balloon" },
  { name: "Train" },
  { name: "Subway" },
  { name: "Tram" },
  { name: "Cable Car" }
])

### Vehicle Brands
puts('>> Creating Vehicle Brands')
car_id = VehicleCategory.find_by(name: "Car").id
VehicleBrand.first_or_create([
  { name: "Abarth", vehicle_category_id: car_id },
  { name: "AC", vehicle_category_id: car_id },
  { name: "AK", vehicle_category_id: car_id },
  { name: "Alfa Romeo", vehicle_category_id: car_id },
  { name: "Allard", vehicle_category_id: car_id },
  { name: "Alpine", vehicle_category_id: car_id },
  { name: "Alvis", vehicle_category_id: car_id },
  { name: "Ariel", vehicle_category_id: car_id },
  { name: "Aston Martin", vehicle_category_id: car_id },
  { name: "Audi", vehicle_category_id: car_id },
  { name: "Austin", vehicle_category_id: car_id },
  { name: "BAC", vehicle_category_id: car_id },
  { name: "Beauford", vehicle_category_id: car_id },
  { name: "Bentley", vehicle_category_id: car_id },
  { name: "Blitzworld", vehicle_category_id: car_id },
  { name: "BMW", vehicle_category_id: car_id },
  { name: "Bugatti", vehicle_category_id: car_id },
  { name: "Buick", vehicle_category_id: car_id },
  { name: "BYD", vehicle_category_id: car_id },
  { name: "Cadillac", vehicle_category_id: car_id },
  { name: "Carbodies", vehicle_category_id: car_id },
  { name: "Caterham", vehicle_category_id: car_id },
  { name: "Changan", vehicle_category_id: car_id },
  { name: "Chery", vehicle_category_id: car_id },
  { name: "Chesil", vehicle_category_id: car_id },
  { name: "Chevrolet", vehicle_category_id: car_id },
  { name: "Chrysler", vehicle_category_id: car_id },
  { name: "Citroen", vehicle_category_id: car_id },
  { name: "Corbin", vehicle_category_id: car_id },
  { name: "Corvette", vehicle_category_id: car_id },
  { name: "CUPRA", vehicle_category_id: car_id },
  { name: "Dacia", vehicle_category_id: car_id },
  { name: "Daewoo", vehicle_category_id: car_id },
  { name: "Daihatsu", vehicle_category_id: car_id },
  { name: "Daimler", vehicle_category_id: car_id },
  { name: "David Brown", vehicle_category_id: car_id },
  { name: "Dax", vehicle_category_id: car_id },
  { name: "De Tomaso", vehicle_category_id: car_id },
  { name: "Dodge", vehicle_category_id: car_id },
  { name: "DS AUTOMOBILES", vehicle_category_id: car_id },
  { name: "E-COBRA", vehicle_category_id: car_id },
  { name: "Ferrari", vehicle_category_id: car_id },
  { name: "Fiat", vehicle_category_id: car_id },
  { name: "Fisker", vehicle_category_id: car_id },
  { name: "Ford", vehicle_category_id: car_id },
  { name: "Gardner Douglas", vehicle_category_id: car_id },
  { name: "Geely", vehicle_category_id: car_id },
  { name: "Genesis", vehicle_category_id: car_id },
  { name: "GMC", vehicle_category_id: car_id },
  { name: "Great Wall", vehicle_category_id: car_id },
  { name: "GWM", vehicle_category_id: car_id },
  { name: "Heathcliff", vehicle_category_id: car_id },
  { name: "Honda", vehicle_category_id: car_id },
  { name: "Hummer", vehicle_category_id: car_id },
  { name: "Hyundai", vehicle_category_id: car_id },
  { name: "INEOS", vehicle_category_id: car_id },
  { name: "Infiniti", vehicle_category_id: car_id },
  { name: "Isuzu", vehicle_category_id: car_id },
  { name: "JAECOO", vehicle_category_id: car_id },
  { name: "Jaguar", vehicle_category_id: car_id },
  { name: "JBA", vehicle_category_id: car_id },
  { name: "Jeep", vehicle_category_id: car_id },
  { name: "Jensen", vehicle_category_id: car_id },
  { name: "KGM", vehicle_category_id: car_id },
  { name: "Kia", vehicle_category_id: car_id },
  { name: "Koenigsegg", vehicle_category_id: car_id },
  { name: "KTM", vehicle_category_id: car_id },
  { name: "Lada", vehicle_category_id: car_id },
  { name: "Lamborghini", vehicle_category_id: car_id },
  { name: "Lancia", vehicle_category_id: car_id },
  { name: "Land Rover", vehicle_category_id: car_id },
  { name: "LDV", vehicle_category_id: car_id },
  { name: "Leapmotor", vehicle_category_id: car_id },
  { name: "LEVC", vehicle_category_id: car_id },
  { name: "Lexus", vehicle_category_id: car_id },
  { name: "Leyland", vehicle_category_id: car_id },
  { name: "Lincoln", vehicle_category_id: car_id },
  { name: "Lister", vehicle_category_id: car_id },
  { name: "London Taxis International", vehicle_category_id: car_id },
  { name: "Lotus", vehicle_category_id: car_id },
  { name: "Mahindra", vehicle_category_id: car_id },
  { name: "Maserati", vehicle_category_id: car_id },
  { name: "MAXUS", vehicle_category_id: car_id },
  { name: "Maybach", vehicle_category_id: car_id },
  { name: "Mazda", vehicle_category_id: car_id },
  { name: "McLaren", vehicle_category_id: car_id },
  { name: "Mercedes-Benz", vehicle_category_id: car_id },
  { name: "MEV", vehicle_category_id: car_id },
  { name: "MG", vehicle_category_id: car_id },
  { name: "Micro", vehicle_category_id: car_id },
  { name: "Mills Extreme Vehicles", vehicle_category_id: car_id },
  { name: "MINI", vehicle_category_id: car_id },
  { name: "Mitsubishi", vehicle_category_id: car_id },
  { name: "MOKE", vehicle_category_id: car_id },
  { name: "Morgan", vehicle_category_id: car_id },
  { name: "Morris", vehicle_category_id: car_id },
  { name: "Nardini", vehicle_category_id: car_id },
  { name: "Nissan", vehicle_category_id: car_id },
  { name: "Noble", vehicle_category_id: car_id },
  { name: "OMODA", vehicle_category_id: car_id },
  { name: "Opel", vehicle_category_id: car_id },
  { name: "Pagani", vehicle_category_id: car_id },
  { name: "Panther", vehicle_category_id: car_id },
  { name: "Perodua", vehicle_category_id: car_id },
  { name: "Peugeot", vehicle_category_id: car_id },
  { name: "Pilgrim", vehicle_category_id: car_id },
  { name: "Plymouth", vehicle_category_id: car_id },
  { name: "Polestar", vehicle_category_id: car_id },
  { name: "Pontiac", vehicle_category_id: car_id },
  { name: "Porsche", vehicle_category_id: car_id },
  { name: "Proton", vehicle_category_id: car_id },
  { name: "Radical", vehicle_category_id: car_id },
  { name: "Ram", vehicle_category_id: car_id },
  { name: "RBW", vehicle_category_id: car_id },
  { name: "Reliant", vehicle_category_id: car_id },
  { name: "Renault", vehicle_category_id: car_id },
  { name: "Rolls-Royce", vehicle_category_id: car_id },
  { name: "Rover", vehicle_category_id: car_id },
  { name: "RUF", vehicle_category_id: car_id },
  { name: "Saab", vehicle_category_id: car_id },
  { name: "SEAT", vehicle_category_id: car_id },
  { name: "Shelby", vehicle_category_id: car_id },
  { name: "Skoda", vehicle_category_id: car_id },
  { name: "Skywell", vehicle_category_id: car_id },
  { name: "Smart", vehicle_category_id: car_id },
  { name: "SsangYong", vehicle_category_id: car_id },
  { name: "Standard", vehicle_category_id: car_id },
  { name: "Subaru", vehicle_category_id: car_id },
  { name: "Sunbeam", vehicle_category_id: car_id },
  { name: "Suzuki", vehicle_category_id: car_id },
  { name: "Tesla", vehicle_category_id: car_id },
  { name: "Tiger", vehicle_category_id: car_id },
  { name: "Tornado", vehicle_category_id: car_id },
  { name: "Toyota", vehicle_category_id: car_id },
  { name: "Triumph", vehicle_category_id: car_id },
  { name: "TVR", vehicle_category_id: car_id },
  { name: "Ultima", vehicle_category_id: car_id },
  { name: "Vauxhall", vehicle_category_id: car_id },
  { name: "Volkswagen", vehicle_category_id: car_id },
  { name: "Volvo", vehicle_category_id: car_id },
  { name: "VRS", vehicle_category_id: car_id },
  { name: "Westfield", vehicle_category_id: car_id },
  { name: "XPENG", vehicle_category_id: car_id },
  { name: "Zenos", vehicle_category_id: car_id }
])

### Vehicle Models
puts('>> Creating Vehicle Models')
audi_id = VehicleBrand.find_by(name: "Audi").id
VehicleModel.first_or_create([
  { name: "Audi F103", vehicle_brand_id: audi_id },
  { name: "Audi 100", vehicle_brand_id: audi_id },
  { name: "Audi 80", vehicle_brand_id: audi_id },
  { name: "Audi 50", vehicle_brand_id: audi_id },
  { name: "Audi 100", vehicle_brand_id: audi_id },
  { name: "Audi 100 Coupé S", vehicle_brand_id: audi_id },
  { name: "Audi 80", vehicle_brand_id: audi_id },
  { name: "Audi 200", vehicle_brand_id: audi_id },
  { name: "Audi 100", vehicle_brand_id: audi_id },
  { name: "Audi 80 quattro", vehicle_brand_id: audi_id },
  { name: "Audi 5+5", vehicle_brand_id: audi_id },
  { name: "Audi 90", vehicle_brand_id: audi_id },
  { name: "Audi Coupé", vehicle_brand_id: audi_id },
  { name: "Audi Sport quattro", vehicle_brand_id: audi_id },
  { name: "Audi 80", vehicle_brand_id: audi_id },
  { name: "Audi 90", vehicle_brand_id: audi_id },
  { name: "Audi V8", vehicle_brand_id: audi_id },
  { name: "Audi Coupé", vehicle_brand_id: audi_id },
  { name: "Audi 100/A6", vehicle_brand_id: audi_id },
  { name: "Audi 80", vehicle_brand_id: audi_id },
  { name: "Audi Cabriolet", vehicle_brand_id: audi_id },
  { name: "Audi A6 (C4)", vehicle_brand_id: audi_id },
  { name: "Audi A8 (D2)", vehicle_brand_id: audi_id },
  { name: "Audi A4 (B5)", vehicle_brand_id: audi_id },
  { name: "Audi A3 (8L)", vehicle_brand_id: audi_id },
  { name: "Audi A6 (C5)", vehicle_brand_id: audi_id },
  { name: "Audi Duo", vehicle_brand_id: audi_id },
  { name: "Audi TT (Mk1)", vehicle_brand_id: audi_id },
  { name: "Audi A2", vehicle_brand_id: audi_id },
  { name: "Audi 90", vehicle_brand_id: audi_id },
  { name: "Audi A4 (B6)", vehicle_brand_id: audi_id },
  { name: "Audi A8 (D3)", vehicle_brand_id: audi_id },
  { name: "Audi A3 (8P)", vehicle_brand_id: audi_id },
  { name: "Audi A4 (B7)", vehicle_brand_id: audi_id },
  { name: "Audi A6 (C6)", vehicle_brand_id: audi_id },
  { name: "Audi Q7 (4L)", vehicle_brand_id: audi_id },
  { name: "Audi TT (Mk2)", vehicle_brand_id: audi_id },
  { name: "Audi A4 (B8)", vehicle_brand_id: audi_id },
  { name: "Audi A5 (8T/8F)", vehicle_brand_id: audi_id },
  { name: "Audi Q5 (8R)", vehicle_brand_id: audi_id },
  { name: "Audi R8 (Type 42)", vehicle_brand_id: audi_id },
  { name: "Audi A1 (8X)", vehicle_brand_id: audi_id },
  { name: "Audi A7 (4G8)", vehicle_brand_id: audi_id },
  { name: "Audi A8 (D4)", vehicle_brand_id: audi_id },
  { name: "Audi A6 (C7)", vehicle_brand_id: audi_id },
  { name: "Audi Q3 (8U)", vehicle_brand_id: audi_id },
  { name: "Audi A3 (8V)", vehicle_brand_id: audi_id },
  { name: "Audi TT (Mk3)", vehicle_brand_id: audi_id },
  { name: "Audi A4 (B9)", vehicle_brand_id: audi_id },
  { name: "Audi Q7 (4M)", vehicle_brand_id: audi_id },
  { name: "Audi R8 (Type 4S)", vehicle_brand_id: audi_id },
  { name: "Audi A5 (F5)", vehicle_brand_id: audi_id },
  { name: "Audi Q5 (FY)", vehicle_brand_id: audi_id },
  { name: "Audi Q2", vehicle_brand_id: audi_id },
  { name: "Audi A8 (D5)", vehicle_brand_id: audi_id },
  { name: "Audi Q3 (F3)", vehicle_brand_id: audi_id },
  { name: "Audi Q8", vehicle_brand_id: audi_id },
  { name: "Audi A6 (C8)", vehicle_brand_id: audi_id },
  { name: "Audi A7 (4K8)", vehicle_brand_id: audi_id },
  { name: "Audi Q8 e-tron", vehicle_brand_id: audi_id },
  { name: "Audi A1 (GB)", vehicle_brand_id: audi_id },
  { name: "Audi A3 (8Y)", vehicle_brand_id: audi_id },
  { name: "Audi e-tron GT", vehicle_brand_id: audi_id },
  { name: "Audi Q4 e-tron", vehicle_brand_id: audi_id },
  { name: "Audi Q5 e-tron", vehicle_brand_id: audi_id },
  { name: "Audi Q6", vehicle_brand_id: audi_id },
  { name: "Audi Q6 e-tron", vehicle_brand_id: audi_id },
  { name: "Audi A5 (B10)", vehicle_brand_id: audi_id },
  { name: "Audi A6 e-tron", vehicle_brand_id: audi_id },
  { name: "Audi Q5 (GU)", vehicle_brand_id: audi_id },
  { name: "Audi A6 (C9)", vehicle_brand_id: audi_id },
  { name: "Audi Q3 (FJ)", vehicle_brand_id: audi_id },
  { name: "Audi S2 Coupé B3", vehicle_brand_id: audi_id },
  { name: "Audi S4 C4", vehicle_brand_id: audi_id },
  { name: "Audi S2 Avant B4", vehicle_brand_id: audi_id },
  { name: "Audi S2 Sedan B4", vehicle_brand_id: audi_id },
  { name: "Audi Avant RS 2 P1", vehicle_brand_id: audi_id },
  { name: "Audi S8 D2", vehicle_brand_id: audi_id },
  { name: "Audi S6 C4", vehicle_brand_id: audi_id },
  { name: "Audi S4 quattro B5", vehicle_brand_id: audi_id },
  { name: "Audi S6 C5", vehicle_brand_id: audi_id },
  { name: "Audi S3 8L", vehicle_brand_id: audi_id },
  { name: "Audi RS 4 B5", vehicle_brand_id: audi_id },
  { name: "Audi S4 B6", vehicle_brand_id: audi_id },
  { name: "Audi RS 6 C5", vehicle_brand_id: audi_id },
  { name: "Audi S3 8P", vehicle_brand_id: audi_id },
  { name: "Audi RS 4 B7", vehicle_brand_id: audi_id },
  { name: "Audi S4 B7", vehicle_brand_id: audi_id },
  { name: "Audi S8 D3", vehicle_brand_id: audi_id },
  { name: "Audi S5 B8", vehicle_brand_id: audi_id },
  { name: "Audi R8 42", vehicle_brand_id: audi_id },
  { name: "Audi RS 6 C6", vehicle_brand_id: audi_id },
  { name: "Audi TTS", vehicle_brand_id: audi_id },
  { name: "Audi TT RS 8J", vehicle_brand_id: audi_id },
  { name: "Audi S4 B8", vehicle_brand_id: audi_id },
  { name: "Audi RS5 8T", vehicle_brand_id: audi_id },
  { name: "Audi S8 D4", vehicle_brand_id: audi_id },
  { name: "Audi R8 GT", vehicle_brand_id: audi_id },
  { name: "Audi RS 4 B8", vehicle_brand_id: audi_id },
  { name: "Audi S3 8V", vehicle_brand_id: audi_id },
  { name: "Audi S7 4G", vehicle_brand_id: audi_id },
  { name: "Audi S5 B8.5", vehicle_brand_id: audi_id },
  { name: "Audi RS 6 C7", vehicle_brand_id: audi_id },
  { name: "Audi RS 7 C7", vehicle_brand_id: audi_id },
  { name: "Audi S1 8X", vehicle_brand_id: audi_id },
  { name: "Audi R8 4S", vehicle_brand_id: audi_id },
  { name: "Audi TT RS 8S", vehicle_brand_id: audi_id },
  { name: "Audi S4 B9", vehicle_brand_id: audi_id },
  { name: "Audi S5 B9", vehicle_brand_id: audi_id },
  { name: "Audi RS5", vehicle_brand_id: audi_id },
  { name: "Audi RS 4 B9", vehicle_brand_id: audi_id },
  { name: "Audi RS ", vehicle_brand_id: audi_id },
  { name: "Audi RS ", vehicle_brand_id: audi_id },
  { name: "Audi S", vehicle_brand_id: audi_id },
  { name: "Audi S3 8Y", vehicle_brand_id: audi_id }
])

### Vehicle Fuels
puts('>> Creating Vehicle Fuels')
VehicleFuel.first_or_create([
  { name: "Gasoline" },
  { name: "Diesel" },
  { name: "Electric" },
  { name: "Hybrid" },
  { name: "Hydrogen" },
  { name: "Ethanol" }
])

### Vehicles
puts('>> Creating Vehicles')
audi_a3_id = VehicleModel.find_by(name: "Audi A3 (8V)").id
Vehicle.first_or_create({
  seats: 5,
  license_plate: "12-RB-12",
  fuel_consumption: 6.5,
  vehicle_category_id: car_id,
  vehicle_brand_id: audi_id,
  vehicle_model_id: audi_a3_id,
  vehicle_fuel_id: VehicleFuel.find_by(name: "Diesel").id,
  owner_person_id: 1
})

### Rides
puts('>> Creating Rides')
Ride.first_or_create({
  vehicle_id: Vehicle.first.id,
  edition_id: Edition.first.id,
  fuel_price: 1.8,
  distance: 150.0,
  notes: "João vai conduzir o Audi A3 para a Edição de Janeiro."
})

### Ride Participants
puts('>> Creating Ride Participants')
RideParticipant.first_or_create([
  { ride_id: 1, participant_id: 1, role: 0 },
  { ride_id: 1, participant_id: 2, role: 1 },
  { ride_id: 1, participant_id: 3, role: 1 }
])

### Polls
puts('>> Creating Polls')
Poll.first_or_create({
  edition_id: Edition.first.id,
  user_id: 1,
  closing_date: Date.new(2026, 1, 10),
})

### Poll Questions
puts('>> Creating Poll Questions')
PollQuestion.first_or_create([
  {
    poll_id: 1,
    body: "Qual atividade vocês preferem para a Edição de Janeiro?",
  },
  {
    poll_id: 1,
    body: "Qual é a melhor data para a Edição de Janeiro?",
  }
])

### Poll Answers
puts('>> Creating Poll Answers')
PollAnswer.first_or_create([
  {
    poll_question_id: 1,
    body: "Caminhada na Natureza",
    user_id: 1
  },
  {
    poll_question_id: 1,
    body: "Visita a um Museu",
    user_id: 2
  },
  {
    poll_question_id: 2,
    body: "15 a 17 de Janeiro",
    user_id: 2
  },
  {
    poll_question_id: 2,
    body: "22 a 24 de Janeiro",
    user_id: 1
  }
])
