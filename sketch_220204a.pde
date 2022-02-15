size(1000, 1000);
background(20, 20, 20);

// Background Elements
// Stars
strokeWeight(0);
fill(200, 200, 200);
for(int i = 0; i < 200; i++){
  ellipse(random(1, 1000), random(1, 1000), 2, 2);
}

for(int i = 0; i < 200; i++){
  fill(83,104,120);
  triangle(random(100, 200), random(100, 200),random(250, 350), random(400, 500), random(400, 500), random(300, 400));
}
