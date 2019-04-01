/*************************************************************************
    > File Name:    pipe_friend.c
    > Author:       ingy
    > Mail:         754037927@qq.com 
    > Created Time: 2018年04月01日 星期日 17时12分26秒
    > Brief:        
 ************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SIZE 256

int main()
{
	int processed=0;
	const char data[]="pipe between two derived process!";
	char buff[SIZE];
	memset(buff, '\0', sizeof(buff));
	int fd[2];

	if(0==pipe(fd))
	{
		pid_t pid1=fork();
		if(pid1<0)
		{
			printf("fork p1 failed");
			exit(1);
		}
		if(!pid1)
		{
			processed=read(fd[0],buff,SIZE);
			printf("read %d bytes:%s\n",processed,buff);
			exit(0);
		}


		pid_t pid2=fork();
		if(pid2<0)
		{
			printf("fork p2 failed");
			exit(1);
		}
		if(!pid2)
		{
			processed=write(fd[1],data,strlen(data));
			printf("write %d bytes:%s\n",processed,data);
			exit(0);
		}
	}
	exit(1);
}

