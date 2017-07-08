myReverse l = realReverse l []
realReverse [] l = l
realReverse (h:t) l = realReverse t (h:l)
