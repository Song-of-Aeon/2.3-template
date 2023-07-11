//log("yoo");
enum BITCH{
	flag1=1,
	flag2=2,
	flag3=4,
	flag4=8,
}

var newflag = BITCH.flag1|BITCH.flag2;

if(newflag & BITCH.flag4){
show_debug_message("weed");	
}