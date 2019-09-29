long long_var = 10;
int int_var = 1;
char ch = 'c';
char *hello = "hello 中文 abc";
int int_arr[] = { 19, 23, 34, 56, 67, 78 };

long calc_area( long width, long height );
long calc_area_price( long width, long height, long unit_price );

int main ( )
{
	long width 	= 3;
	long height = 4;

	long unit_price = 5;

	long price = calc_area_price( width, height, unit_price );

	return (int)price;
}

long calc_area( long width, long height )
{
	return width * height;
}

long calc_area_price( long width, long height, long unit_price )
{
	long area = calc_area( width, height );
	long price = area * unit_price;
	return price;
}