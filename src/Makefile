#
#  Makefile


SHELL   = /bin/sh
prefix  = /usr/local
exec_prefix=${prefix}
srcdir  = .
sbindir = ${exec_prefix}/sbin
libdir  = ${exec_prefix}/lib
sysconfdir = ${prefix}/etc

SETUPDIR = /slview/nms
TARGETDIR = $(SETUPDIR)/bin

SRCDIR = .
CC      = gcc
CFLAGS  = -O2 -Wall
CPPFLAGS= -I/usr/local/include

DEFS    = 
LDFLAGS = 

LIBS    =  -lzmq -L/usr/local/lib

INCLUDES= 

OBJS    = veto_mq_client.o 
TARGET  = VetoClient


all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CPPFLAGS) $(OBJS) $(LIBS) $(LDFLAGS)  -o $@
	-cp $(SRCDIR)/VetoClient $(TARGETDIR)/VetoClient
	-chmod ugo+s $(TARGETDIR)/VetoClient
	-chmod ugo+s $(SRCDIR)/VetoClient

clean:
	-echo "==========clean========="
	-rm -f *.o *~   VetoClient
	-rm -f $(TARGETDIR)/VetoClient

veto_mq_client.o: veto_mq_client.c
	$(CC) -g -c -o veto_mq_client.o veto_mq_client.c $(CPPFLAGS)
	
	
	
	
