/// @description Insert description here
// You can write your code in this editor

instance_create_layer(irandom_range(50,1000),irandom_range(50,1000),layer,oPlayer)

var i

for(i = 1; i <= 100; i++)
{
	instance_create_layer(irandom_range(50,1000),irandom_range(50,1000),layer,oNPC)	
}