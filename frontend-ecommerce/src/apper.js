var elcanvas=document.querySelector('canvas');
elcanvas.width=window.innerWidth;
elcanvas.height=window.innerHeight;

var context=elcanvas.getContext('2d');


//Circle object creation
export function Circle(x,y,dx,dy,radius)
{
    this.x=x;
    this.y=y;
    this.dx=dx;
    this.dy=dy;
    this.radius=radius;
    this.draw = function(){
        var r=255;
        var g=0;
        var b=0;
        var o=1;
        context.beginPath();
        context.arc(this.x,this.y,this.radius,0,Math.PI*2);
        context.strokeStyle=`rgba($r,$g,$b,$o)`;
        context.stroke();
        //context.fill();
    }

    this.update = function()
    {
        this.x=this.x+this.dx;
        this.y=this.y+this.dy;
        if(this.x+this.radius>innerWidth || this.x-this.radius<0)
        {
            this.dx=-this.dx;
        }
        if(this.y+this.radius>innerHeight || this.y-this.radius<0)
        {
            this.dy=-this.dy;
        } 
        this.draw();                  
    }
}

var circleArray=[];

//circle
for(var i=0;i<100;i++)
{
var radius=5;
var x=Math.random()*innerWidth+radius*2;
var y=Math.random()*innerHeight;
var dx=Math.random()*3+2;
var dy=Math.random()*3+1;

circleArray.push(new Circle(x,y,dx,dy,radius));
}


//animate circle
export function animate(){
    
requestAnimationFrame(animate);
context.clearRect(0,0,innerWidth,innerHeight);
for(var i=0;i<circleArray.length;i++)
{
    circleArray[i].update();
}

}




