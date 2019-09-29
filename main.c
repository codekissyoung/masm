long long_var = 10;
int int_var = 1;
char ch = 'c';
char *hello = "hello 中文 abc";
int int_arr[32] = { 19, 23, 34, 56, 67, 78 };
long answer = 0x29;

long multi_parm( long a , long b, long c, long d, long e, long f, long g, long h, long i )
{
	return g + h + i;
}

long imediate_mode()
{
	return 0x12;
}

long register_mode()
{
	__asm__("mov rax, 0x41");
	__asm__("mov rbx, 0x45");
	return 0;
}

long direct_mode()
{
	return answer;
}

long indexed_mode()
{
	int index = 6;
	return int_arr[index];
}

long indirect_mode()
{
	long *dest = &answer;
	*dest = 42;
	return *dest;
}

long base_pointer_mode()
{
	long like = 41;
	return like;
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

int main ( )
{
	// return_func( 20 , 30 );

	long width 	= 3;
	long height = 4;

	long unit_price = 5;

	long price = calc_area_price( width, height, unit_price );

	return (int)price;
}

