#include<stdio.h>
#include<conio.h>
void main()
{
char sender[50],receiver[50];
int i,winsize;
clrscr();
printf("\n enter the window size:");
scanf("%d",&winsize);
printf("\n sender window is expanded to store messege or window \n");
printf("\n enter the data to be sent:\n");
fflush(stdin);
gets(sender);
for(i=0;i<winsize;i++)
receiver[i]=sender[i];
receiver[i]=NULL;
printf("\n messege send by the sender:\n");
puts(sender);
printf("\n window size of rerceiver is expanded\n");
printf("\n acknowledgement from receiver \n");
for(i=0;i<winsize;i++)
printf("\n ack:%d",i);
printf("\n messege received by the receiver is:");
puts(receiver);
printf("\n window size of receiver is shrinked \n");
getch();
}

