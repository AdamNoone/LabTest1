class Product 
{
  float price ;
  String name;
  


Product(String name ,float price)
  {
    // this refers to the field
    this.name = name;
    this.price = price;
    
  }
  
  Product(TableRow row)
  {
    name = row.getString("Name");
    price = row.getFloat("Price");
    
    
}
   
    
}