 //declare bacteria variables here   
 Bacteria rock;
 Bacteria [] colony;
 
 void setup()   
 {     
 	size(500,500);
 	frameRate(20);
 	//initialize bacteria variables here
 	rock = new Bacteria();
 	colony = new Bacteria[1000];
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}   
 }   
 void draw()   
 {   
 	background(0); 
 	//move and show the bacteria   
 	rock.move();
 	rock.show();
 	for(int i = 0; i <colony.length;i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	int theX;
 	int theY;
 	int theColor;
 	int aX;
 	int aY;
 	Bacteria()
 	{
 		theX = 250;
 		theY = 250;
 		theColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	}
 	void move()
 	{
 		if(mousePressed == true)
 		{
 			theX = theX +((int)(Math.random()*81)-40);
 			theY = theY +((int)(Math.random()*81)-40);
 			textSize(50);
 			fill(255);
 			text("ART",210,400);
 			
 		}	
 		else
 		{

	 		if(mouseX>theX){
	 			aX = 0;
	 		}
	 		else{
	 			aX = 6;
	 		}
	 		if(mouseY>theY){
	 			aY = 0;
	 		}
	 		else{
	 			aY = 6;
	 		}


	 		theX = theX +((int)(Math.random()*7)-aX);
	 		theY = theY +((int)(Math.random()*7)-aY);
	 	}
 	}

 	void show()
 	{
 		fill(theColor);
 		ellipse(theX,theY,7,7);
 	}	
 }    