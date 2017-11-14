class Product 
{
  float price ;
  String name;
  float screenPos;
  
  
  


Product(String name ,float price)
  {
    // this refers to the field
    this.name = name;
    this.price = price;
    this.screenPos = screenPos;
    
  }
  
  Product(TableRow row)
  {
    name = row.getString("Name");
    price = row.getFloat("Price");
    screenPos = row.getFloat("ScreenPos");
   
    
    
}
   
    
}