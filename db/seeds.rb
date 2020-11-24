# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require "open-uri"
require "open-uri"

# spots seeds


  puts "wiping out spots seeds"

  30.times do |i|
    printf(".", i)
    sleep(0.05)
  end

  1.times do |i|
    sleep(1.0)
    printf("", i)
  end

  Spot.destroy_all
  puts "all spots ate shit"

  1.times do |i|
    sleep(1.0)
    printf("", i)
  end

  puts "generating spots"

  1.times do |i|
    sleep(1.0)
    printf("", i)
  end

  70.times do |i|
    printf("🤙", i)
    sleep(0.05)
  end

  spot1 = Spot.new(
  latitude: "47.8408",
  longitude: "-4.3512",
  name: "La Torche",
  description: "Seminal Brittany surfspot with ultra-consistent, walled-up peak breaking beside rocky headland. Shorter but hollower rights break into the rip known as the elevator which flows straight to the peak. Lefts speed down the beach, but paddle back can be gruelling, so think about walking around to the rip. Many more breaks further north along beach at Tronoën or Penhors and mellow rights at the La Torche point at the end of Audierne Bay.",
  webcam_link: "none",
  windy_id: "not assigned",
  msw_id: "72",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217347/Salt/La-Torche-right_x9ihm6.webp'
  file = URI.open(link)
  spot1.photos.attach(io:file, filename:"La-Torche-main",content_type: 'image/webp')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217347/Salt/La-Torche-Main_lpcur9.jpg'
  file = URI.open(link)
  spot1.photos.attach(io:file, filename:"La-Torche-second",content_type: 'image/jpg')

  spot1.save!


  spot2 = Spot.new(
  latitude: "48.3704",
  longitude: "-4.7663",
  name: "Blancs Sablons",
  description: "A large cove offering little else than a sloppy beach break that closes out easily. Filters out big SW swell and wind. Beginners will enjoy the space.",
  webcam_link: "none",
  windy_id: "not assigned",
  msw_id: "74",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217346/Salt/Blancs-Sablons-main_ybabd0.jpg'
  file = URI.open(link)
  spot2.photos.attach(io:file, filename:"Blancs-Sablons-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217346/Salt/Blancs-Sablons-rigth_pcayc5.jpg'
  file = URI.open(link)
  spot2.photos.attach(io:file, filename:"Blancs-Sablons-second",content_type: 'image/jpg')

  spot2.save!



  spot3 = Spot.new(
  latitude: "49.4812",
  longitude: "-1.8474",
  name: "Plage du Sillon",
  description: "St Malo’s main beach is surfed on SW storms, best peaks next to la Hoguette groin. Webcam.",
  webcam_link: "https://www.youtube.com/watch?v=OetL01QjfBs&feature=emb_title",
  windy_id: "not assigned",
  msw_id: "78",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217349/Salt/Sillon_main_xezznn.jpg'
  file = URI.open(link)
  spot3.photos.attach(io:file, filename:"Le-Sillon-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217349/Salt/Sillon-left_o86tsm.jpg'
  file = URI.open(link)
  spot3.photos.attach(io:file, filename:"Le-Sillon-second",content_type: 'image/jpg')


  spot3.save!

  spot4 = Spot.new(
  latitude: "48.64",
  longitude: "-1.4474",
  name: "Pors Ar Villec Locquirec",
  description: "‘Porza’ is the most consistent spot in the laid-back surf area of Locquirec. Fast and hollow over the sand-covered reef when the NW swell hits or clean little longboard peelers when small and groomed by any S wind.",
  webcam_link: "https://www.youtube.com/watch?v=baURl-dylZY",
  windy_id: "not assigned",
  msw_id: "126",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217349/Salt/Pors_ars_ville_right_wsdhgs.jpg'
  file = URI.open(link)
  spot4.photos.attach(io:file, filename:"Pors-ars-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217349/Salt/Pors_ars_ville_main_wdzz18.jpg'
  file = URI.open(link)
  spot4.photos.attach(io:file, filename:"Pors-ars-second",content_type: 'image/jpg')

  spot4.save!

  spot5 = Spot.new(
  latitude: "48.0465",
  longitude:  "-4.71",
  name: "Baie des Trepasses",
  description: "A good beachbreak with long rides when the conditions are ideal: low tide and a small W swell. This impressive cove picks up any swell going, churning out some long walls and also occasionally some hefty barrels off the high tide rock at the north end. There will be a crowd on small swell weekends, but there are plenty of easy waves stretched across the bay for all abilities.",
  webcam_link: "https://www.youtube.com/watch?v=l-shw7kIn7M" "https://www.youtube.com/watch?v=r7w9vNhbwbM",
  windy_id: "not assigned",
  msw_id: "73",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217346/Salt/baie-trepasses-main_srpvs9.jpg'
  file = URI.open(link)
  spot5.photos.attach(io:file, filename:"baie-trepasses-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217346/Salt/baie-trepasses-surf_esx8ub.jpg'
  file = URI.open(link)
  spot5.photos.attach(io:file, filename:"baie-trepasses-second",content_type: 'image/jpg')

  spot5.save!

  spot6 = Spot.new(
  latitude: "48.6575",
  longitude: "-2.3614",
  name: "Cap Frehel",
  description: "A concentration of some of the best spots in Brittany, with some hollow and powerful waves on a 2km stretch. Top-to-bottom, hard breathing barrels when a WSW swell meets an E wind. Port-Blanc is the first bay, gets some N wind shelter from a cliff and will probably be the busiest spot. Port Marie breaks far offshore and Port-Rhu is a well-defined, localised peak, while Port-Bara is more accessible. Some reef anchors the sandbars and large clusters of rock affect the line-up at high tides, so exit before dead high.",
  webcam_link: "none",
  windy_id: "not assigned",  msw_id: "1579",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217347/Salt/cap-frehel-right_lkdps4.jpg'
  file = URI.open(link)
  spot6.photos.attach(io:file, filename:"cap-frehel-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217346/Salt/cap-frehel-main_qtjqwn.jpg'
  file = URI.open(link)
  spot6.photos.attach(io:file, filename:"cap-frehel-second",content_type: 'image/jpg')

  spot6.save!

  spot7 = Spot.new(
  latitude: "47.5161",
  longitude: "-3.1537",
  name: "La Cote Sauvage",
  description: "A concentration of some of the best spots in Brittany, with some hollow and powerful waves on a 2km stretch. Top-to-bottom, hard breathing barrels when a WSW swell meets an E wind. Port-Blanc is the first bay, gets some N wind shelter from a cliff and will probably be the busiest spot. Port Marie breaks far offshore and Port-Rhu is a well-defined, localised peak, while Port-Bara is more accessible. Some reef anchors the sandbars and large clusters of rock affect the line-up at high tides, so exit before dead high.",
  webcam_link: "none",
  windy_id: "not assigned",
  msw_id: "1556",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217347/Salt/cote-sauvage-main_muvpmz.jpg'
  file = URI.open(link)
  spot7.photos.attach(io:file, filename:"cote-sauvage-main",content_type: 'image/jpg')

  spot7.save!

  spot8 = Spot.new(
  latitude: "47.584",
  longitude: "-3.1466",
  name: "Penthievre",
  description: "Between Kerhillio and the isthmus of Penthièvre, a long stretch of sheltered beachbreaks can be good when the tide is high on the Côte Sauvage. Won't handle too much size, but there could be some nice walls among the close-outs. Longboarders frequent Sainte Barbe to the north, beginners favour Les Crevettes or the always smaller Palissades. Vibes are good, even at the famous Tata Beach.",
  webcam_link: "none",
  windy_id: "not assigned",
  msw_id: "4412",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217348/Salt/Penthievre-Ocean_nvcpgp.jpg'
  file = URI.open(link)
  spot8.photos.attach(io:file, filename:"Penthievre-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217348/Salt/Penthievre-main_hdccfy.jpg'
  file = URI.open(link)
  spot8.photos.attach(io:file, filename:"Penthievre-second",content_type: 'image/jpg')

  spot8.save!

  spot9 = Spot.new(
  latitude: "47.7531",
  longitude: "-3.5143",
  name: "Plage du Loch",
  description: "Together with Guidel’s main beach this is the most consistent and therefore the most surfed spot around. Not the hollowest spot, but nice slashable walls and a mix of sandbars that keeps the crowd happy from low to mid tide. Fort Bloqué is sloppier, but good for beginners and longboards while Les Moules or Maeva provide high tide reef action.",
  webcam_link: "https://www.youtube.com/watch?v=B9-ZvzzKO-I" "https://www.youtube.com/watch?v=TP5LJd1KyWI",
  windy_id: "not assigned",
  msw_id: "1557",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217348/Salt/Plage-du-loch-main_sgfxbh.jpg'
  file = URI.open(link)
  spot9.photos.attach(io:file, filename:"Plage-du-loch-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217348/Salt/Plage-du-loch-surf_kpxmu2.jpg'
  file = URI.open(link)
  spot9.photos.attach(io:file, filename:"Plage-du-loch-second",content_type: 'image/jpg')

  spot9.save!

  spot10 = Spot.new(
  latitude: "48.3378",
  longitude: "-4.6177",
  name: "Le Petit Minou",
  description: "A hollow beachbreak with more rocks on the southern part known as ‘Les Moules’. Fun, curvy walls and smackable lips appear on any S-NW swell with any N wind offshore. Low tide only spot just helps to concentrate the extreme weekend crowds, due to Brest’s proximity.",
  webcam_link: "https://www.youtube.com/channel/UCfkbmwi67lrETUqnOmf-Hqw",
  windy_id: "not assigned",
  msw_id: "1520",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217348/Salt/Petit_minou-surf_lja5iz.jpg'
  file = URI.open(link)
  spot10.photos.attach(io:file, filename:"petit-minou-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217348/Salt/petit-minou-main_jzfur3.webp'
  file = URI.open(link)
  spot10.photos.attach(io:file, filename:"petit-minou-second",content_type: 'image/webp')

  spot10.save!

  spot11 = Spot.new(
  latitude: "48.8242",
  longitude: "-3.3542",
  name: "Trestraou",
  description: "Perros Guirec locals enjoy a hollow beachbreak right in the city during westerly storms, thanks to it's tucked-in, northeast-facing position. An outside reef peak will rear up some rights in big swells. The pocket beach to the east holds the inconsistent and often crowded righthander of Pors Nevez over rock and sand, where more S in the wind and low to mid tide is needed.",
  webcam_link: "https://www.youtube.com/watch?v=ui_9qAoosls",
  windy_id: "not assigned",
  msw_id: "77",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217350/Salt/Testraou-right-view_cataeu.jpg'
  file = URI.open(link)
  spot11.photos.attach(io:file, filename:"Testraou-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217350/Salt/Trestraou_main_bdtrts.jpg'
  file = URI.open(link)
  spot11.photos.attach(io:file, filename:"Testraou-second",content_type: 'image/jpg')

  spot11.save!

  spot12 = Spot.new(
  latitude: "48.6392",
  longitude: "-2.1215",
  name: "Les Longchamps",
  description: "A friendly surfers’ hub, the beach is wide and good banks can provide hollow waves or the more common onshore mushburgers. Favours rights and a spring incoming tide will jack up the wave heights. For a change check the capricious Garde-Guerin reefs, which will have some push over the scattered rock sections on a moderate W swell and any S wind will be offshore. Out on the western headland, the awesome but treacherous Dame Jouanne ledge sucks and slams the rock shelf at low, challenging the most competent surfers and tight local crew.",
  webcam_link: "none",
  windy_id: "not assigned",
  msw_id: "1578",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217350/Salt/st-lu-longchamps-surf_yyzyjh.jpg'
  file = URI.open(link)
  spot12.photos.attach(io:file, filename:"st-lu-longchamps-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217350/Salt/st-lu-longchamps-main_ii4vu5.webp'
  file = URI.open(link)
  spot12.photos.attach(io:file, filename:"st-lu-longchamps-second",content_type: 'image/webp')

  spot12.save!

  spot13 = Spot.new(
  latitude: "48.204",
  longitude: "-4.5578",
  name: "La Palue",
  description: "Wide open, west-facing beachbreak that picks up all available swells. Usually messy and weaker at low tide before lining up on the push past mid. Long walls and the odd barrel section make it a fun intermediate spot.",
  webcam_link: "none",
  windy_id: "not assigned",
  msw_id: "1524",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217349/Salt/plage-palue-left_ykaqmi.jpg'
  file = URI.open(link)
  spot13.photos.attach(io:file, filename:"plage-palue-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217349/Salt/plage-palue-main_i8kxw1.jpg'
  file = URI.open(link)
  spot13.photos.attach(io:file, filename:"plage-palue-second",content_type: 'image/jpg')

  spot13.save!

  spot14 = Spot.new(
  latitude: "48.57",
  longitude: "-4.65",
  name: "Lampaul Ploudalmezeau",
  description: "Covering a range of spots but giving wind reports based on the south east offshore required at Penfoul.",
  webcam_link: "https://www.youtube.com/watch?v=XCvqJ0_SxUs",
  windy_id: "not assigned",
  msw_id: "75",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217347/Salt/Lampaul-Ploudalmezeau-surf_njzdfh.jpg'
  file = URI.open(link)
  spot14.photos.attach(io:file, filename:"Lampaul-Ploudalmezeau-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217347/Salt/Lampaul-Ploudalmezeau-main_nvfb2l.jpg'
  file = URI.open(link)
  spot14.photos.attach(io:file, filename:"Lampaul-Ploudalmezeau-second",content_type: 'image/jpg')

  spot14.save!

  spot15 = Spot.new(
  latitude: "48.1094",
  longitude: "4.3619",
  name: "Les Rochees Blanches",
  description: "A very good left a.k.a. Roches Blanches, with a rocky take-off, followed by a long spinning wall. It needs a big swell and can get perfect in a SW storm. Handles W winds.
  Very hot locals. With consistency as low as 2 and crowds as high as 9 when it does finally break, it's no wonder there's some tension in the water. Freecamping the carparks around Douarnenez risks a ticket in summer.
  I'd have to kill you... but Treboul is a good hint. Freecamping the carparks around Douarnenez risks a ticket in summer.",
  webcam_link: "https://www.youtube.com/watch?v=dLGOc8ZfWvU",
  windy_id: "not assigned",
  msw_id: "1171",
  windguru_id: "not assigned",
  surfreport_id: "not assigned",
  )

  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217347/Salt/Les-roches-blanches-surf_nstupf.jpg'
  file = URI.open(link)
  spot15.photos.attach(io:file, filename:"roches-blanches-main",content_type: 'image/jpg')
  link = 'https://res.cloudinary.com/jlc35/image/upload/v1606217347/Salt/Les-roches-blanches-main_o4uvrb.webp'
  file = URI.open(link)
  spot15.photos.attach(io:file, filename:"roches-blanches-second",content_type: 'image/webp')

  spot15.save!

   1.times do |i|
    sleep(0.5)
    printf("", i)
  end
  puts "spots generated yeeeeeew 🤙"
