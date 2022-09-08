int a = 0x9f568888;
int b = 0x4cf54444;
int c;
const char* message = "\x15\x89\xff\x56\x19\x21\xdd\xfa\x21\x24\x27\x30\x24\x24\x24\x25";

int main()
{
  if(message[0] != 0) {
  	c = a + b + 1;	
  }
  else {
  	c = (int)(message[0] + message[1]);
  }
  
  return 0;
}