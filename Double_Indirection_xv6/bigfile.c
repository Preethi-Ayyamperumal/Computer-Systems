#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>


int main(void){
  int i =0;
  char *buf = malloc (1048576);
  int fd;
  int temp;
  if(!buf){printf("couldn't alloc 1mb\n"); exit(EXIT_FAILURE);}
  for(i=0;i<1048576;i++){
    buf[i]= ('0'+i)%127;
  }
  printf("%c %c %c %c\n", buf[0], buf[255], buf[20000], buf[100000]);
  
  if((fd=open("100mb",O_CREAT|O_RDWR, S_IRWXU))<0){
    printf("failed to open and create file 100mb\n");
    free(buf);
    exit(EXIT_FAILURE);
  }
  i=0;
  while(i<100){
    if(write(fd,buf,1048576)<0){
      printf("failure to write on mb %d\n",i);
      close(fd);
      unlink("100mb");
      free(buf);
      exit(EXIT_FAILURE);
    }
    i++;
  }
  printf("sucessfully wrote file 100mb\n");
  return EXIT_SUCCESS;
}
