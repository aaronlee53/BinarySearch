private Item[] store = 
{
  new Item(184, 14), 
  new Item(196, 60), 
  new Item(206, 31), 
  new Item(2370, 65), 
  new Item(7282, 73), 
  new Item(8303, 90), 
  new Item(12328, 63), 
  new Item(12705, 14), 
  new Item(13066, 8), 
  new Item(14088, 92), 
  new Item(15320, 82), 
  new Item(15814, 60), 
  new Item(15917, 51), 
  new Item(17911, 96), 
  new Item(18061, 3), 
  new Item(18410, 56), 
  new Item(18465, 27), 
  new Item(18618, 64), 
  new Item(18871, 69), 
  new Item(19967, 45)
};                             
public int linearSearch(int catNumToFind){
    //complete this method
    for(int i = 0; i < store.length; i++){
      if(store[i].getCatNum() == catNumToFind)
          return i;
    }
    return -1;
  }
  public int recursiveLinearSearch(int catNumToFind, int startIndex){
    //complete this method
    if(startIndex >= store.length)
      return -1;
    if(store[startIndex].getCatNum() == catNumToFind)
      return startIndex;
    return recursiveLinearSearch(catNumToFind, startIndex + 1);
  }
  public int binarySearch(int catNumToFind){
    //complete this method    
    int min = 0;
    int max = store.length - 1;
    while(min <= max){
      int temp = min + (max-min) / 2;
      if(store[temp].getCatNum() == catNumToFind)
        return temp;
      if(store[temp].getCatNum() < catNumToFind)
        min = temp + 1;
      else
        max = temp-1;
    }
    return -1;
  }
  public int recursiveBinarySearch(int catNumToFind, int nLow, int nHigh){
    //complete this method    
    if(nLow > nHigh)
      return -1;
    int temp = nLow + (nHigh - nLow)/2;
    if(store[temp].getCatNum() == catNumToFind)
      return temp;
    if(store[temp].getCatNum() > catNumToFind)
      return recursiveBinarySearch(catNumToFind, nLow, temp - 1);
    return recursiveBinarySearch(catNumToFind, temp + 1, nHigh);
  }
