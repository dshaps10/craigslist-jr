housing = Category.create(name: "Housing")
automotive = Category.create(name: "Automotive")
personal = Category.create(name: "Personal")

apartment = housing.articles.create(title: "Looking for apartment rental", body: "I am moving to the city and need an apartment to stay in for 3 months")
house = housing.articles.create(title: "I am selling my house", body: "I am selling my house of 20 years so I can go live on a boat.")

sedan = automotive.articles.create(title: "I am selling my car", body:"My grandmother drove it to the grocery store twice a week for ten years. In great condition.")
truck = automotive.articles.create(title: "I need to borrow someone's truck", body:"I'm moving, so I need to haul some of my stuff around for a day. Will provide pizza.")

date = personal.articles.create(title: "Man looking for women", body:"I am new to the city after leaving my last girlfriend in Omaha. Dinner this weekend?")
friend = personal.articles.create(title: "Softball league", body:"Our softball team needs more players after our last first baseman moved away from Omaha.")
