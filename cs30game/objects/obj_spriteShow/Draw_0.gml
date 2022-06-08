n=0
for (xx=0;xx<8;xx+=1)
    {
    for (yy=0;yy<4;yy+=1)
        {
        draw_sprite_ext(n,0,360+(xx*80),240+(yy*80),4,4,0,c_white,1)
        n++;
        //if n>32 n=32
        }
    }
    
    


