/*************************************************************************
    > File Name:    pipe_fork.c
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
	const char data[]="hello pipe!";
	char buff[SIZE];
	memset(buff, '\0', sizeof(buff));
	int fd[2];

	if(0==pipe(fd))
	{
		pid_t pid=FORK();
		if(pid<0)
		{

		}
		if(!pid)
		{
			processed=read(fd[0],buff,SIZE);
			printf("read %d bytes:%s\n",processed,buff);
			exit(0);
		}
		else
		{
			processed=write(fd[1],data,strlen(data));
			printf("write %d bytes:%s\n",processed,data);
			exit(0);
		}
	}
	exit(1);
}

