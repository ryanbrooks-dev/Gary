switch(gem_type){
		case(spr_gemstone_gray) : 
			obj_money_controller.current_gems.gray += 1;
			instance_destroy(self);
			break;
		case(spr_gemstone_red) : 
			obj_money_controller.current_gems.red += 1;
			instance_destroy(self);
			break;
		case(spr_gemstone_blue) : 
			obj_money_controller.current_gems.blue += 1;
			instance_destroy(self);
			break;
		case(spr_gemstone_green) : 
			obj_money_controller.current_gems.green += 1;
			instance_destroy(self);
			break;
		default:
}