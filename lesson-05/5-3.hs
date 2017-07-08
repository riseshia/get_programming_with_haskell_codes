inFirstHalf el list =
  let halfListLength = div (length list) 2
      halfList = take listLength list
  in
    el `elem` halfList
