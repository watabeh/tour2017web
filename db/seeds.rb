require "csv"

CSV.open("cats.csv", headers: true) do |csv|
  csv.each do |row|
    Cat.create(
      kind: row["kind"],
      sex: row["sex"],
      age: row["age"],
      size: row["size"],
      color: row["color"],
      place: row["place"],
      limit: row["limit"],
      detail: row["detail"],
      image: row["image"])
  end
end

CSV.open("past_cats.csv", headers: true) do |csv|
  csv.each do |row|
    PastCat.create(
      cat_id: row["key"],
      whereabouts: row["whereabouts"])
  end
end
