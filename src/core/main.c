#include "core_clock_init.h"
#include "pio_init.h"

int main()
{
	core_clock_init();
	pio_init();
	
	
	for(;;);
}