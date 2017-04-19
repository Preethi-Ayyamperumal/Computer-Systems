#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int
main()
{
  char buf[512];
  int fd, i, sectors;

 fd = open("big.file", O_CREATE | O_WRONLY);
  if(fd < 0){
    printf(2, "big: cannot open big.file for writing\n");
    exit();
  }

  sectors = 0;
  while(1){
    *(int*)buf = sectors;
    int cc = write(fd, buf, sizeof(buf));
    if(cc <= 0)
      break;
    sectors++;
	if (sectors % 100 == 0)
		printf(2, "%d ",sectors / 100);
  }

  printf(1, "\nwrote %d sectors\n", sectors);

  close(fd);
  printf(2, "closed file %d succefully\n", fd);
  fd = open("big.file", O_RDONLY);
  if(fd < 0){
    printf(2, "big: cannot re-open big.file for reading\n");
    exit();
  }
  printf(2, "opened file %d succefully\n", fd);
  for(i = 0; i < sectors; i++){
    int cc = read(fd, buf, sizeof(buf));
    
    if(cc <= 0){
      printf(2, "big: read error at sector %d\n", i);
      exit();
    }
    
    if(*(int*)buf != i){
      printf(2, "big: read the wrong data (%d) for sector %d\n",
             *(int*)buf, i);
      exit();
    }
	if (i % 100 == 0)
	 printf(2, "\nRead till Sectors %d\n",i);
  }

  exit();
}
