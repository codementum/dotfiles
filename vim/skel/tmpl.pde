
// used to detect window resizing
int pwidth, pheight;

void setup(){
  size(400, 300);
  frame.setResizable(true);

  // init previous width and height
  pwidth = width;
  pheight = height;
}

void draw(){
  // if window has been resized, recalculate everything
  if(pwidth != width || pheight != height){
  }


  pwidth = width;
  pheight = height;
}
