 public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
int x=2;
int y=12;
public void setup()  
{    
	noLoop();         
 	
}  
public void draw()  
{   
	
	for(int i=0; i<e.length(); i++)
	{	
		String digits;
    	digits = e.substring(x,y);
		double dNum = Double.parseDouble(digits);
		if(isPrime(dNum)==false)
		{
			x=x+1;
			y=y+1;
		}
		if(isPrime(dNum)==true)
		{
			System.out.println(dNum + " is prime.");
			break;
		}
	}
		
		
}  
public boolean isPrime(double dNum)  
{   
    if(dNum<2)
    {
    	return false;
    }
  	for(int i=2; i<=Math.sqrt(dNum); i++)
 	{
 		if(dNum%i==0 && dNum>3)
 			{
 				return false;
 			}
 	} 
    return true;  
} 