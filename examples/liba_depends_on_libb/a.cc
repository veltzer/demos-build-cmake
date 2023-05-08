#include "b.hh"

int mul(int x, int y) {
	int sum = 0;
	for(int i=0;i<y;y++) {
		sum = add(sum, x);
	}
	return sum;
}	
