SpriteManager _SM;

void setup() {
    size(1024, 768);
    _SM = new SpriteManager();

   
    
   int count = 0;
    for(int i=0;i<6;i++){
        _SM.spawn(new Shooter(count, 50));

        count += 100;
    }




    
    
}

void draw() {
    background(0);
    _SM.manage();
}

void keyPressed() {
    _SM.player.keyDown();
}

void keyReleased() {
    _SM.player.keyUp();
}