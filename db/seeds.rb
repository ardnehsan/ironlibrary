if Author.all.blank?
  at = Author.create first_name: "Akira", last_name: "Toriyama", bio: "Lives in Kiyosu, Japan."
  hm = Author.create first_name: "Hiro", last_name: "Mashima", bio: "Lives in Nagano, Japan."
  yt = Author.create first_name: "Yoshihiro", last_name: "Togashi", bio: "Lives in Yamagata, Japan."
  mo = Author.create first_name: "Monty", last_name: "Oum", bio: "Lived in Austin, Texas."
end
if Book.all.blank?
  Book.create author_id: at.id, title: "Dragon Ball", photo_url: "dragonball.png", price: 9.95
  Book.create author_id: hm.id, title: "Fairy Tail", photo_url: "http://ecx.images-amazon.com/images/I/61bfNCqP3iL._SX331_BO1,204,203,200_.jpg", price: 9.95
  Book.create author_id: yt.id, title: "Yu Yu Hakusho", photo_url: "https://upload.wikimedia.org/wikipedia/en/4/4d/YuYu_Hakusho_volume_1.jpg", price: 9.95
  Book.create author_id: mo.id, title: "RWBY", photo_url: "http://i3.mangareader.net/rwby/1/rwby-6554407.jpg", price: 9.95
end
