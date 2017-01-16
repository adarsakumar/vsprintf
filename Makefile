#export PATH=/opt/ppc_7410/bin:$PATH
IDIR=/opt/ppc_7410/include
CC=/opt/ppc_7410/bin/powerpc-linux-gcc
LDIR=/opt/ppc_7410/lib
CFLAGS=-I $(IDIR)
ADDFLAGS= -mcpu=740 -mbig -mcall-linux
LFLAGS   =  -Wl,-rpath,/opt/ppc_7410/lib
LIBS     = -L/opt/ppc_7410/lib
all:
	#$(CC) -c -fPIC ctype.c $(CFLAGS) $(ADDFLAGS)
	#$(CC) -c -fPIC vsprintf.c $(CFLAGS) $(ADDFLAGS)
	#$(CC) -shared -fPIC -o libada.so *.o $(LIBS) $(LFLAGS) $(ADDFLAGS)
	$(CC) -c -fPIC GLIBC_2.4.c $(CFLAGS) $(ADDFLAGS)
	$(CC) -shared -fPIC -Wl,--soname,libada.so -o libada.so GLIBC_2.4.o $(LIBS) $(LFLAGS) $(ADDFLAGS)

