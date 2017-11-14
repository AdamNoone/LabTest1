//Student Name : Adam Noone
//Student Number : C16448216

void setup   ()
{
  size (800,600);
  background (191,180,180);
  loadData ();
  printProducts();
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
  }
    
}
void printProducts()
{
// Iterate over the stars arraylist using a standard for loop
  // stars.size() returns the number of elements in the ArrayList
  for(int i = 0 ; i < products.size() ; i ++)
  {
    Product p = products.get(i);
    println(p.name);
    println(p.price);
}
  }





// An ArrayList is similar to an array, but it can grow and shrink in size
// as you add and remove elements
// The <Star> means the ArrayList is for holding objects of type Star
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();


void draw ()
{
  displayProducts();
  TillLayout();
  
  
}

void displayProducts ()
{
for(Product product:products)
  {
   
  }
}

void TillLayout()
{
  int i = 0;
  int x = 70; 
  int y = 70;
  stroke (0);
  
  fill(255,255,255);
  for (i = 0 ; i < 7 ;i++)
  {
    rect(x,y ,300,60);
    y = y +65;
   
  }
  
  line (420 ,70 ,420,550);
 
  rect(470,70 ,300,500);
  
  textSize(30);
  textAlign(CENTER, BOTTOM);
  text("Cafe Rubis Till System",420 ,50);
  
}