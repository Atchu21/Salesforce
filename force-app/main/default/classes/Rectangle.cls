public class Rectangle
{
	Decimal length, breadth; // Constructor
    public Rectangle()
    {
        length = 3.2;
        breadth = 4.1;
        
	}
    Public void area() // Method1
        {
            Decimal a = length * breadth;
            system.debug('Area = ' + a);
        }
    public void perimeter() // method 2
        {
          Decimal p = 2* (length + breadth);
          system.debug('perimeter = ' + p);
        }
    
}