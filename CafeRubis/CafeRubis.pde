//Student Name : Adam Noone
//Student Number : C16448216

void setup   ()
{
  size (800,600);
  background (0,0,0);
  loadData ();
}
  
void loadData ()
{
 Table table = loadTable("cafe.csv", "header"); 
 
 
  // Table.rows() returns all the table rows
  // We can iterate over all the rows using a for each loop
  for(TableRow row:table.rows())
  {
    // Create a new Product object from each of the rows
    // By passing the TableRow into the Product constructor
    Product product = new Product(row);
    // Add the new Star object to the stars ArrayList
    products.add(product);
    
 

// Iterate over the stars arraylist using a standard for loop
  // stars.size() returns the number of elements in the ArrayList
  for(int i = 0 ; i < products.size() ; i ++)
  {
    Product p = products.get(i);
    println(p.name);
    println(p.price);
}
  }

}



// An ArrayList is similar to an array, but it can grow and shrink in size
// as you add and remove elements
// The <Star> means the ArrayList is for holding objects of type Star
ArrayList<Product> products = new ArrayList<Product>();