puts "🌱 Seeding spices..."

l1 = Location.create(name: "Southern Hills")
l2 = Location.create(name: "Northern Oaks")

c1 = Client.create(name: "Tabitha Cook", age: 78, eligibility: "Speech Impairment", minutes: 1200)
c2 = Client.create(name: "Greg Williams", age: 75, eligibility: "Speech Impairment", minutes: 1400)
c3 = Client.create(name: "Susan Peters", age: 88, eligibility: "Speech Impairment", minutes: 900)
c4 = Client.create(name: "Jeremy Johns", age: 80, eligibility: "Speech Impairment", minutes: 850)
c5 = Client.create(name: "Charles Payne", age: 70, eligibility: "Speech Impairment", minutes: 1200)
c6 = Client.create(name: "Sally Henderson", age: 82, eligibility: "Speech Impairment", minutes: 1100)

puts "✅ Done seeding!"
