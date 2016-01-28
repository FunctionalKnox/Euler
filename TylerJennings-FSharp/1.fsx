let is3or5multiple i =
  i % 3 = 0 || i % 5 = 0

[1..999]
|> Seq.filter is3or5multiple
|> Seq.reduce (fun p c -> p + c)


//var resultsList = List<int>();
//foreach (var i in [1..999])
//{
//    if (i % 3 == 0 || i % 5 == 0) resultsList.Add(i);
//}
//resultsList.Sum();
