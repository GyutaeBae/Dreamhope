Table quartet;
int quartet_num;
int hello;

int x_limit_min = 0;
int x_limit_max = 100;

int y_limit_min = 0;
int y_limit_max = 100;

int axis_unit = 1;

void setup(){
  size(640, 480);

}

void draw(){
}


void keyPressed(){
  switch(key){
    case '1':
    quartet_num = 1;
    break;
    case '2':
    quartet_num = 2;
    break;
    case '3':
    quartet_num = 3;
    break;
    case '4':
    quartet_num = 4;
    break;
  }
}
