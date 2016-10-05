#include <stdio.h>
int main()
{
	int array[10];
	array[0] = 10;
	array[1] = 9;
	array[2] = 44;
	array[3] = 66;
	array[4] = 6;
	array[5] = 23;
	array[6] = 4;
	array[7] = 22;
	array[8] = 2;
	array[9] = 7;

	for(int l = 0; l < 10 - 2; l++)
		for(int m = 0; m < 10 - l - 1; m++)
			// sort
			if(array[m] < array[m+1])
			{
				int t = array[m];
				array[m] = array[m+1];
				array[m+1] = t;
			}
	for(int l = 0; l < 10; l++)
		printf("%i\n", array[l]);
	return 0;

}
