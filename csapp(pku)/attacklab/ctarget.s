
./ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	push   0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmp *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	push   $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	push   $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	push   $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	push   $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmp 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	push   $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmp 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	push   $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmp 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	push   $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmp 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	push   $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmp 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	push   $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmp 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	push   $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmp 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	push   $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmp 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	push   $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmp 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	push   $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmp 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	push   $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmp 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	push   $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmp 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	push   $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmp 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	push   $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmp 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	push   $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmp 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	push   $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmp 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	push   $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmp 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	push   $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmp 401020 <.plt>
  40124f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401250 <strcasecmp@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 bd 5d 00 00 	bnd jmp *0x5dbd(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <__errno_location@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 b5 5d 00 00 	bnd jmp *0x5db5(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <srandom@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 ad 5d 00 00 	bnd jmp *0x5dad(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <strncpy@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 a5 5d 00 00 	bnd jmp *0x5da5(%rip)        # 407030 <strncpy@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <strncmp@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 9d 5d 00 00 	bnd jmp *0x5d9d(%rip)        # 407038 <strncmp@GLIBC_2.2.5>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <strcpy@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 95 5d 00 00 	bnd jmp *0x5d95(%rip)        # 407040 <strcpy@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <puts@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 8d 5d 00 00 	bnd jmp *0x5d8d(%rip)        # 407048 <puts@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <write@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 85 5d 00 00 	bnd jmp *0x5d85(%rip)        # 407050 <write@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <mmap@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 7d 5d 00 00 	bnd jmp *0x5d7d(%rip)        # 407058 <mmap@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <memset@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 75 5d 00 00 	bnd jmp *0x5d75(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <alarm@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 6d 5d 00 00 	bnd jmp *0x5d6d(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <close@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 65 5d 00 00 	bnd jmp *0x5d65(%rip)        # 407070 <close@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <read@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 5d 5d 00 00 	bnd jmp *0x5d5d(%rip)        # 407078 <read@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <strcmp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 55 5d 00 00 	bnd jmp *0x5d55(%rip)        # 407080 <strcmp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <signal@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 4d 5d 00 00 	bnd jmp *0x5d4d(%rip)        # 407088 <signal@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <gethostbyname@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 45 5d 00 00 	bnd jmp *0x5d45(%rip)        # 407090 <gethostbyname@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <__memmove_chk@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 3d 5d 00 00 	bnd jmp *0x5d3d(%rip)        # 407098 <__memmove_chk@GLIBC_2.3.4>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <strtol@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 35 5d 00 00 	bnd jmp *0x5d35(%rip)        # 4070a0 <strtol@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <memcpy@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 2d 5d 00 00 	bnd jmp *0x5d2d(%rip)        # 4070a8 <memcpy@GLIBC_2.14>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <time@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 25 5d 00 00 	bnd jmp *0x5d25(%rip)        # 4070b0 <time@GLIBC_2.2.5>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <random@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 1d 5d 00 00 	bnd jmp *0x5d1d(%rip)        # 4070b8 <random@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <__isoc99_sscanf@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 15 5d 00 00 	bnd jmp *0x5d15(%rip)        # 4070c0 <__isoc99_sscanf@GLIBC_2.7>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <munmap@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 0d 5d 00 00 	bnd jmp *0x5d0d(%rip)        # 4070c8 <munmap@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__printf_chk@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 05 5d 00 00 	bnd jmp *0x5d05(%rip)        # 4070d0 <__printf_chk@GLIBC_2.3.4>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fopen@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 fd 5c 00 00 	bnd jmp *0x5cfd(%rip)        # 4070d8 <fopen@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <getopt@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 f5 5c 00 00 	bnd jmp *0x5cf5(%rip)        # 4070e0 <getopt@GLIBC_2.2.5>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <strtoul@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 ed 5c 00 00 	bnd jmp *0x5ced(%rip)        # 4070e8 <strtoul@GLIBC_2.2.5>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <gethostname@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 e5 5c 00 00 	bnd jmp *0x5ce5(%rip)        # 4070f0 <gethostname@GLIBC_2.2.5>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <exit@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 dd 5c 00 00 	bnd jmp *0x5cdd(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <connect@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 407100 <connect@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <__fprintf_chk@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 407108 <__fprintf_chk@GLIBC_2.3.4>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <getc@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 407110 <getc@GLIBC_2.2.5>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <__sprintf_chk@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 407118 <__sprintf_chk@GLIBC_2.3.4>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <socket@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 407120 <socket@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401470 <_start>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	31 ed                	xor    %ebp,%ebp
  401476:	49 89 d1             	mov    %rdx,%r9
  401479:	5e                   	pop    %rsi
  40147a:	48 89 e2             	mov    %rsp,%rdx
  40147d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401481:	50                   	push   %rax
  401482:	54                   	push   %rsp
  401483:	49 c7 c0 c0 37 40 00 	mov    $0x4037c0,%r8
  40148a:	48 c7 c1 50 37 40 00 	mov    $0x403750,%rcx
  401491:	48 c7 c7 99 17 40 00 	mov    $0x401799,%rdi
  401498:	ff 15 52 5b 00 00    	call   *0x5b52(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40149e:	f4                   	hlt    
  40149f:	90                   	nop

00000000004014a0 <_dl_relocate_static_pie>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	c3                   	ret    
  4014a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4014ac:	00 00 00 
  4014af:	90                   	nop

00000000004014b0 <deregister_tm_clones>:
  4014b0:	b8 b0 74 40 00       	mov    $0x4074b0,%eax
  4014b5:	48 3d b0 74 40 00    	cmp    $0x4074b0,%rax
  4014bb:	74 13                	je     4014d0 <deregister_tm_clones+0x20>
  4014bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c2:	48 85 c0             	test   %rax,%rax
  4014c5:	74 09                	je     4014d0 <deregister_tm_clones+0x20>
  4014c7:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  4014cc:	ff e0                	jmp    *%rax
  4014ce:	66 90                	xchg   %ax,%ax
  4014d0:	c3                   	ret    
  4014d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014e0 <register_tm_clones>:
  4014e0:	be b0 74 40 00       	mov    $0x4074b0,%esi
  4014e5:	48 81 ee b0 74 40 00 	sub    $0x4074b0,%rsi
  4014ec:	48 89 f0             	mov    %rsi,%rax
  4014ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4014f3:	48 c1 f8 03          	sar    $0x3,%rax
  4014f7:	48 01 c6             	add    %rax,%rsi
  4014fa:	48 d1 fe             	sar    %rsi
  4014fd:	74 11                	je     401510 <register_tm_clones+0x30>
  4014ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401504:	48 85 c0             	test   %rax,%rax
  401507:	74 07                	je     401510 <register_tm_clones+0x30>
  401509:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  40150e:	ff e0                	jmp    *%rax
  401510:	c3                   	ret    
  401511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <__do_global_dtors_aux>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	80 3d bd 5f 00 00 00 	cmpb   $0x0,0x5fbd(%rip)        # 4074e8 <completed.8060>
  40152b:	75 13                	jne    401540 <__do_global_dtors_aux+0x20>
  40152d:	55                   	push   %rbp
  40152e:	48 89 e5             	mov    %rsp,%rbp
  401531:	e8 7a ff ff ff       	call   4014b0 <deregister_tm_clones>
  401536:	c6 05 ab 5f 00 00 01 	movb   $0x1,0x5fab(%rip)        # 4074e8 <completed.8060>
  40153d:	5d                   	pop    %rbp
  40153e:	c3                   	ret    
  40153f:	90                   	nop
  401540:	c3                   	ret    
  401541:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <frame_dummy>:
  401550:	f3 0f 1e fa          	endbr64 
  401554:	eb 8a                	jmp    4014e0 <register_tm_clones>

0000000000401556 <usage>:
  401556:	50                   	push   %rax
  401557:	58                   	pop    %rax
  401558:	48 83 ec 08          	sub    $0x8,%rsp
  40155c:	48 89 fa             	mov    %rdi,%rdx
  40155f:	83 3d c2 5f 00 00 00 	cmpl   $0x0,0x5fc2(%rip)        # 407528 <is_checker>
  401566:	74 50                	je     4015b8 <usage+0x62>
  401568:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40156f:	bf 01 00 00 00       	mov    $0x1,%edi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 42 fe ff ff       	call   4013c0 <__printf_chk@plt>
  40157e:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401585:	e8 26 fd ff ff       	call   4012b0 <puts@plt>
  40158a:	48 8d 3d 3f 2c 00 00 	lea    0x2c3f(%rip),%rdi        # 4041d0 <_IO_stdin_used+0x1d0>
  401591:	e8 1a fd ff ff       	call   4012b0 <puts@plt>
  401596:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40159d:	e8 0e fd ff ff       	call   4012b0 <puts@plt>
  4015a2:	48 8d 3d 41 2c 00 00 	lea    0x2c41(%rip),%rdi        # 4041ea <_IO_stdin_used+0x1ea>
  4015a9:	e8 02 fd ff ff       	call   4012b0 <puts@plt>
  4015ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b3:	e8 58 fe ff ff       	call   401410 <exit@plt>
  4015b8:	48 8d 35 47 2c 00 00 	lea    0x2c47(%rip),%rsi        # 404206 <_IO_stdin_used+0x206>
  4015bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4015c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c9:	e8 f2 fd ff ff       	call   4013c0 <__printf_chk@plt>
  4015ce:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4015d5:	e8 d6 fc ff ff       	call   4012b0 <puts@plt>
  4015da:	48 8d 3d d7 2a 00 00 	lea    0x2ad7(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4015e1:	e8 ca fc ff ff       	call   4012b0 <puts@plt>
  4015e6:	48 8d 3d 37 2c 00 00 	lea    0x2c37(%rip),%rdi        # 404224 <_IO_stdin_used+0x224>
  4015ed:	e8 be fc ff ff       	call   4012b0 <puts@plt>
  4015f2:	eb ba                	jmp    4015ae <usage+0x58>

00000000004015f4 <initialize_target>:
  4015f4:	55                   	push   %rbp
  4015f5:	53                   	push   %rbx
  4015f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4015fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401602:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401609:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40160e:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401615:	89 f5                	mov    %esi,%ebp
  401617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40161e:	00 00 
  401620:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401627:	00 
  401628:	31 c0                	xor    %eax,%eax
  40162a:	89 3d e8 5e 00 00    	mov    %edi,0x5ee8(%rip)        # 407518 <check_level>
  401630:	8b 3d 1a 5b 00 00    	mov    0x5b1a(%rip),%edi        # 407150 <target_id>
  401636:	e8 ed 20 00 00       	call   403728 <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 e0 20 00 00       	call   403728 <gencookie>
  401648:	89 05 d2 5e 00 00    	mov    %eax,0x5ed2(%rip)        # 407520 <authkey>
  40164e:	8b 05 fc 5a 00 00    	mov    0x5afc(%rip),%eax        # 407150 <target_id>
  401654:	8d 78 01             	lea    0x1(%rax),%edi
  401657:	e8 14 fc ff ff       	call   401270 <srandom@plt>
  40165c:	e8 2f fd ff ff       	call   401390 <random@plt>
  401661:	48 89 c7             	mov    %rax,%rdi
  401664:	e8 9b 03 00 00       	call   401a04 <scramble>
  401669:	89 c3                	mov    %eax,%ebx
  40166b:	85 ed                	test   %ebp,%ebp
  40166d:	75 54                	jne    4016c3 <initialize_target+0xcf>
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	01 d8                	add    %ebx,%eax
  401676:	0f b7 c0             	movzwl %ax,%eax
  401679:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401680:	89 c0                	mov    %eax,%eax
  401682:	48 89 05 1f 5e 00 00 	mov    %rax,0x5e1f(%rip)        # 4074a8 <buf_offset>
  401689:	c6 05 b8 6a 00 00 63 	movb   $0x63,0x6ab8(%rip)        # 408148 <target_prefix>
  401690:	83 3d 09 5e 00 00 00 	cmpl   $0x0,0x5e09(%rip)        # 4074a0 <notify>
  401697:	74 09                	je     4016a2 <initialize_target+0xae>
  401699:	83 3d 88 5e 00 00 00 	cmpl   $0x0,0x5e88(%rip)        # 407528 <is_checker>
  4016a0:	74 3a                	je     4016dc <initialize_target+0xe8>
  4016a2:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4016a9:	00 
  4016aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016b1:	00 00 
  4016b3:	0f 85 db 00 00 00    	jne    401794 <initialize_target+0x1a0>
  4016b9:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4016c0:	5b                   	pop    %rbx
  4016c1:	5d                   	pop    %rbp
  4016c2:	c3                   	ret    
  4016c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c8:	e8 b3 fc ff ff       	call   401380 <time@plt>
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 9b fb ff ff       	call   401270 <srandom@plt>
  4016d5:	e8 b6 fc ff ff       	call   401390 <random@plt>
  4016da:	eb 98                	jmp    401674 <initialize_target+0x80>
  4016dc:	48 89 e7             	mov    %rsp,%rdi
  4016df:	be 00 01 00 00       	mov    $0x100,%esi
  4016e4:	e8 17 fd ff ff       	call   401400 <gethostname@plt>
  4016e9:	89 c5                	mov    %eax,%ebp
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 26                	jne    401715 <initialize_target+0x121>
  4016ef:	89 c3                	mov    %eax,%ebx
  4016f1:	48 63 c3             	movslq %ebx,%rax
  4016f4:	48 8d 15 85 5a 00 00 	lea    0x5a85(%rip),%rdx        # 407180 <host_table>
  4016fb:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4016ff:	48 85 ff             	test   %rdi,%rdi
  401702:	74 2c                	je     401730 <initialize_target+0x13c>
  401704:	48 89 e6             	mov    %rsp,%rsi
  401707:	e8 44 fb ff ff       	call   401250 <strcasecmp@plt>
  40170c:	85 c0                	test   %eax,%eax
  40170e:	74 1b                	je     40172b <initialize_target+0x137>
  401710:	83 c3 01             	add    $0x1,%ebx
  401713:	eb dc                	jmp    4016f1 <initialize_target+0xfd>
  401715:	48 8d 3d cc 29 00 00 	lea    0x29cc(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  40171c:	e8 8f fb ff ff       	call   4012b0 <puts@plt>
  401721:	bf 08 00 00 00       	mov    $0x8,%edi
  401726:	e8 e5 fc ff ff       	call   401410 <exit@plt>
  40172b:	bd 01 00 00 00       	mov    $0x1,%ebp
  401730:	85 ed                	test   %ebp,%ebp
  401732:	74 3d                	je     401771 <initialize_target+0x17d>
  401734:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40173b:	00 
  40173c:	e8 2c 1d 00 00       	call   40346d <init_driver>
  401741:	85 c0                	test   %eax,%eax
  401743:	0f 89 59 ff ff ff    	jns    4016a2 <initialize_target+0xae>
  401749:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401750:	00 
  401751:	48 8d 35 08 2a 00 00 	lea    0x2a08(%rip),%rsi        # 404160 <_IO_stdin_used+0x160>
  401758:	bf 01 00 00 00       	mov    $0x1,%edi
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	e8 59 fc ff ff       	call   4013c0 <__printf_chk@plt>
  401767:	bf 08 00 00 00       	mov    $0x8,%edi
  40176c:	e8 9f fc ff ff       	call   401410 <exit@plt>
  401771:	48 89 e2             	mov    %rsp,%rdx
  401774:	48 8d 35 a5 29 00 00 	lea    0x29a5(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  40177b:	bf 01 00 00 00       	mov    $0x1,%edi
  401780:	b8 00 00 00 00       	mov    $0x0,%eax
  401785:	e8 36 fc ff ff       	call   4013c0 <__printf_chk@plt>
  40178a:	bf 08 00 00 00       	mov    $0x8,%edi
  40178f:	e8 7c fc ff ff       	call   401410 <exit@plt>
  401794:	e8 ec 0f 00 00       	call   402785 <__stack_chk_fail>

0000000000401799 <main>:
  401799:	f3 0f 1e fa          	endbr64 
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 83 ec 60          	sub    $0x60,%rsp
  4017a9:	89 fd                	mov    %edi,%ebp
  4017ab:	48 89 f3             	mov    %rsi,%rbx
  4017ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017b5:	00 00 
  4017b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4017bc:	31 c0                	xor    %eax,%eax
  4017be:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  4017c5:	74 65 64 
  4017c8:	48 89 04 24          	mov    %rax,(%rsp)
  4017cc:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  4017d3:	79 
  4017d4:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  4017db:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  4017e0:	48 c7 c6 74 26 40 00 	mov    $0x402674,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 1a 26 40 00 	mov    $0x40261a,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 ce 26 40 00 	mov    $0x4026ce,%rsi
  401809:	bf 04 00 00 00       	mov    $0x4,%edi
  40180e:	e8 1d fb ff ff       	call   401330 <signal@plt>
  401813:	83 3d 0e 5d 00 00 00 	cmpl   $0x0,0x5d0e(%rip)        # 407528 <is_checker>
  40181a:	75 26                	jne    401842 <main+0xa9>
  40181c:	4c 8d 25 24 2a 00 00 	lea    0x2a24(%rip),%r12        # 404247 <_IO_stdin_used+0x247>
  401823:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  40182a:	48 89 05 df 5c 00 00 	mov    %rax,0x5cdf(%rip)        # 407510 <infile>
  401831:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401837:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40183d:	e9 8d 00 00 00       	jmp    4018cf <main+0x136>
  401842:	48 c7 c6 28 27 40 00 	mov    $0x402728,%rsi
  401849:	bf 0e 00 00 00       	mov    $0xe,%edi
  40184e:	e8 dd fa ff ff       	call   401330 <signal@plt>
  401853:	bf 02 00 00 00       	mov    $0x2,%edi
  401858:	e8 93 fa ff ff       	call   4012f0 <alarm@plt>
  40185d:	4c 8d 25 d9 29 00 00 	lea    0x29d9(%rip),%r12        # 40423d <_IO_stdin_used+0x23d>
  401864:	eb bd                	jmp    401823 <main+0x8a>
  401866:	48 8b 3b             	mov    (%rbx),%rdi
  401869:	e8 e8 fc ff ff       	call   401556 <usage>
  40186e:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404314 <_IO_stdin_used+0x314>
  401875:	48 8b 3d 4c 5c 00 00 	mov    0x5c4c(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40187c:	e8 4f fb ff ff       	call   4013d0 <fopen@plt>
  401881:	48 89 05 88 5c 00 00 	mov    %rax,0x5c88(%rip)        # 407510 <infile>
  401888:	48 85 c0             	test   %rax,%rax
  40188b:	75 42                	jne    4018cf <main+0x136>
  40188d:	48 8b 0d 34 5c 00 00 	mov    0x5c34(%rip),%rcx        # 4074c8 <optarg@GLIBC_2.2.5>
  401894:	48 8d 15 b1 29 00 00 	lea    0x29b1(%rip),%rdx        # 40424c <_IO_stdin_used+0x24c>
  40189b:	be 01 00 00 00       	mov    $0x1,%esi
  4018a0:	48 8b 3d 39 5c 00 00 	mov    0x5c39(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4018a7:	e8 84 fb ff ff       	call   401430 <__fprintf_chk@plt>
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	e9 2c 01 00 00       	jmp    4019e2 <main+0x249>
  4018b6:	ba 10 00 00 00       	mov    $0x10,%edx
  4018bb:	be 00 00 00 00       	mov    $0x0,%esi
  4018c0:	48 8b 3d 01 5c 00 00 	mov    0x5c01(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  4018c7:	e8 24 fb ff ff       	call   4013f0 <strtoul@plt>
  4018cc:	41 89 c6             	mov    %eax,%r14d
  4018cf:	4c 89 e2             	mov    %r12,%rdx
  4018d2:	48 89 de             	mov    %rbx,%rsi
  4018d5:	89 ef                	mov    %ebp,%edi
  4018d7:	e8 04 fb ff ff       	call   4013e0 <getopt@plt>
  4018dc:	3c ff                	cmp    $0xff,%al
  4018de:	74 7b                	je     40195b <main+0x1c2>
  4018e0:	0f be c8             	movsbl %al,%ecx
  4018e3:	83 e8 61             	sub    $0x61,%eax
  4018e6:	3c 14                	cmp    $0x14,%al
  4018e8:	77 51                	ja     40193b <main+0x1a2>
  4018ea:	0f b6 c0             	movzbl %al,%eax
  4018ed:	48 8d 15 98 29 00 00 	lea    0x2998(%rip),%rdx        # 40428c <_IO_stdin_used+0x28c>
  4018f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4018f8:	48 01 d0             	add    %rdx,%rax
  4018fb:	3e ff e0             	notrack jmp *%rax
  4018fe:	ba 0a 00 00 00       	mov    $0xa,%edx
  401903:	be 00 00 00 00       	mov    $0x0,%esi
  401908:	48 8b 3d b9 5b 00 00 	mov    0x5bb9(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40190f:	e8 4c fa ff ff       	call   401360 <strtol@plt>
  401914:	41 89 c5             	mov    %eax,%r13d
  401917:	eb b6                	jmp    4018cf <main+0x136>
  401919:	c7 05 7d 5b 00 00 00 	movl   $0x0,0x5b7d(%rip)        # 4074a0 <notify>
  401920:	00 00 00 
  401923:	eb aa                	jmp    4018cf <main+0x136>
  401925:	48 89 e7             	mov    %rsp,%rdi
  401928:	ba 50 00 00 00       	mov    $0x50,%edx
  40192d:	48 8b 35 94 5b 00 00 	mov    0x5b94(%rip),%rsi        # 4074c8 <optarg@GLIBC_2.2.5>
  401934:	e8 47 f9 ff ff       	call   401280 <strncpy@plt>
  401939:	eb 94                	jmp    4018cf <main+0x136>
  40193b:	89 ca                	mov    %ecx,%edx
  40193d:	48 8d 35 25 29 00 00 	lea    0x2925(%rip),%rsi        # 404269 <_IO_stdin_used+0x269>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 6d fa ff ff       	call   4013c0 <__printf_chk@plt>
  401953:	48 8b 3b             	mov    (%rbx),%rdi
  401956:	e8 fb fb ff ff       	call   401556 <usage>
  40195b:	be 00 00 00 00       	mov    $0x0,%esi
  401960:	44 89 ef             	mov    %r13d,%edi
  401963:	e8 8c fc ff ff       	call   4015f4 <initialize_target>
  401968:	83 3d b9 5b 00 00 00 	cmpl   $0x0,0x5bb9(%rip)        # 407528 <is_checker>
  40196f:	74 3f                	je     4019b0 <main+0x217>
  401971:	44 39 35 a8 5b 00 00 	cmp    %r14d,0x5ba8(%rip)        # 407520 <authkey>
  401978:	75 13                	jne    40198d <main+0x1f4>
  40197a:	48 89 e7             	mov    %rsp,%rdi
  40197d:	48 8b 35 dc 57 00 00 	mov    0x57dc(%rip),%rsi        # 407160 <user_id>
  401984:	e8 97 f9 ff ff       	call   401320 <strcmp@plt>
  401989:	85 c0                	test   %eax,%eax
  40198b:	74 23                	je     4019b0 <main+0x217>
  40198d:	44 89 f2             	mov    %r14d,%edx
  401990:	48 8d 35 f1 27 00 00 	lea    0x27f1(%rip),%rsi        # 404188 <_IO_stdin_used+0x188>
  401997:	bf 01 00 00 00       	mov    $0x1,%edi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 1a fa ff ff       	call   4013c0 <__printf_chk@plt>
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 b3 08 00 00       	call   402263 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 0e 0f 00 00       	call   4028eb <stable_launch>
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4019e7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019ee:	00 00 
  4019f0:	75 0d                	jne    4019ff <main+0x266>
  4019f2:	48 83 c4 60          	add    $0x60,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	5d                   	pop    %rbp
  4019f8:	41 5c                	pop    %r12
  4019fa:	41 5d                	pop    %r13
  4019fc:	41 5e                	pop    %r14
  4019fe:	c3                   	ret    
  4019ff:	e8 81 0d 00 00       	call   402785 <__stack_chk_fail>

0000000000401a04 <scramble>:
  401a04:	f3 0f 1e fa          	endbr64 
  401a08:	48 83 ec 38          	sub    $0x38,%rsp
  401a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a13:	00 00 
  401a15:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a1a:	31 c0                	xor    %eax,%eax
  401a1c:	83 f8 09             	cmp    $0x9,%eax
  401a1f:	77 12                	ja     401a33 <scramble+0x2f>
  401a21:	69 d0 82 2c 00 00    	imul   $0x2c82,%eax,%edx
  401a27:	01 fa                	add    %edi,%edx
  401a29:	89 c1                	mov    %eax,%ecx
  401a2b:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401a2e:	83 c0 01             	add    $0x1,%eax
  401a31:	eb e9                	jmp    401a1c <scramble+0x18>
  401a33:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a37:	69 c0 e6 b5 00 00    	imul   $0xb5e6,%eax,%eax
  401a3d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a41:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a45:	69 c0 4d 03 00 00    	imul   $0x34d,%eax,%eax
  401a4b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a4f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a53:	69 c0 13 a7 00 00    	imul   $0xa713,%eax,%eax
  401a59:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a5d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a61:	69 c0 55 a0 00 00    	imul   $0xa055,%eax,%eax
  401a67:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a6b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a6f:	69 c0 a9 3e 00 00    	imul   $0x3ea9,%eax,%eax
  401a75:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a79:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a7d:	69 c0 b5 0d 00 00    	imul   $0xdb5,%eax,%eax
  401a83:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a87:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a8b:	69 c0 9f 42 00 00    	imul   $0x429f,%eax,%eax
  401a91:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a95:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a99:	69 c0 cc 1e 00 00    	imul   $0x1ecc,%eax,%eax
  401a9f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401aa3:	8b 04 24             	mov    (%rsp),%eax
  401aa6:	69 c0 ce b7 00 00    	imul   $0xb7ce,%eax,%eax
  401aac:	89 04 24             	mov    %eax,(%rsp)
  401aaf:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401ab3:	69 c0 8c b9 00 00    	imul   $0xb98c,%eax,%eax
  401ab9:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401abd:	8b 04 24             	mov    (%rsp),%eax
  401ac0:	69 c0 a8 1b 00 00    	imul   $0x1ba8,%eax,%eax
  401ac6:	89 04 24             	mov    %eax,(%rsp)
  401ac9:	8b 04 24             	mov    (%rsp),%eax
  401acc:	69 c0 0c 97 00 00    	imul   $0x970c,%eax,%eax
  401ad2:	89 04 24             	mov    %eax,(%rsp)
  401ad5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ad9:	69 c0 28 db 00 00    	imul   $0xdb28,%eax,%eax
  401adf:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ae3:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ae7:	69 c0 e1 ae 00 00    	imul   $0xaee1,%eax,%eax
  401aed:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401af1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401af5:	69 c0 54 13 00 00    	imul   $0x1354,%eax,%eax
  401afb:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401aff:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b03:	69 c0 52 7e 00 00    	imul   $0x7e52,%eax,%eax
  401b09:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b0d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b11:	69 c0 c3 d9 00 00    	imul   $0xd9c3,%eax,%eax
  401b17:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b1b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b1f:	69 c0 a2 a8 00 00    	imul   $0xa8a2,%eax,%eax
  401b25:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b29:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b2d:	69 c0 12 87 00 00    	imul   $0x8712,%eax,%eax
  401b33:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b37:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b3b:	69 c0 46 46 00 00    	imul   $0x4646,%eax,%eax
  401b41:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b45:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b49:	69 c0 9a 6c 00 00    	imul   $0x6c9a,%eax,%eax
  401b4f:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b53:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b57:	69 c0 bb 05 00 00    	imul   $0x5bb,%eax,%eax
  401b5d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b61:	8b 04 24             	mov    (%rsp),%eax
  401b64:	69 c0 ad b0 00 00    	imul   $0xb0ad,%eax,%eax
  401b6a:	89 04 24             	mov    %eax,(%rsp)
  401b6d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b71:	69 c0 31 33 00 00    	imul   $0x3331,%eax,%eax
  401b77:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b7b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b7f:	69 c0 18 b5 00 00    	imul   $0xb518,%eax,%eax
  401b85:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b89:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b8d:	69 c0 33 9b 00 00    	imul   $0x9b33,%eax,%eax
  401b93:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b97:	8b 54 24 14          	mov    0x14(%rsp),%edx
  401b9b:	89 d0                	mov    %edx,%eax
  401b9d:	c1 e0 07             	shl    $0x7,%eax
  401ba0:	01 d0                	add    %edx,%eax
  401ba2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401ba6:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401baa:	69 c0 75 81 00 00    	imul   $0x8175,%eax,%eax
  401bb0:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401bb4:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bb8:	69 c0 b2 e6 00 00    	imul   $0xe6b2,%eax,%eax
  401bbe:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bc2:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bc6:	69 c0 7a 2d 00 00    	imul   $0x2d7a,%eax,%eax
  401bcc:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bd0:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bd4:	69 c0 fa be 00 00    	imul   $0xbefa,%eax,%eax
  401bda:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bde:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401be2:	69 c0 41 c3 00 00    	imul   $0xc341,%eax,%eax
  401be8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bec:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bf0:	69 c0 6b 2d 00 00    	imul   $0x2d6b,%eax,%eax
  401bf6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bfa:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bfe:	69 c0 94 19 00 00    	imul   $0x1994,%eax,%eax
  401c04:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c08:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c0c:	69 c0 db b4 00 00    	imul   $0xb4db,%eax,%eax
  401c12:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c16:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c1a:	69 c0 38 7a 00 00    	imul   $0x7a38,%eax,%eax
  401c20:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c24:	8b 04 24             	mov    (%rsp),%eax
  401c27:	69 c0 d5 b3 00 00    	imul   $0xb3d5,%eax,%eax
  401c2d:	89 04 24             	mov    %eax,(%rsp)
  401c30:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c34:	69 c0 af d0 00 00    	imul   $0xd0af,%eax,%eax
  401c3a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c3e:	8b 04 24             	mov    (%rsp),%eax
  401c41:	69 c0 7c a4 00 00    	imul   $0xa47c,%eax,%eax
  401c47:	89 04 24             	mov    %eax,(%rsp)
  401c4a:	8b 04 24             	mov    (%rsp),%eax
  401c4d:	69 c0 fe cc 00 00    	imul   $0xccfe,%eax,%eax
  401c53:	89 04 24             	mov    %eax,(%rsp)
  401c56:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c5a:	69 c0 9e f0 00 00    	imul   $0xf09e,%eax,%eax
  401c60:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c64:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401c68:	69 c0 55 2a 00 00    	imul   $0x2a55,%eax,%eax
  401c6e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401c72:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c76:	69 c0 70 9a 00 00    	imul   $0x9a70,%eax,%eax
  401c7c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c80:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c84:	69 c0 c9 cc 00 00    	imul   $0xccc9,%eax,%eax
  401c8a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c8e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c92:	69 c0 21 dc 00 00    	imul   $0xdc21,%eax,%eax
  401c98:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c9c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ca0:	69 c0 2a 7b 00 00    	imul   $0x7b2a,%eax,%eax
  401ca6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401caa:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401cae:	69 c0 0f a6 00 00    	imul   $0xa60f,%eax,%eax
  401cb4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401cb8:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401cbc:	69 c0 d9 33 00 00    	imul   $0x33d9,%eax,%eax
  401cc2:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401cc6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401cca:	69 c0 4f aa 00 00    	imul   $0xaa4f,%eax,%eax
  401cd0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401cd4:	8b 04 24             	mov    (%rsp),%eax
  401cd7:	69 c0 f8 87 00 00    	imul   $0x87f8,%eax,%eax
  401cdd:	89 04 24             	mov    %eax,(%rsp)
  401ce0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401ce4:	69 c0 48 ad 00 00    	imul   $0xad48,%eax,%eax
  401cea:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401cee:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401cf2:	69 c0 9f 80 00 00    	imul   $0x809f,%eax,%eax
  401cf8:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401cfc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401d00:	69 c0 25 82 00 00    	imul   $0x8225,%eax,%eax
  401d06:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401d0a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d0e:	69 c0 a0 c5 00 00    	imul   $0xc5a0,%eax,%eax
  401d14:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d18:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401d1c:	69 c0 2f 55 00 00    	imul   $0x552f,%eax,%eax
  401d22:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401d26:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d2a:	69 c0 35 80 00 00    	imul   $0x8035,%eax,%eax
  401d30:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d34:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d38:	69 c0 cf fa 00 00    	imul   $0xfacf,%eax,%eax
  401d3e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d42:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d46:	69 c0 ec 36 00 00    	imul   $0x36ec,%eax,%eax
  401d4c:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d50:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d54:	69 c0 56 56 00 00    	imul   $0x5656,%eax,%eax
  401d5a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d5e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d62:	69 c0 62 16 00 00    	imul   $0x1662,%eax,%eax
  401d68:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401d6c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d70:	69 c0 f9 fd 00 00    	imul   $0xfdf9,%eax,%eax
  401d76:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d7a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d7e:	69 c0 93 cd 00 00    	imul   $0xcd93,%eax,%eax
  401d84:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d88:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d8c:	69 c0 f8 cf 00 00    	imul   $0xcff8,%eax,%eax
  401d92:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d96:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d9a:	69 c0 84 77 00 00    	imul   $0x7784,%eax,%eax
  401da0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401da4:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401da8:	69 c0 d9 4e 00 00    	imul   $0x4ed9,%eax,%eax
  401dae:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401db2:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401db6:	69 c0 71 d9 00 00    	imul   $0xd971,%eax,%eax
  401dbc:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401dc0:	8b 04 24             	mov    (%rsp),%eax
  401dc3:	69 c0 ad 01 00 00    	imul   $0x1ad,%eax,%eax
  401dc9:	89 04 24             	mov    %eax,(%rsp)
  401dcc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401dd0:	69 c0 3f 5d 00 00    	imul   $0x5d3f,%eax,%eax
  401dd6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401dda:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401dde:	69 c0 5f ab 00 00    	imul   $0xab5f,%eax,%eax
  401de4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401de8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401dec:	69 c0 73 aa 00 00    	imul   $0xaa73,%eax,%eax
  401df2:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401df6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401dfa:	69 c0 7d b5 00 00    	imul   $0xb57d,%eax,%eax
  401e00:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401e04:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e08:	69 c0 5b 46 00 00    	imul   $0x465b,%eax,%eax
  401e0e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e12:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401e16:	69 c0 34 d5 00 00    	imul   $0xd534,%eax,%eax
  401e1c:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e20:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e24:	69 c0 8b 45 00 00    	imul   $0x458b,%eax,%eax
  401e2a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e2e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e32:	69 c0 fd 80 00 00    	imul   $0x80fd,%eax,%eax
  401e38:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e3c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e40:	69 c0 01 5e 00 00    	imul   $0x5e01,%eax,%eax
  401e46:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e4a:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401e4e:	69 c0 7a ed 00 00    	imul   $0xed7a,%eax,%eax
  401e54:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401e58:	8b 04 24             	mov    (%rsp),%eax
  401e5b:	69 c0 00 23 00 00    	imul   $0x2300,%eax,%eax
  401e61:	89 04 24             	mov    %eax,(%rsp)
  401e64:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e68:	69 c0 00 2d 00 00    	imul   $0x2d00,%eax,%eax
  401e6e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e72:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e76:	69 c0 b9 37 00 00    	imul   $0x37b9,%eax,%eax
  401e7c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e80:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e84:	69 c0 00 9a 00 00    	imul   $0x9a00,%eax,%eax
  401e8a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e8e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e92:	69 c0 fb 77 00 00    	imul   $0x77fb,%eax,%eax
  401e98:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e9c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ea0:	69 c0 3b 6b 00 00    	imul   $0x6b3b,%eax,%eax
  401ea6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401eaa:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401eae:	69 c0 80 1f 00 00    	imul   $0x1f80,%eax,%eax
  401eb4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401eb8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401ebc:	69 c0 19 f8 00 00    	imul   $0xf819,%eax,%eax
  401ec2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ec6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ecb:	ba 00 00 00 00       	mov    $0x0,%edx
  401ed0:	83 f8 09             	cmp    $0x9,%eax
  401ed3:	77 0c                	ja     401ee1 <scramble+0x4dd>
  401ed5:	89 c1                	mov    %eax,%ecx
  401ed7:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401eda:	01 ca                	add    %ecx,%edx
  401edc:	83 c0 01             	add    $0x1,%eax
  401edf:	eb ef                	jmp    401ed0 <scramble+0x4cc>
  401ee1:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401ee6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401eed:	00 00 
  401eef:	75 07                	jne    401ef8 <scramble+0x4f4>
  401ef1:	89 d0                	mov    %edx,%eax
  401ef3:	48 83 c4 38          	add    $0x38,%rsp
  401ef7:	c3                   	ret    
  401ef8:	e8 88 08 00 00       	call   402785 <__stack_chk_fail>

0000000000401efd <getbuf>:
  401efd:	f3 0f 1e fa          	endbr64 
  401f01:	48 83 ec 28          	sub    $0x28,%rsp
  401f05:	48 89 e7             	mov    %rsp,%rdi
  401f08:	e8 94 03 00 00       	call   4022a1 <Gets>
  401f0d:	b8 01 00 00 00       	mov    $0x1,%eax
  401f12:	48 83 c4 28          	add    $0x28,%rsp
  401f16:	c3                   	ret    

0000000000401f17 <getbuf_withcanary>:
  401f17:	f3 0f 1e fa          	endbr64 
  401f1b:	55                   	push   %rbp
  401f1c:	48 89 e5             	mov    %rsp,%rbp
  401f1f:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  401f26:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f2d:	00 00 
  401f2f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f33:	31 c0                	xor    %eax,%eax
  401f35:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  401f3c:	00 00 00 
  401f3f:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401f45:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  401f4b:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f52:	48 89 c7             	mov    %rax,%rdi
  401f55:	e8 47 03 00 00       	call   4022a1 <Gets>
  401f5a:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  401f60:	48 63 d0             	movslq %eax,%rdx
  401f63:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f6a:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  401f71:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f78:	48 89 ce             	mov    %rcx,%rsi
  401f7b:	48 89 c7             	mov    %rax,%rdi
  401f7e:	e8 ed f3 ff ff       	call   401370 <memcpy@plt>
  401f83:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401f89:	48 63 d0             	movslq %eax,%rdx
  401f8c:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f93:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  401f9a:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  401fa1:	48 89 c6             	mov    %rax,%rsi
  401fa4:	48 89 cf             	mov    %rcx,%rdi
  401fa7:	e8 c4 f3 ff ff       	call   401370 <memcpy@plt>
  401fac:	b8 01 00 00 00       	mov    $0x1,%eax
  401fb1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401fb5:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401fbc:	00 00 
  401fbe:	74 05                	je     401fc5 <getbuf_withcanary+0xae>
  401fc0:	e8 c0 07 00 00       	call   402785 <__stack_chk_fail>
  401fc5:	c9                   	leave  
  401fc6:	c3                   	ret    

0000000000401fc7 <touch1>:
  401fc7:	f3 0f 1e fa          	endbr64 
  401fcb:	50                   	push   %rax
  401fcc:	58                   	pop    %rax
  401fcd:	48 83 ec 08          	sub    $0x8,%rsp
  401fd1:	c7 05 41 55 00 00 01 	movl   $0x1,0x5541(%rip)        # 40751c <vlevel>
  401fd8:	00 00 00 
  401fdb:	48 8d 3d 34 23 00 00 	lea    0x2334(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401fe2:	e8 c9 f2 ff ff       	call   4012b0 <puts@plt>
  401fe7:	bf 01 00 00 00       	mov    $0x1,%edi
  401fec:	e8 22 05 00 00       	call   402513 <validate>
  401ff1:	bf 00 00 00 00       	mov    $0x0,%edi
  401ff6:	e8 15 f4 ff ff       	call   401410 <exit@plt>

0000000000401ffb <touch2>:
  401ffb:	f3 0f 1e fa          	endbr64 
  401fff:	50                   	push   %rax
  402000:	58                   	pop    %rax
  402001:	48 83 ec 08          	sub    $0x8,%rsp
  402005:	89 fa                	mov    %edi,%edx
  402007:	c7 05 0b 55 00 00 02 	movl   $0x2,0x550b(%rip)        # 40751c <vlevel>
  40200e:	00 00 00 
  402011:	39 3d 0d 55 00 00    	cmp    %edi,0x550d(%rip)        # 407524 <cookie>
  402017:	74 2a                	je     402043 <touch2+0x48>
  402019:	48 8d 35 40 23 00 00 	lea    0x2340(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  402020:	bf 01 00 00 00       	mov    $0x1,%edi
  402025:	b8 00 00 00 00       	mov    $0x0,%eax
  40202a:	e8 91 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  40202f:	bf 02 00 00 00       	mov    $0x2,%edi
  402034:	e8 b5 05 00 00       	call   4025ee <fail>
  402039:	bf 00 00 00 00       	mov    $0x0,%edi
  40203e:	e8 cd f3 ff ff       	call   401410 <exit@plt>
  402043:	48 8d 35 ee 22 00 00 	lea    0x22ee(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  40204a:	bf 01 00 00 00       	mov    $0x1,%edi
  40204f:	b8 00 00 00 00       	mov    $0x0,%eax
  402054:	e8 67 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  402059:	bf 02 00 00 00       	mov    $0x2,%edi
  40205e:	e8 b0 04 00 00       	call   402513 <validate>
  402063:	eb d4                	jmp    402039 <touch2+0x3e>

0000000000402065 <hexmatch>:
  402065:	f3 0f 1e fa          	endbr64 
  402069:	41 55                	push   %r13
  40206b:	41 54                	push   %r12
  40206d:	55                   	push   %rbp
  40206e:	53                   	push   %rbx
  40206f:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  402076:	89 fd                	mov    %edi,%ebp
  402078:	48 89 f3             	mov    %rsi,%rbx
  40207b:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  402081:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  402086:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  40208b:	31 c0                	xor    %eax,%eax
  40208d:	e8 fe f2 ff ff       	call   401390 <random@plt>
  402092:	48 89 c1             	mov    %rax,%rcx
  402095:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40209c:	0a d7 a3 
  40209f:	48 f7 ea             	imul   %rdx
  4020a2:	48 01 ca             	add    %rcx,%rdx
  4020a5:	48 c1 fa 06          	sar    $0x6,%rdx
  4020a9:	48 89 c8             	mov    %rcx,%rax
  4020ac:	48 c1 f8 3f          	sar    $0x3f,%rax
  4020b0:	48 29 c2             	sub    %rax,%rdx
  4020b3:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  4020b7:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4020bb:	48 c1 e0 02          	shl    $0x2,%rax
  4020bf:	48 29 c1             	sub    %rax,%rcx
  4020c2:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  4020c6:	41 89 e8             	mov    %ebp,%r8d
  4020c9:	48 8d 0d 63 22 00 00 	lea    0x2263(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  4020d0:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4020d7:	be 01 00 00 00       	mov    $0x1,%esi
  4020dc:	4c 89 ef             	mov    %r13,%rdi
  4020df:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e4:	e8 67 f3 ff ff       	call   401450 <__sprintf_chk@plt>
  4020e9:	ba 09 00 00 00       	mov    $0x9,%edx
  4020ee:	4c 89 ee             	mov    %r13,%rsi
  4020f1:	48 89 df             	mov    %rbx,%rdi
  4020f4:	e8 97 f1 ff ff       	call   401290 <strncmp@plt>
  4020f9:	85 c0                	test   %eax,%eax
  4020fb:	0f 94 c0             	sete   %al
  4020fe:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  402103:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  402108:	75 11                	jne    40211b <hexmatch+0xb6>
  40210a:	0f b6 c0             	movzbl %al,%eax
  40210d:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  402114:	5b                   	pop    %rbx
  402115:	5d                   	pop    %rbp
  402116:	41 5c                	pop    %r12
  402118:	41 5d                	pop    %r13
  40211a:	c3                   	ret    
  40211b:	e8 65 06 00 00       	call   402785 <__stack_chk_fail>

0000000000402120 <touch3>:
  402120:	f3 0f 1e fa          	endbr64 
  402124:	53                   	push   %rbx
  402125:	48 89 fb             	mov    %rdi,%rbx
  402128:	c7 05 ea 53 00 00 03 	movl   $0x3,0x53ea(%rip)        # 40751c <vlevel>
  40212f:	00 00 00 
  402132:	48 89 fe             	mov    %rdi,%rsi
  402135:	8b 3d e9 53 00 00    	mov    0x53e9(%rip),%edi        # 407524 <cookie>
  40213b:	e8 25 ff ff ff       	call   402065 <hexmatch>
  402140:	85 c0                	test   %eax,%eax
  402142:	74 2d                	je     402171 <touch3+0x51>
  402144:	48 89 da             	mov    %rbx,%rdx
  402147:	48 8d 35 3a 22 00 00 	lea    0x223a(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  40214e:	bf 01 00 00 00       	mov    $0x1,%edi
  402153:	b8 00 00 00 00       	mov    $0x0,%eax
  402158:	e8 63 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  40215d:	bf 03 00 00 00       	mov    $0x3,%edi
  402162:	e8 ac 03 00 00       	call   402513 <validate>
  402167:	bf 00 00 00 00       	mov    $0x0,%edi
  40216c:	e8 9f f2 ff ff       	call   401410 <exit@plt>
  402171:	48 89 da             	mov    %rbx,%rdx
  402174:	48 8d 35 35 22 00 00 	lea    0x2235(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  40217b:	bf 01 00 00 00       	mov    $0x1,%edi
  402180:	b8 00 00 00 00       	mov    $0x0,%eax
  402185:	e8 36 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  40218a:	bf 03 00 00 00       	mov    $0x3,%edi
  40218f:	e8 5a 04 00 00       	call   4025ee <fail>
  402194:	eb d1                	jmp    402167 <touch3+0x47>

0000000000402196 <test>:
  402196:	f3 0f 1e fa          	endbr64 
  40219a:	48 83 ec 08          	sub    $0x8,%rsp
  40219e:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a3:	e8 55 fd ff ff       	call   401efd <getbuf>
  4021a8:	89 c2                	mov    %eax,%edx
  4021aa:	48 8d 35 27 22 00 00 	lea    0x2227(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  4021b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4021b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021bb:	e8 00 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4021c0:	48 83 c4 08          	add    $0x8,%rsp
  4021c4:	c3                   	ret    

00000000004021c5 <test2>:
  4021c5:	f3 0f 1e fa          	endbr64 
  4021c9:	48 83 ec 08          	sub    $0x8,%rsp
  4021cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d2:	e8 40 fd ff ff       	call   401f17 <getbuf_withcanary>
  4021d7:	89 c2                	mov    %eax,%edx
  4021d9:	48 8d 35 20 22 00 00 	lea    0x2220(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  4021e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4021e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ea:	e8 d1 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  4021ef:	48 83 c4 08          	add    $0x8,%rsp
  4021f3:	c3                   	ret    

00000000004021f4 <save_char>:
  4021f4:	8b 05 4a 5f 00 00    	mov    0x5f4a(%rip),%eax        # 408144 <gets_cnt>
  4021fa:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4021ff:	7f 4a                	jg     40224b <save_char+0x57>
  402201:	89 f9                	mov    %edi,%ecx
  402203:	c0 e9 04             	shr    $0x4,%cl
  402206:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402209:	4c 8d 05 60 25 00 00 	lea    0x2560(%rip),%r8        # 404770 <trans_char>
  402210:	83 e1 0f             	and    $0xf,%ecx
  402213:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402218:	48 8d 0d 21 53 00 00 	lea    0x5321(%rip),%rcx        # 407540 <gets_buf>
  40221f:	48 63 f2             	movslq %edx,%rsi
  402222:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  402226:	8d 72 01             	lea    0x1(%rdx),%esi
  402229:	83 e7 0f             	and    $0xf,%edi
  40222c:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402231:	48 63 f6             	movslq %esi,%rsi
  402234:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402238:	83 c2 02             	add    $0x2,%edx
  40223b:	48 63 d2             	movslq %edx,%rdx
  40223e:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402242:	83 c0 01             	add    $0x1,%eax
  402245:	89 05 f9 5e 00 00    	mov    %eax,0x5ef9(%rip)        # 408144 <gets_cnt>
  40224b:	c3                   	ret    

000000000040224c <save_term>:
  40224c:	8b 05 f2 5e 00 00    	mov    0x5ef2(%rip),%eax        # 408144 <gets_cnt>
  402252:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402255:	48 98                	cltq   
  402257:	48 8d 15 e2 52 00 00 	lea    0x52e2(%rip),%rdx        # 407540 <gets_buf>
  40225e:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402262:	c3                   	ret    

0000000000402263 <check_fail>:
  402263:	f3 0f 1e fa          	endbr64 
  402267:	50                   	push   %rax
  402268:	58                   	pop    %rax
  402269:	48 83 ec 08          	sub    $0x8,%rsp
  40226d:	0f be 15 d4 5e 00 00 	movsbl 0x5ed4(%rip),%edx        # 408148 <target_prefix>
  402274:	4c 8d 05 c5 52 00 00 	lea    0x52c5(%rip),%r8        # 407540 <gets_buf>
  40227b:	8b 0d 97 52 00 00    	mov    0x5297(%rip),%ecx        # 407518 <check_level>
  402281:	48 8d 35 a6 21 00 00 	lea    0x21a6(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  402288:	bf 01 00 00 00       	mov    $0x1,%edi
  40228d:	b8 00 00 00 00       	mov    $0x0,%eax
  402292:	e8 29 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  402297:	bf 01 00 00 00       	mov    $0x1,%edi
  40229c:	e8 6f f1 ff ff       	call   401410 <exit@plt>

00000000004022a1 <Gets>:
  4022a1:	f3 0f 1e fa          	endbr64 
  4022a5:	41 54                	push   %r12
  4022a7:	55                   	push   %rbp
  4022a8:	53                   	push   %rbx
  4022a9:	49 89 fc             	mov    %rdi,%r12
  4022ac:	c7 05 8e 5e 00 00 00 	movl   $0x0,0x5e8e(%rip)        # 408144 <gets_cnt>
  4022b3:	00 00 00 
  4022b6:	48 89 fb             	mov    %rdi,%rbx
  4022b9:	48 8b 3d 50 52 00 00 	mov    0x5250(%rip),%rdi        # 407510 <infile>
  4022c0:	e8 7b f1 ff ff       	call   401440 <getc@plt>
  4022c5:	83 f8 ff             	cmp    $0xffffffff,%eax
  4022c8:	74 18                	je     4022e2 <Gets+0x41>
  4022ca:	83 f8 0a             	cmp    $0xa,%eax
  4022cd:	74 13                	je     4022e2 <Gets+0x41>
  4022cf:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4022d3:	88 03                	mov    %al,(%rbx)
  4022d5:	0f b6 f8             	movzbl %al,%edi
  4022d8:	e8 17 ff ff ff       	call   4021f4 <save_char>
  4022dd:	48 89 eb             	mov    %rbp,%rbx
  4022e0:	eb d7                	jmp    4022b9 <Gets+0x18>
  4022e2:	c6 03 00             	movb   $0x0,(%rbx)
  4022e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ea:	e8 5d ff ff ff       	call   40224c <save_term>
  4022ef:	4c 89 e0             	mov    %r12,%rax
  4022f2:	5b                   	pop    %rbx
  4022f3:	5d                   	pop    %rbp
  4022f4:	41 5c                	pop    %r12
  4022f6:	c3                   	ret    

00000000004022f7 <notify_server>:
  4022f7:	f3 0f 1e fa          	endbr64 
  4022fb:	55                   	push   %rbp
  4022fc:	53                   	push   %rbx
  4022fd:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402304:	ff 
  402305:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40230c:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402311:	4c 39 dc             	cmp    %r11,%rsp
  402314:	75 ef                	jne    402305 <notify_server+0xe>
  402316:	48 83 ec 18          	sub    $0x18,%rsp
  40231a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402321:	00 00 
  402323:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  40232a:	00 
  40232b:	31 c0                	xor    %eax,%eax
  40232d:	83 3d f4 51 00 00 00 	cmpl   $0x0,0x51f4(%rip)        # 407528 <is_checker>
  402334:	0f 85 b7 01 00 00    	jne    4024f1 <notify_server+0x1fa>
  40233a:	89 fb                	mov    %edi,%ebx
  40233c:	81 3d fe 5d 00 00 9c 	cmpl   $0x1f9c,0x5dfe(%rip)        # 408144 <gets_cnt>
  402343:	1f 00 00 
  402346:	7f 18                	jg     402360 <notify_server+0x69>
  402348:	0f be 05 f9 5d 00 00 	movsbl 0x5df9(%rip),%eax        # 408148 <target_prefix>
  40234f:	83 3d 4a 51 00 00 00 	cmpl   $0x0,0x514a(%rip)        # 4074a0 <notify>
  402356:	74 23                	je     40237b <notify_server+0x84>
  402358:	8b 15 c2 51 00 00    	mov    0x51c2(%rip),%edx        # 407520 <authkey>
  40235e:	eb 20                	jmp    402380 <notify_server+0x89>
  402360:	48 8d 35 f1 21 00 00 	lea    0x21f1(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  402367:	bf 01 00 00 00       	mov    $0x1,%edi
  40236c:	e8 4f f0 ff ff       	call   4013c0 <__printf_chk@plt>
  402371:	bf 01 00 00 00       	mov    $0x1,%edi
  402376:	e8 95 f0 ff ff       	call   401410 <exit@plt>
  40237b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402380:	85 db                	test   %ebx,%ebx
  402382:	0f 84 9b 00 00 00    	je     402423 <notify_server+0x12c>
  402388:	48 8d 2d ba 20 00 00 	lea    0x20ba(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  40238f:	48 89 e7             	mov    %rsp,%rdi
  402392:	48 8d 0d a7 51 00 00 	lea    0x51a7(%rip),%rcx        # 407540 <gets_buf>
  402399:	51                   	push   %rcx
  40239a:	56                   	push   %rsi
  40239b:	50                   	push   %rax
  40239c:	52                   	push   %rdx
  40239d:	49 89 e9             	mov    %rbp,%r9
  4023a0:	44 8b 05 a9 4d 00 00 	mov    0x4da9(%rip),%r8d        # 407150 <target_id>
  4023a7:	48 8d 0d a0 20 00 00 	lea    0x20a0(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  4023ae:	ba 00 20 00 00       	mov    $0x2000,%edx
  4023b3:	be 01 00 00 00       	mov    $0x1,%esi
  4023b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4023bd:	e8 8e f0 ff ff       	call   401450 <__sprintf_chk@plt>
  4023c2:	48 83 c4 20          	add    $0x20,%rsp
  4023c6:	83 3d d3 50 00 00 00 	cmpl   $0x0,0x50d3(%rip)        # 4074a0 <notify>
  4023cd:	0f 84 95 00 00 00    	je     402468 <notify_server+0x171>
  4023d3:	48 89 e1             	mov    %rsp,%rcx
  4023d6:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4023dd:	00 
  4023de:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4023e4:	48 8b 15 7d 4d 00 00 	mov    0x4d7d(%rip),%rdx        # 407168 <lab>
  4023eb:	48 8b 35 7e 4d 00 00 	mov    0x4d7e(%rip),%rsi        # 407170 <course>
  4023f2:	48 8b 3d 67 4d 00 00 	mov    0x4d67(%rip),%rdi        # 407160 <user_id>
  4023f9:	e8 7f 12 00 00       	call   40367d <driver_post>
  4023fe:	85 c0                	test   %eax,%eax
  402400:	78 2d                	js     40242f <notify_server+0x138>
  402402:	85 db                	test   %ebx,%ebx
  402404:	74 51                	je     402457 <notify_server+0x160>
  402406:	48 8d 3d 7b 21 00 00 	lea    0x217b(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  40240d:	e8 9e ee ff ff       	call   4012b0 <puts@plt>
  402412:	48 8d 3d 5d 20 00 00 	lea    0x205d(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  402419:	e8 92 ee ff ff       	call   4012b0 <puts@plt>
  40241e:	e9 ce 00 00 00       	jmp    4024f1 <notify_server+0x1fa>
  402423:	48 8d 2d 1a 20 00 00 	lea    0x201a(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  40242a:	e9 60 ff ff ff       	jmp    40238f <notify_server+0x98>
  40242f:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402436:	00 
  402437:	48 8d 35 2c 20 00 00 	lea    0x202c(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  40243e:	bf 01 00 00 00       	mov    $0x1,%edi
  402443:	b8 00 00 00 00       	mov    $0x0,%eax
  402448:	e8 73 ef ff ff       	call   4013c0 <__printf_chk@plt>
  40244d:	bf 01 00 00 00       	mov    $0x1,%edi
  402452:	e8 b9 ef ff ff       	call   401410 <exit@plt>
  402457:	48 8d 3d 22 20 00 00 	lea    0x2022(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  40245e:	e8 4d ee ff ff       	call   4012b0 <puts@plt>
  402463:	e9 89 00 00 00       	jmp    4024f1 <notify_server+0x1fa>
  402468:	48 89 ea             	mov    %rbp,%rdx
  40246b:	48 8d 35 4e 21 00 00 	lea    0x214e(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  402472:	bf 01 00 00 00       	mov    $0x1,%edi
  402477:	b8 00 00 00 00       	mov    $0x0,%eax
  40247c:	e8 3f ef ff ff       	call   4013c0 <__printf_chk@plt>
  402481:	48 8b 15 d8 4c 00 00 	mov    0x4cd8(%rip),%rdx        # 407160 <user_id>
  402488:	48 8d 35 f8 1f 00 00 	lea    0x1ff8(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  40248f:	bf 01 00 00 00       	mov    $0x1,%edi
  402494:	b8 00 00 00 00       	mov    $0x0,%eax
  402499:	e8 22 ef ff ff       	call   4013c0 <__printf_chk@plt>
  40249e:	48 8b 15 cb 4c 00 00 	mov    0x4ccb(%rip),%rdx        # 407170 <course>
  4024a5:	48 8d 35 e8 1f 00 00 	lea    0x1fe8(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  4024ac:	bf 01 00 00 00       	mov    $0x1,%edi
  4024b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b6:	e8 05 ef ff ff       	call   4013c0 <__printf_chk@plt>
  4024bb:	48 8b 15 a6 4c 00 00 	mov    0x4ca6(%rip),%rdx        # 407168 <lab>
  4024c2:	48 8d 35 d7 1f 00 00 	lea    0x1fd7(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  4024c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4024ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4024d3:	e8 e8 ee ff ff       	call   4013c0 <__printf_chk@plt>
  4024d8:	48 89 e2             	mov    %rsp,%rdx
  4024db:	48 8d 35 c7 1f 00 00 	lea    0x1fc7(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  4024e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4024e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ec:	e8 cf ee ff ff       	call   4013c0 <__printf_chk@plt>
  4024f1:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4024f8:	00 
  4024f9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402500:	00 00 
  402502:	75 0a                	jne    40250e <notify_server+0x217>
  402504:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40250b:	5b                   	pop    %rbx
  40250c:	5d                   	pop    %rbp
  40250d:	c3                   	ret    
  40250e:	e8 72 02 00 00       	call   402785 <__stack_chk_fail>

0000000000402513 <validate>:
  402513:	f3 0f 1e fa          	endbr64 
  402517:	53                   	push   %rbx
  402518:	89 fb                	mov    %edi,%ebx
  40251a:	83 3d 07 50 00 00 00 	cmpl   $0x0,0x5007(%rip)        # 407528 <is_checker>
  402521:	74 79                	je     40259c <validate+0x89>
  402523:	39 3d f3 4f 00 00    	cmp    %edi,0x4ff3(%rip)        # 40751c <vlevel>
  402529:	75 39                	jne    402564 <validate+0x51>
  40252b:	8b 15 e7 4f 00 00    	mov    0x4fe7(%rip),%edx        # 407518 <check_level>
  402531:	39 fa                	cmp    %edi,%edx
  402533:	75 45                	jne    40257a <validate+0x67>
  402535:	0f be 0d 0c 5c 00 00 	movsbl 0x5c0c(%rip),%ecx        # 408148 <target_prefix>
  40253c:	4c 8d 0d fd 4f 00 00 	lea    0x4ffd(%rip),%r9        # 407540 <gets_buf>
  402543:	41 89 f8             	mov    %edi,%r8d
  402546:	8b 15 d4 4f 00 00    	mov    0x4fd4(%rip),%edx        # 407520 <authkey>
  40254c:	48 8d 35 bd 20 00 00 	lea    0x20bd(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  402553:	bf 01 00 00 00       	mov    $0x1,%edi
  402558:	b8 00 00 00 00       	mov    $0x0,%eax
  40255d:	e8 5e ee ff ff       	call   4013c0 <__printf_chk@plt>
  402562:	5b                   	pop    %rbx
  402563:	c3                   	ret    
  402564:	48 8d 3d 4a 1f 00 00 	lea    0x1f4a(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  40256b:	e8 40 ed ff ff       	call   4012b0 <puts@plt>
  402570:	b8 00 00 00 00       	mov    $0x0,%eax
  402575:	e8 e9 fc ff ff       	call   402263 <check_fail>
  40257a:	89 f9                	mov    %edi,%ecx
  40257c:	48 8d 35 65 20 00 00 	lea    0x2065(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  402583:	bf 01 00 00 00       	mov    $0x1,%edi
  402588:	b8 00 00 00 00       	mov    $0x0,%eax
  40258d:	e8 2e ee ff ff       	call   4013c0 <__printf_chk@plt>
  402592:	b8 00 00 00 00       	mov    $0x0,%eax
  402597:	e8 c7 fc ff ff       	call   402263 <check_fail>
  40259c:	39 3d 7a 4f 00 00    	cmp    %edi,0x4f7a(%rip)        # 40751c <vlevel>
  4025a2:	74 1a                	je     4025be <validate+0xab>
  4025a4:	48 8d 3d 0a 1f 00 00 	lea    0x1f0a(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  4025ab:	e8 00 ed ff ff       	call   4012b0 <puts@plt>
  4025b0:	89 de                	mov    %ebx,%esi
  4025b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4025b7:	e8 3b fd ff ff       	call   4022f7 <notify_server>
  4025bc:	eb a4                	jmp    402562 <validate+0x4f>
  4025be:	0f be 0d 83 5b 00 00 	movsbl 0x5b83(%rip),%ecx        # 408148 <target_prefix>
  4025c5:	89 fa                	mov    %edi,%edx
  4025c7:	48 8d 35 6a 20 00 00 	lea    0x206a(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  4025ce:	bf 01 00 00 00       	mov    $0x1,%edi
  4025d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4025d8:	e8 e3 ed ff ff       	call   4013c0 <__printf_chk@plt>
  4025dd:	89 de                	mov    %ebx,%esi
  4025df:	bf 01 00 00 00       	mov    $0x1,%edi
  4025e4:	e8 0e fd ff ff       	call   4022f7 <notify_server>
  4025e9:	e9 74 ff ff ff       	jmp    402562 <validate+0x4f>

00000000004025ee <fail>:
  4025ee:	f3 0f 1e fa          	endbr64 
  4025f2:	48 83 ec 08          	sub    $0x8,%rsp
  4025f6:	83 3d 2b 4f 00 00 00 	cmpl   $0x0,0x4f2b(%rip)        # 407528 <is_checker>
  4025fd:	75 11                	jne    402610 <fail+0x22>
  4025ff:	89 fe                	mov    %edi,%esi
  402601:	bf 00 00 00 00       	mov    $0x0,%edi
  402606:	e8 ec fc ff ff       	call   4022f7 <notify_server>
  40260b:	48 83 c4 08          	add    $0x8,%rsp
  40260f:	c3                   	ret    
  402610:	b8 00 00 00 00       	mov    $0x0,%eax
  402615:	e8 49 fc ff ff       	call   402263 <check_fail>

000000000040261a <bushandler>:
  40261a:	f3 0f 1e fa          	endbr64 
  40261e:	50                   	push   %rax
  40261f:	58                   	pop    %rax
  402620:	48 83 ec 08          	sub    $0x8,%rsp
  402624:	83 3d fd 4e 00 00 00 	cmpl   $0x0,0x4efd(%rip)        # 407528 <is_checker>
  40262b:	74 16                	je     402643 <bushandler+0x29>
  40262d:	48 8d 3d 9f 1e 00 00 	lea    0x1e9f(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  402634:	e8 77 ec ff ff       	call   4012b0 <puts@plt>
  402639:	b8 00 00 00 00       	mov    $0x0,%eax
  40263e:	e8 20 fc ff ff       	call   402263 <check_fail>
  402643:	48 8d 3d 26 20 00 00 	lea    0x2026(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  40264a:	e8 61 ec ff ff       	call   4012b0 <puts@plt>
  40264f:	48 8d 3d 87 1e 00 00 	lea    0x1e87(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402656:	e8 55 ec ff ff       	call   4012b0 <puts@plt>
  40265b:	be 00 00 00 00       	mov    $0x0,%esi
  402660:	bf 00 00 00 00       	mov    $0x0,%edi
  402665:	e8 8d fc ff ff       	call   4022f7 <notify_server>
  40266a:	bf 01 00 00 00       	mov    $0x1,%edi
  40266f:	e8 9c ed ff ff       	call   401410 <exit@plt>

0000000000402674 <seghandler>:
  402674:	f3 0f 1e fa          	endbr64 
  402678:	50                   	push   %rax
  402679:	58                   	pop    %rax
  40267a:	48 83 ec 08          	sub    $0x8,%rsp
  40267e:	83 3d a3 4e 00 00 00 	cmpl   $0x0,0x4ea3(%rip)        # 407528 <is_checker>
  402685:	74 16                	je     40269d <seghandler+0x29>
  402687:	48 8d 3d 65 1e 00 00 	lea    0x1e65(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  40268e:	e8 1d ec ff ff       	call   4012b0 <puts@plt>
  402693:	b8 00 00 00 00       	mov    $0x0,%eax
  402698:	e8 c6 fb ff ff       	call   402263 <check_fail>
  40269d:	48 8d 3d ec 1f 00 00 	lea    0x1fec(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  4026a4:	e8 07 ec ff ff       	call   4012b0 <puts@plt>
  4026a9:	48 8d 3d 2d 1e 00 00 	lea    0x1e2d(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4026b0:	e8 fb eb ff ff       	call   4012b0 <puts@plt>
  4026b5:	be 00 00 00 00       	mov    $0x0,%esi
  4026ba:	bf 00 00 00 00       	mov    $0x0,%edi
  4026bf:	e8 33 fc ff ff       	call   4022f7 <notify_server>
  4026c4:	bf 01 00 00 00       	mov    $0x1,%edi
  4026c9:	e8 42 ed ff ff       	call   401410 <exit@plt>

00000000004026ce <illegalhandler>:
  4026ce:	f3 0f 1e fa          	endbr64 
  4026d2:	50                   	push   %rax
  4026d3:	58                   	pop    %rax
  4026d4:	48 83 ec 08          	sub    $0x8,%rsp
  4026d8:	83 3d 49 4e 00 00 00 	cmpl   $0x0,0x4e49(%rip)        # 407528 <is_checker>
  4026df:	74 16                	je     4026f7 <illegalhandler+0x29>
  4026e1:	48 8d 3d 1e 1e 00 00 	lea    0x1e1e(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  4026e8:	e8 c3 eb ff ff       	call   4012b0 <puts@plt>
  4026ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f2:	e8 6c fb ff ff       	call   402263 <check_fail>
  4026f7:	48 8d 3d ba 1f 00 00 	lea    0x1fba(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  4026fe:	e8 ad eb ff ff       	call   4012b0 <puts@plt>
  402703:	48 8d 3d d3 1d 00 00 	lea    0x1dd3(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  40270a:	e8 a1 eb ff ff       	call   4012b0 <puts@plt>
  40270f:	be 00 00 00 00       	mov    $0x0,%esi
  402714:	bf 00 00 00 00       	mov    $0x0,%edi
  402719:	e8 d9 fb ff ff       	call   4022f7 <notify_server>
  40271e:	bf 01 00 00 00       	mov    $0x1,%edi
  402723:	e8 e8 ec ff ff       	call   401410 <exit@plt>

0000000000402728 <sigalrmhandler>:
  402728:	f3 0f 1e fa          	endbr64 
  40272c:	50                   	push   %rax
  40272d:	58                   	pop    %rax
  40272e:	48 83 ec 08          	sub    $0x8,%rsp
  402732:	83 3d ef 4d 00 00 00 	cmpl   $0x0,0x4def(%rip)        # 407528 <is_checker>
  402739:	74 16                	je     402751 <sigalrmhandler+0x29>
  40273b:	48 8d 3d d8 1d 00 00 	lea    0x1dd8(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  402742:	e8 69 eb ff ff       	call   4012b0 <puts@plt>
  402747:	b8 00 00 00 00       	mov    $0x0,%eax
  40274c:	e8 12 fb ff ff       	call   402263 <check_fail>
  402751:	ba 02 00 00 00       	mov    $0x2,%edx
  402756:	48 8d 35 8b 1f 00 00 	lea    0x1f8b(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  40275d:	bf 01 00 00 00       	mov    $0x1,%edi
  402762:	b8 00 00 00 00       	mov    $0x0,%eax
  402767:	e8 54 ec ff ff       	call   4013c0 <__printf_chk@plt>
  40276c:	be 00 00 00 00       	mov    $0x0,%esi
  402771:	bf 00 00 00 00       	mov    $0x0,%edi
  402776:	e8 7c fb ff ff       	call   4022f7 <notify_server>
  40277b:	bf 01 00 00 00       	mov    $0x1,%edi
  402780:	e8 8b ec ff ff       	call   401410 <exit@plt>

0000000000402785 <__stack_chk_fail>:
  402785:	f3 0f 1e fa          	endbr64 
  402789:	50                   	push   %rax
  40278a:	58                   	pop    %rax
  40278b:	48 83 ec 08          	sub    $0x8,%rsp
  40278f:	83 3d 92 4d 00 00 00 	cmpl   $0x0,0x4d92(%rip)        # 407528 <is_checker>
  402796:	74 16                	je     4027ae <__stack_chk_fail+0x29>
  402798:	48 8d 3d 83 1d 00 00 	lea    0x1d83(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  40279f:	e8 0c eb ff ff       	call   4012b0 <puts@plt>
  4027a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a9:	e8 b5 fa ff ff       	call   402263 <check_fail>
  4027ae:	48 8d 3d 6b 1f 00 00 	lea    0x1f6b(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  4027b5:	e8 f6 ea ff ff       	call   4012b0 <puts@plt>
  4027ba:	48 8d 3d 1c 1d 00 00 	lea    0x1d1c(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4027c1:	e8 ea ea ff ff       	call   4012b0 <puts@plt>
  4027c6:	be 00 00 00 00       	mov    $0x0,%esi
  4027cb:	bf 00 00 00 00       	mov    $0x0,%edi
  4027d0:	e8 22 fb ff ff       	call   4022f7 <notify_server>
  4027d5:	bf 01 00 00 00       	mov    $0x1,%edi
  4027da:	e8 31 ec ff ff       	call   401410 <exit@plt>

00000000004027df <launch>:
  4027df:	f3 0f 1e fa          	endbr64 
  4027e3:	55                   	push   %rbp
  4027e4:	48 89 e5             	mov    %rsp,%rbp
  4027e7:	53                   	push   %rbx
  4027e8:	48 83 ec 18          	sub    $0x18,%rsp
  4027ec:	48 89 fa             	mov    %rdi,%rdx
  4027ef:	89 f3                	mov    %esi,%ebx
  4027f1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4027f8:	00 00 
  4027fa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4027fe:	31 c0                	xor    %eax,%eax
  402800:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402804:	48 89 c1             	mov    %rax,%rcx
  402807:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  40280b:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402811:	48 89 e6             	mov    %rsp,%rsi
  402814:	48 29 c6             	sub    %rax,%rsi
  402817:	48 89 f0             	mov    %rsi,%rax
  40281a:	48 39 c4             	cmp    %rax,%rsp
  40281d:	74 12                	je     402831 <launch+0x52>
  40281f:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402826:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  40282d:	00 00 
  40282f:	eb e9                	jmp    40281a <launch+0x3b>
  402831:	48 89 c8             	mov    %rcx,%rax
  402834:	25 ff 0f 00 00       	and    $0xfff,%eax
  402839:	48 29 c4             	sub    %rax,%rsp
  40283c:	48 85 c0             	test   %rax,%rax
  40283f:	74 06                	je     402847 <launch+0x68>
  402841:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402847:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40284c:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402850:	be f4 00 00 00       	mov    $0xf4,%esi
  402855:	e8 86 ea ff ff       	call   4012e0 <memset@plt>
  40285a:	48 8b 05 5f 4c 00 00 	mov    0x4c5f(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  402861:	48 39 05 a8 4c 00 00 	cmp    %rax,0x4ca8(%rip)        # 407510 <infile>
  402868:	74 42                	je     4028ac <launch+0xcd>
  40286a:	c7 05 a8 4c 00 00 00 	movl   $0x0,0x4ca8(%rip)        # 40751c <vlevel>
  402871:	00 00 00 
  402874:	85 db                	test   %ebx,%ebx
  402876:	75 4c                	jne    4028c4 <launch+0xe5>
  402878:	b8 00 00 00 00       	mov    $0x0,%eax
  40287d:	e8 14 f9 ff ff       	call   402196 <test>
  402882:	83 3d 9f 4c 00 00 00 	cmpl   $0x0,0x4c9f(%rip)        # 407528 <is_checker>
  402889:	75 45                	jne    4028d0 <launch+0xf1>
  40288b:	48 8d 3d b7 1c 00 00 	lea    0x1cb7(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402892:	e8 19 ea ff ff       	call   4012b0 <puts@plt>
  402897:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40289b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4028a2:	00 00 
  4028a4:	75 40                	jne    4028e6 <launch+0x107>
  4028a6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4028aa:	c9                   	leave  
  4028ab:	c3                   	ret    
  4028ac:	48 8d 35 7e 1c 00 00 	lea    0x1c7e(%rip),%rsi        # 404531 <_IO_stdin_used+0x531>
  4028b3:	bf 01 00 00 00       	mov    $0x1,%edi
  4028b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4028bd:	e8 fe ea ff ff       	call   4013c0 <__printf_chk@plt>
  4028c2:	eb a6                	jmp    40286a <launch+0x8b>
  4028c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c9:	e8 f7 f8 ff ff       	call   4021c5 <test2>
  4028ce:	eb b2                	jmp    402882 <launch+0xa3>
  4028d0:	48 8d 3d 67 1c 00 00 	lea    0x1c67(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  4028d7:	e8 d4 e9 ff ff       	call   4012b0 <puts@plt>
  4028dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4028e1:	e8 7d f9 ff ff       	call   402263 <check_fail>
  4028e6:	e8 9a fe ff ff       	call   402785 <__stack_chk_fail>

00000000004028eb <stable_launch>:
  4028eb:	f3 0f 1e fa          	endbr64 
  4028ef:	55                   	push   %rbp
  4028f0:	53                   	push   %rbx
  4028f1:	48 83 ec 08          	sub    $0x8,%rsp
  4028f5:	89 f5                	mov    %esi,%ebp
  4028f7:	48 89 3d 0a 4c 00 00 	mov    %rdi,0x4c0a(%rip)        # 407508 <global_offset>
  4028fe:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402904:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40290a:	b9 32 01 00 00       	mov    $0x132,%ecx
  40290f:	ba 07 00 00 00       	mov    $0x7,%edx
  402914:	be 00 00 10 00       	mov    $0x100000,%esi
  402919:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40291e:	e8 ad e9 ff ff       	call   4012d0 <mmap@plt>
  402923:	48 89 c3             	mov    %rax,%rbx
  402926:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40292c:	75 4a                	jne    402978 <stable_launch+0x8d>
  40292e:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402935:	48 89 15 14 58 00 00 	mov    %rdx,0x5814(%rip)        # 408150 <stack_top>
  40293c:	48 89 e0             	mov    %rsp,%rax
  40293f:	48 89 d4             	mov    %rdx,%rsp
  402942:	48 89 c2             	mov    %rax,%rdx
  402945:	48 89 15 b4 4b 00 00 	mov    %rdx,0x4bb4(%rip)        # 407500 <global_save_stack>
  40294c:	89 ee                	mov    %ebp,%esi
  40294e:	48 8b 3d b3 4b 00 00 	mov    0x4bb3(%rip),%rdi        # 407508 <global_offset>
  402955:	e8 85 fe ff ff       	call   4027df <launch>
  40295a:	48 8b 05 9f 4b 00 00 	mov    0x4b9f(%rip),%rax        # 407500 <global_save_stack>
  402961:	48 89 c4             	mov    %rax,%rsp
  402964:	be 00 00 10 00       	mov    $0x100000,%esi
  402969:	48 89 df             	mov    %rbx,%rdi
  40296c:	e8 3f ea ff ff       	call   4013b0 <munmap@plt>
  402971:	48 83 c4 08          	add    $0x8,%rsp
  402975:	5b                   	pop    %rbx
  402976:	5d                   	pop    %rbp
  402977:	c3                   	ret    
  402978:	be 00 00 10 00       	mov    $0x100000,%esi
  40297d:	48 89 c7             	mov    %rax,%rdi
  402980:	e8 2b ea ff ff       	call   4013b0 <munmap@plt>
  402985:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40298a:	48 8d 15 b7 1d 00 00 	lea    0x1db7(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402991:	be 01 00 00 00       	mov    $0x1,%esi
  402996:	48 8b 3d 43 4b 00 00 	mov    0x4b43(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  40299d:	b8 00 00 00 00       	mov    $0x0,%eax
  4029a2:	e8 89 ea ff ff       	call   401430 <__fprintf_chk@plt>
  4029a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4029ac:	e8 5f ea ff ff       	call   401410 <exit@plt>

00000000004029b1 <rio_readinitb>:
  4029b1:	89 37                	mov    %esi,(%rdi)
  4029b3:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4029ba:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4029be:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4029c2:	c3                   	ret    

00000000004029c3 <sigalrm_handler>:
  4029c3:	f3 0f 1e fa          	endbr64 
  4029c7:	50                   	push   %rax
  4029c8:	58                   	pop    %rax
  4029c9:	48 83 ec 08          	sub    $0x8,%rsp
  4029cd:	b9 00 00 00 00       	mov    $0x0,%ecx
  4029d2:	48 8d 15 a7 1d 00 00 	lea    0x1da7(%rip),%rdx        # 404780 <trans_char+0x10>
  4029d9:	be 01 00 00 00       	mov    $0x1,%esi
  4029de:	48 8b 3d fb 4a 00 00 	mov    0x4afb(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4029e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ea:	e8 41 ea ff ff       	call   401430 <__fprintf_chk@plt>
  4029ef:	bf 01 00 00 00       	mov    $0x1,%edi
  4029f4:	e8 17 ea ff ff       	call   401410 <exit@plt>

00000000004029f9 <rio_writen>:
  4029f9:	41 55                	push   %r13
  4029fb:	41 54                	push   %r12
  4029fd:	55                   	push   %rbp
  4029fe:	53                   	push   %rbx
  4029ff:	48 83 ec 08          	sub    $0x8,%rsp
  402a03:	41 89 fc             	mov    %edi,%r12d
  402a06:	48 89 f5             	mov    %rsi,%rbp
  402a09:	49 89 d5             	mov    %rdx,%r13
  402a0c:	48 89 d3             	mov    %rdx,%rbx
  402a0f:	eb 06                	jmp    402a17 <rio_writen+0x1e>
  402a11:	48 29 c3             	sub    %rax,%rbx
  402a14:	48 01 c5             	add    %rax,%rbp
  402a17:	48 85 db             	test   %rbx,%rbx
  402a1a:	74 24                	je     402a40 <rio_writen+0x47>
  402a1c:	48 89 da             	mov    %rbx,%rdx
  402a1f:	48 89 ee             	mov    %rbp,%rsi
  402a22:	44 89 e7             	mov    %r12d,%edi
  402a25:	e8 96 e8 ff ff       	call   4012c0 <write@plt>
  402a2a:	48 85 c0             	test   %rax,%rax
  402a2d:	7f e2                	jg     402a11 <rio_writen+0x18>
  402a2f:	e8 2c e8 ff ff       	call   401260 <__errno_location@plt>
  402a34:	83 38 04             	cmpl   $0x4,(%rax)
  402a37:	75 15                	jne    402a4e <rio_writen+0x55>
  402a39:	b8 00 00 00 00       	mov    $0x0,%eax
  402a3e:	eb d1                	jmp    402a11 <rio_writen+0x18>
  402a40:	4c 89 e8             	mov    %r13,%rax
  402a43:	48 83 c4 08          	add    $0x8,%rsp
  402a47:	5b                   	pop    %rbx
  402a48:	5d                   	pop    %rbp
  402a49:	41 5c                	pop    %r12
  402a4b:	41 5d                	pop    %r13
  402a4d:	c3                   	ret    
  402a4e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a55:	eb ec                	jmp    402a43 <rio_writen+0x4a>

0000000000402a57 <rio_read>:
  402a57:	41 55                	push   %r13
  402a59:	41 54                	push   %r12
  402a5b:	55                   	push   %rbp
  402a5c:	53                   	push   %rbx
  402a5d:	48 83 ec 08          	sub    $0x8,%rsp
  402a61:	48 89 fb             	mov    %rdi,%rbx
  402a64:	49 89 f5             	mov    %rsi,%r13
  402a67:	49 89 d4             	mov    %rdx,%r12
  402a6a:	eb 17                	jmp    402a83 <rio_read+0x2c>
  402a6c:	e8 ef e7 ff ff       	call   401260 <__errno_location@plt>
  402a71:	83 38 04             	cmpl   $0x4,(%rax)
  402a74:	74 0d                	je     402a83 <rio_read+0x2c>
  402a76:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a7d:	eb 54                	jmp    402ad3 <rio_read+0x7c>
  402a7f:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402a83:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402a86:	85 ed                	test   %ebp,%ebp
  402a88:	7f 23                	jg     402aad <rio_read+0x56>
  402a8a:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402a8e:	8b 3b                	mov    (%rbx),%edi
  402a90:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a95:	48 89 ee             	mov    %rbp,%rsi
  402a98:	e8 73 e8 ff ff       	call   401310 <read@plt>
  402a9d:	89 43 04             	mov    %eax,0x4(%rbx)
  402aa0:	85 c0                	test   %eax,%eax
  402aa2:	78 c8                	js     402a6c <rio_read+0x15>
  402aa4:	75 d9                	jne    402a7f <rio_read+0x28>
  402aa6:	b8 00 00 00 00       	mov    $0x0,%eax
  402aab:	eb 26                	jmp    402ad3 <rio_read+0x7c>
  402aad:	89 e8                	mov    %ebp,%eax
  402aaf:	4c 39 e0             	cmp    %r12,%rax
  402ab2:	72 03                	jb     402ab7 <rio_read+0x60>
  402ab4:	44 89 e5             	mov    %r12d,%ebp
  402ab7:	4c 63 e5             	movslq %ebp,%r12
  402aba:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402abe:	4c 89 e2             	mov    %r12,%rdx
  402ac1:	4c 89 ef             	mov    %r13,%rdi
  402ac4:	e8 a7 e8 ff ff       	call   401370 <memcpy@plt>
  402ac9:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402acd:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402ad0:	4c 89 e0             	mov    %r12,%rax
  402ad3:	48 83 c4 08          	add    $0x8,%rsp
  402ad7:	5b                   	pop    %rbx
  402ad8:	5d                   	pop    %rbp
  402ad9:	41 5c                	pop    %r12
  402adb:	41 5d                	pop    %r13
  402add:	c3                   	ret    

0000000000402ade <rio_readlineb>:
  402ade:	41 55                	push   %r13
  402ae0:	41 54                	push   %r12
  402ae2:	55                   	push   %rbp
  402ae3:	53                   	push   %rbx
  402ae4:	48 83 ec 18          	sub    $0x18,%rsp
  402ae8:	49 89 fd             	mov    %rdi,%r13
  402aeb:	48 89 f5             	mov    %rsi,%rbp
  402aee:	49 89 d4             	mov    %rdx,%r12
  402af1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402af8:	00 00 
  402afa:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402aff:	31 c0                	xor    %eax,%eax
  402b01:	bb 01 00 00 00       	mov    $0x1,%ebx
  402b06:	eb 18                	jmp    402b20 <rio_readlineb+0x42>
  402b08:	85 c0                	test   %eax,%eax
  402b0a:	75 65                	jne    402b71 <rio_readlineb+0x93>
  402b0c:	48 83 fb 01          	cmp    $0x1,%rbx
  402b10:	75 3d                	jne    402b4f <rio_readlineb+0x71>
  402b12:	b8 00 00 00 00       	mov    $0x0,%eax
  402b17:	eb 3d                	jmp    402b56 <rio_readlineb+0x78>
  402b19:	48 83 c3 01          	add    $0x1,%rbx
  402b1d:	48 89 d5             	mov    %rdx,%rbp
  402b20:	4c 39 e3             	cmp    %r12,%rbx
  402b23:	73 2a                	jae    402b4f <rio_readlineb+0x71>
  402b25:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402b2a:	ba 01 00 00 00       	mov    $0x1,%edx
  402b2f:	4c 89 ef             	mov    %r13,%rdi
  402b32:	e8 20 ff ff ff       	call   402a57 <rio_read>
  402b37:	83 f8 01             	cmp    $0x1,%eax
  402b3a:	75 cc                	jne    402b08 <rio_readlineb+0x2a>
  402b3c:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402b40:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402b45:	88 45 00             	mov    %al,0x0(%rbp)
  402b48:	3c 0a                	cmp    $0xa,%al
  402b4a:	75 cd                	jne    402b19 <rio_readlineb+0x3b>
  402b4c:	48 89 d5             	mov    %rdx,%rbp
  402b4f:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402b53:	48 89 d8             	mov    %rbx,%rax
  402b56:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402b5b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402b62:	00 00 
  402b64:	75 14                	jne    402b7a <rio_readlineb+0x9c>
  402b66:	48 83 c4 18          	add    $0x18,%rsp
  402b6a:	5b                   	pop    %rbx
  402b6b:	5d                   	pop    %rbp
  402b6c:	41 5c                	pop    %r12
  402b6e:	41 5d                	pop    %r13
  402b70:	c3                   	ret    
  402b71:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b78:	eb dc                	jmp    402b56 <rio_readlineb+0x78>
  402b7a:	e8 06 fc ff ff       	call   402785 <__stack_chk_fail>

0000000000402b7f <urlencode>:
  402b7f:	41 54                	push   %r12
  402b81:	55                   	push   %rbp
  402b82:	53                   	push   %rbx
  402b83:	48 83 ec 10          	sub    $0x10,%rsp
  402b87:	48 89 fb             	mov    %rdi,%rbx
  402b8a:	48 89 f5             	mov    %rsi,%rbp
  402b8d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b94:	00 00 
  402b96:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402b9b:	31 c0                	xor    %eax,%eax
  402b9d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402ba4:	f2 ae                	repnz scas %es:(%rdi),%al
  402ba6:	48 f7 d1             	not    %rcx
  402ba9:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402bac:	eb 0f                	jmp    402bbd <urlencode+0x3e>
  402bae:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402bb2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402bb6:	48 83 c3 01          	add    $0x1,%rbx
  402bba:	44 89 e0             	mov    %r12d,%eax
  402bbd:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402bc1:	85 c0                	test   %eax,%eax
  402bc3:	0f 84 a8 00 00 00    	je     402c71 <urlencode+0xf2>
  402bc9:	44 0f b6 03          	movzbl (%rbx),%r8d
  402bcd:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402bd1:	0f 94 c2             	sete   %dl
  402bd4:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402bd8:	0f 94 c0             	sete   %al
  402bdb:	08 c2                	or     %al,%dl
  402bdd:	75 cf                	jne    402bae <urlencode+0x2f>
  402bdf:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402be3:	74 c9                	je     402bae <urlencode+0x2f>
  402be5:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402be9:	74 c3                	je     402bae <urlencode+0x2f>
  402beb:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402bef:	3c 09                	cmp    $0x9,%al
  402bf1:	76 bb                	jbe    402bae <urlencode+0x2f>
  402bf3:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402bf7:	3c 19                	cmp    $0x19,%al
  402bf9:	76 b3                	jbe    402bae <urlencode+0x2f>
  402bfb:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402bff:	3c 19                	cmp    $0x19,%al
  402c01:	76 ab                	jbe    402bae <urlencode+0x2f>
  402c03:	41 80 f8 20          	cmp    $0x20,%r8b
  402c07:	74 56                	je     402c5f <urlencode+0xe0>
  402c09:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402c0d:	3c 5f                	cmp    $0x5f,%al
  402c0f:	0f 96 c2             	setbe  %dl
  402c12:	41 80 f8 09          	cmp    $0x9,%r8b
  402c16:	0f 94 c0             	sete   %al
  402c19:	08 c2                	or     %al,%dl
  402c1b:	74 4f                	je     402c6c <urlencode+0xed>
  402c1d:	48 89 e7             	mov    %rsp,%rdi
  402c20:	45 0f b6 c0          	movzbl %r8b,%r8d
  402c24:	48 8d 0d 0a 1c 00 00 	lea    0x1c0a(%rip),%rcx        # 404835 <trans_char+0xc5>
  402c2b:	ba 08 00 00 00       	mov    $0x8,%edx
  402c30:	be 01 00 00 00       	mov    $0x1,%esi
  402c35:	b8 00 00 00 00       	mov    $0x0,%eax
  402c3a:	e8 11 e8 ff ff       	call   401450 <__sprintf_chk@plt>
  402c3f:	0f b6 04 24          	movzbl (%rsp),%eax
  402c43:	88 45 00             	mov    %al,0x0(%rbp)
  402c46:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402c4b:	88 45 01             	mov    %al,0x1(%rbp)
  402c4e:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402c53:	88 45 02             	mov    %al,0x2(%rbp)
  402c56:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402c5a:	e9 57 ff ff ff       	jmp    402bb6 <urlencode+0x37>
  402c5f:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402c63:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402c67:	e9 4a ff ff ff       	jmp    402bb6 <urlencode+0x37>
  402c6c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c71:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402c76:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402c7d:	00 00 
  402c7f:	75 09                	jne    402c8a <urlencode+0x10b>
  402c81:	48 83 c4 10          	add    $0x10,%rsp
  402c85:	5b                   	pop    %rbx
  402c86:	5d                   	pop    %rbp
  402c87:	41 5c                	pop    %r12
  402c89:	c3                   	ret    
  402c8a:	e8 f6 fa ff ff       	call   402785 <__stack_chk_fail>

0000000000402c8f <submitr>:
  402c8f:	f3 0f 1e fa          	endbr64 
  402c93:	41 57                	push   %r15
  402c95:	41 56                	push   %r14
  402c97:	41 55                	push   %r13
  402c99:	41 54                	push   %r12
  402c9b:	55                   	push   %rbp
  402c9c:	53                   	push   %rbx
  402c9d:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402ca4:	ff 
  402ca5:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402cac:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402cb1:	4c 39 dc             	cmp    %r11,%rsp
  402cb4:	75 ef                	jne    402ca5 <submitr+0x16>
  402cb6:	48 83 ec 68          	sub    $0x68,%rsp
  402cba:	49 89 fc             	mov    %rdi,%r12
  402cbd:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402cc1:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402cc6:	49 89 cd             	mov    %rcx,%r13
  402cc9:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402cce:	4d 89 ce             	mov    %r9,%r14
  402cd1:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402cd8:	00 
  402cd9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ce0:	00 00 
  402ce2:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402ce9:	00 
  402cea:	31 c0                	xor    %eax,%eax
  402cec:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402cf3:	00 
  402cf4:	ba 00 00 00 00       	mov    $0x0,%edx
  402cf9:	be 01 00 00 00       	mov    $0x1,%esi
  402cfe:	bf 02 00 00 00       	mov    $0x2,%edi
  402d03:	e8 58 e7 ff ff       	call   401460 <socket@plt>
  402d08:	85 c0                	test   %eax,%eax
  402d0a:	0f 88 a5 02 00 00    	js     402fb5 <submitr+0x326>
  402d10:	89 c3                	mov    %eax,%ebx
  402d12:	4c 89 e7             	mov    %r12,%rdi
  402d15:	e8 26 e6 ff ff       	call   401340 <gethostbyname@plt>
  402d1a:	48 85 c0             	test   %rax,%rax
  402d1d:	0f 84 de 02 00 00    	je     403001 <submitr+0x372>
  402d23:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402d28:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402d2f:	00 00 
  402d31:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402d38:	00 00 
  402d3a:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402d41:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d45:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d49:	48 8b 30             	mov    (%rax),%rsi
  402d4c:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402d51:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d56:	e8 f5 e5 ff ff       	call   401350 <__memmove_chk@plt>
  402d5b:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402d60:	66 c1 c6 08          	rol    $0x8,%si
  402d64:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402d69:	ba 10 00 00 00       	mov    $0x10,%edx
  402d6e:	4c 89 fe             	mov    %r15,%rsi
  402d71:	89 df                	mov    %ebx,%edi
  402d73:	e8 a8 e6 ff ff       	call   401420 <connect@plt>
  402d78:	85 c0                	test   %eax,%eax
  402d7a:	0f 88 f7 02 00 00    	js     403077 <submitr+0x3e8>
  402d80:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402d87:	b8 00 00 00 00       	mov    $0x0,%eax
  402d8c:	48 89 f1             	mov    %rsi,%rcx
  402d8f:	4c 89 f7             	mov    %r14,%rdi
  402d92:	f2 ae                	repnz scas %es:(%rdi),%al
  402d94:	48 89 ca             	mov    %rcx,%rdx
  402d97:	48 f7 d2             	not    %rdx
  402d9a:	48 89 f1             	mov    %rsi,%rcx
  402d9d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402da2:	f2 ae                	repnz scas %es:(%rdi),%al
  402da4:	48 f7 d1             	not    %rcx
  402da7:	49 89 c8             	mov    %rcx,%r8
  402daa:	48 89 f1             	mov    %rsi,%rcx
  402dad:	4c 89 ef             	mov    %r13,%rdi
  402db0:	f2 ae                	repnz scas %es:(%rdi),%al
  402db2:	48 f7 d1             	not    %rcx
  402db5:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402dba:	48 89 f1             	mov    %rsi,%rcx
  402dbd:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402dc2:	f2 ae                	repnz scas %es:(%rdi),%al
  402dc4:	48 89 c8             	mov    %rcx,%rax
  402dc7:	48 f7 d0             	not    %rax
  402dca:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402dcf:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402dd4:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402ddb:	00 
  402ddc:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402de2:	0f 87 f7 02 00 00    	ja     4030df <submitr+0x450>
  402de8:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402def:	00 
  402df0:	b9 00 04 00 00       	mov    $0x400,%ecx
  402df5:	b8 00 00 00 00       	mov    $0x0,%eax
  402dfa:	48 89 f7             	mov    %rsi,%rdi
  402dfd:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402e00:	4c 89 f7             	mov    %r14,%rdi
  402e03:	e8 77 fd ff ff       	call   402b7f <urlencode>
  402e08:	85 c0                	test   %eax,%eax
  402e0a:	0f 88 42 03 00 00    	js     403152 <submitr+0x4c3>
  402e10:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402e17:	00 
  402e18:	48 83 ec 08          	sub    $0x8,%rsp
  402e1c:	41 54                	push   %r12
  402e1e:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402e25:	00 
  402e26:	50                   	push   %rax
  402e27:	41 55                	push   %r13
  402e29:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402e2e:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402e33:	48 8d 0d 6e 19 00 00 	lea    0x196e(%rip),%rcx        # 4047a8 <trans_char+0x38>
  402e3a:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e3f:	be 01 00 00 00       	mov    $0x1,%esi
  402e44:	4c 89 ff             	mov    %r15,%rdi
  402e47:	b8 00 00 00 00       	mov    $0x0,%eax
  402e4c:	e8 ff e5 ff ff       	call   401450 <__sprintf_chk@plt>
  402e51:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402e58:	b8 00 00 00 00       	mov    $0x0,%eax
  402e5d:	4c 89 ff             	mov    %r15,%rdi
  402e60:	f2 ae                	repnz scas %es:(%rdi),%al
  402e62:	48 f7 d1             	not    %rcx
  402e65:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402e69:	48 83 c4 20          	add    $0x20,%rsp
  402e6d:	4c 89 fe             	mov    %r15,%rsi
  402e70:	89 df                	mov    %ebx,%edi
  402e72:	e8 82 fb ff ff       	call   4029f9 <rio_writen>
  402e77:	48 85 c0             	test   %rax,%rax
  402e7a:	0f 88 5d 03 00 00    	js     4031dd <submitr+0x54e>
  402e80:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402e85:	89 de                	mov    %ebx,%esi
  402e87:	4c 89 e7             	mov    %r12,%rdi
  402e8a:	e8 22 fb ff ff       	call   4029b1 <rio_readinitb>
  402e8f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e96:	00 
  402e97:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e9c:	4c 89 e7             	mov    %r12,%rdi
  402e9f:	e8 3a fc ff ff       	call   402ade <rio_readlineb>
  402ea4:	48 85 c0             	test   %rax,%rax
  402ea7:	0f 8e 9c 03 00 00    	jle    403249 <submitr+0x5ba>
  402ead:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402eb2:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402eb9:	00 
  402eba:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402ec1:	00 
  402ec2:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402ec9:	00 
  402eca:	48 8d 35 6b 19 00 00 	lea    0x196b(%rip),%rsi        # 40483c <trans_char+0xcc>
  402ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  402ed6:	e8 c5 e4 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  402edb:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402ee2:	00 
  402ee3:	b9 03 00 00 00       	mov    $0x3,%ecx
  402ee8:	48 8d 3d 64 19 00 00 	lea    0x1964(%rip),%rdi        # 404853 <trans_char+0xe3>
  402eef:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ef1:	0f 97 c0             	seta   %al
  402ef4:	1c 00                	sbb    $0x0,%al
  402ef6:	84 c0                	test   %al,%al
  402ef8:	0f 84 cb 03 00 00    	je     4032c9 <submitr+0x63a>
  402efe:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402f05:	00 
  402f06:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402f0b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402f10:	e8 c9 fb ff ff       	call   402ade <rio_readlineb>
  402f15:	48 85 c0             	test   %rax,%rax
  402f18:	7f c1                	jg     402edb <submitr+0x24c>
  402f1a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f21:	3a 20 43 
  402f24:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f2b:	20 75 6e 
  402f2e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402f32:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402f36:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f3d:	74 6f 20 
  402f40:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402f47:	68 65 61 
  402f4a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402f4e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402f52:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402f59:	66 72 6f 
  402f5c:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402f63:	6f 6c 61 
  402f66:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402f6a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402f6e:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402f75:	76 65 72 
  402f78:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402f7c:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402f80:	89 df                	mov    %ebx,%edi
  402f82:	e8 79 e3 ff ff       	call   401300 <close@plt>
  402f87:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f8c:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402f93:	00 
  402f94:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402f9b:	00 00 
  402f9d:	0f 85 96 04 00 00    	jne    403439 <submitr+0x7aa>
  402fa3:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402faa:	5b                   	pop    %rbx
  402fab:	5d                   	pop    %rbp
  402fac:	41 5c                	pop    %r12
  402fae:	41 5d                	pop    %r13
  402fb0:	41 5e                	pop    %r14
  402fb2:	41 5f                	pop    %r15
  402fb4:	c3                   	ret    
  402fb5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402fbc:	3a 20 43 
  402fbf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402fc6:	20 75 6e 
  402fc9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402fcd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402fd1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fd8:	74 6f 20 
  402fdb:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402fe2:	65 20 73 
  402fe5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402fe9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402fed:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402ff4:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402ffa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fff:	eb 8b                	jmp    402f8c <submitr+0x2fd>
  403001:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403008:	3a 20 44 
  40300b:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403012:	20 75 6e 
  403015:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403019:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40301d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403024:	74 6f 20 
  403027:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40302e:	76 65 20 
  403031:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403035:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403039:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403040:	61 62 20 
  403043:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  40304a:	72 20 61 
  40304d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403051:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403055:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  40305c:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  403062:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  403066:	89 df                	mov    %ebx,%edi
  403068:	e8 93 e2 ff ff       	call   401300 <close@plt>
  40306d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403072:	e9 15 ff ff ff       	jmp    402f8c <submitr+0x2fd>
  403077:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40307e:	3a 20 55 
  403081:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403088:	20 74 6f 
  40308b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40308f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403093:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40309a:	65 63 74 
  40309d:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4030a4:	68 65 20 
  4030a7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4030ab:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4030af:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4030b6:	61 62 20 
  4030b9:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4030bd:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  4030c4:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  4030ca:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4030ce:	89 df                	mov    %ebx,%edi
  4030d0:	e8 2b e2 ff ff       	call   401300 <close@plt>
  4030d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030da:	e9 ad fe ff ff       	jmp    402f8c <submitr+0x2fd>
  4030df:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4030e6:	3a 20 52 
  4030e9:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4030f0:	20 73 74 
  4030f3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4030f7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4030fb:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  403102:	74 6f 6f 
  403105:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  40310c:	65 2e 20 
  40310f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403113:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403117:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40311e:	61 73 65 
  403121:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403128:	49 54 52 
  40312b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40312f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403133:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40313a:	55 46 00 
  40313d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403141:	89 df                	mov    %ebx,%edi
  403143:	e8 b8 e1 ff ff       	call   401300 <close@plt>
  403148:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40314d:	e9 3a fe ff ff       	jmp    402f8c <submitr+0x2fd>
  403152:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403159:	3a 20 52 
  40315c:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  403163:	20 73 74 
  403166:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40316a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40316e:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403175:	63 6f 6e 
  403178:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  40317f:	20 61 6e 
  403182:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403186:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40318a:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403191:	67 61 6c 
  403194:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40319b:	6e 70 72 
  40319e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031a2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4031a6:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4031ad:	6c 65 20 
  4031b0:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4031b7:	63 74 65 
  4031ba:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4031be:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4031c2:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  4031c8:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  4031cc:	89 df                	mov    %ebx,%edi
  4031ce:	e8 2d e1 ff ff       	call   401300 <close@plt>
  4031d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031d8:	e9 af fd ff ff       	jmp    402f8c <submitr+0x2fd>
  4031dd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4031e4:	3a 20 43 
  4031e7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4031ee:	20 75 6e 
  4031f1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031f5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031f9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403200:	74 6f 20 
  403203:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  40320a:	20 74 6f 
  40320d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403211:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403215:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  40321c:	41 75 74 
  40321f:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403226:	73 65 72 
  403229:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40322d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403231:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  403238:	89 df                	mov    %ebx,%edi
  40323a:	e8 c1 e0 ff ff       	call   401300 <close@plt>
  40323f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403244:	e9 43 fd ff ff       	jmp    402f8c <submitr+0x2fd>
  403249:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403250:	3a 20 43 
  403253:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40325a:	20 75 6e 
  40325d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403261:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403265:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40326c:	74 6f 20 
  40326f:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403276:	66 69 72 
  403279:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40327d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403281:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403288:	61 64 65 
  40328b:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403292:	6d 20 41 
  403295:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403299:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40329d:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  4032a4:	62 20 73 
  4032a7:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4032ab:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  4032b2:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  4032b8:	89 df                	mov    %ebx,%edi
  4032ba:	e8 41 e0 ff ff       	call   401300 <close@plt>
  4032bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032c4:	e9 c3 fc ff ff       	jmp    402f8c <submitr+0x2fd>
  4032c9:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4032d0:	00 
  4032d1:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4032d6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4032db:	e8 fe f7 ff ff       	call   402ade <rio_readlineb>
  4032e0:	48 85 c0             	test   %rax,%rax
  4032e3:	0f 8e 96 00 00 00    	jle    40337f <submitr+0x6f0>
  4032e9:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4032ee:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4032f5:	0f 85 05 01 00 00    	jne    403400 <submitr+0x771>
  4032fb:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403302:	00 
  403303:	48 89 ef             	mov    %rbp,%rdi
  403306:	e8 95 df ff ff       	call   4012a0 <strcpy@plt>
  40330b:	89 df                	mov    %ebx,%edi
  40330d:	e8 ee df ff ff       	call   401300 <close@plt>
  403312:	b9 04 00 00 00       	mov    $0x4,%ecx
  403317:	48 8d 3d 2f 15 00 00 	lea    0x152f(%rip),%rdi        # 40484d <trans_char+0xdd>
  40331e:	48 89 ee             	mov    %rbp,%rsi
  403321:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403323:	0f 97 c0             	seta   %al
  403326:	1c 00                	sbb    $0x0,%al
  403328:	0f be c0             	movsbl %al,%eax
  40332b:	85 c0                	test   %eax,%eax
  40332d:	0f 84 59 fc ff ff    	je     402f8c <submitr+0x2fd>
  403333:	b9 05 00 00 00       	mov    $0x5,%ecx
  403338:	48 8d 3d 12 15 00 00 	lea    0x1512(%rip),%rdi        # 404851 <trans_char+0xe1>
  40333f:	48 89 ee             	mov    %rbp,%rsi
  403342:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403344:	0f 97 c0             	seta   %al
  403347:	1c 00                	sbb    $0x0,%al
  403349:	0f be c0             	movsbl %al,%eax
  40334c:	85 c0                	test   %eax,%eax
  40334e:	0f 84 38 fc ff ff    	je     402f8c <submitr+0x2fd>
  403354:	b9 03 00 00 00       	mov    $0x3,%ecx
  403359:	48 8d 3d f6 14 00 00 	lea    0x14f6(%rip),%rdi        # 404856 <trans_char+0xe6>
  403360:	48 89 ee             	mov    %rbp,%rsi
  403363:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403365:	0f 97 c0             	seta   %al
  403368:	1c 00                	sbb    $0x0,%al
  40336a:	0f be c0             	movsbl %al,%eax
  40336d:	85 c0                	test   %eax,%eax
  40336f:	0f 84 17 fc ff ff    	je     402f8c <submitr+0x2fd>
  403375:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40337a:	e9 0d fc ff ff       	jmp    402f8c <submitr+0x2fd>
  40337f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403386:	3a 20 43 
  403389:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403390:	20 75 6e 
  403393:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403397:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40339b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4033a2:	74 6f 20 
  4033a5:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  4033ac:	73 74 61 
  4033af:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4033b3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4033b7:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4033be:	65 73 73 
  4033c1:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  4033c8:	72 6f 6d 
  4033cb:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4033cf:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4033d3:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  4033da:	6c 61 62 
  4033dd:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4033e4:	65 72 00 
  4033e7:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4033eb:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4033ef:	89 df                	mov    %ebx,%edi
  4033f1:	e8 0a df ff ff       	call   401300 <close@plt>
  4033f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033fb:	e9 8c fb ff ff       	jmp    402f8c <submitr+0x2fd>
  403400:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  403407:	00 
  403408:	48 8d 0d f9 13 00 00 	lea    0x13f9(%rip),%rcx        # 404808 <trans_char+0x98>
  40340f:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  403416:	be 01 00 00 00       	mov    $0x1,%esi
  40341b:	48 89 ef             	mov    %rbp,%rdi
  40341e:	b8 00 00 00 00       	mov    $0x0,%eax
  403423:	e8 28 e0 ff ff       	call   401450 <__sprintf_chk@plt>
  403428:	89 df                	mov    %ebx,%edi
  40342a:	e8 d1 de ff ff       	call   401300 <close@plt>
  40342f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403434:	e9 53 fb ff ff       	jmp    402f8c <submitr+0x2fd>
  403439:	e8 47 f3 ff ff       	call   402785 <__stack_chk_fail>

000000000040343e <init_timeout>:
  40343e:	f3 0f 1e fa          	endbr64 
  403442:	85 ff                	test   %edi,%edi
  403444:	74 26                	je     40346c <init_timeout+0x2e>
  403446:	53                   	push   %rbx
  403447:	89 fb                	mov    %edi,%ebx
  403449:	78 1a                	js     403465 <init_timeout+0x27>
  40344b:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 4029c3 <sigalrm_handler>
  403452:	bf 0e 00 00 00       	mov    $0xe,%edi
  403457:	e8 d4 de ff ff       	call   401330 <signal@plt>
  40345c:	89 df                	mov    %ebx,%edi
  40345e:	e8 8d de ff ff       	call   4012f0 <alarm@plt>
  403463:	5b                   	pop    %rbx
  403464:	c3                   	ret    
  403465:	bb 00 00 00 00       	mov    $0x0,%ebx
  40346a:	eb df                	jmp    40344b <init_timeout+0xd>
  40346c:	c3                   	ret    

000000000040346d <init_driver>:
  40346d:	f3 0f 1e fa          	endbr64 
  403471:	41 54                	push   %r12
  403473:	55                   	push   %rbp
  403474:	53                   	push   %rbx
  403475:	48 83 ec 20          	sub    $0x20,%rsp
  403479:	48 89 fd             	mov    %rdi,%rbp
  40347c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403483:	00 00 
  403485:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40348a:	31 c0                	xor    %eax,%eax
  40348c:	be 01 00 00 00       	mov    $0x1,%esi
  403491:	bf 0d 00 00 00       	mov    $0xd,%edi
  403496:	e8 95 de ff ff       	call   401330 <signal@plt>
  40349b:	be 01 00 00 00       	mov    $0x1,%esi
  4034a0:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4034a5:	e8 86 de ff ff       	call   401330 <signal@plt>
  4034aa:	be 01 00 00 00       	mov    $0x1,%esi
  4034af:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4034b4:	e8 77 de ff ff       	call   401330 <signal@plt>
  4034b9:	ba 00 00 00 00       	mov    $0x0,%edx
  4034be:	be 01 00 00 00       	mov    $0x1,%esi
  4034c3:	bf 02 00 00 00       	mov    $0x2,%edi
  4034c8:	e8 93 df ff ff       	call   401460 <socket@plt>
  4034cd:	85 c0                	test   %eax,%eax
  4034cf:	0f 88 9c 00 00 00    	js     403571 <init_driver+0x104>
  4034d5:	89 c3                	mov    %eax,%ebx
  4034d7:	48 8d 3d 7b 13 00 00 	lea    0x137b(%rip),%rdi        # 404859 <trans_char+0xe9>
  4034de:	e8 5d de ff ff       	call   401340 <gethostbyname@plt>
  4034e3:	48 85 c0             	test   %rax,%rax
  4034e6:	0f 84 d1 00 00 00    	je     4035bd <init_driver+0x150>
  4034ec:	49 89 e4             	mov    %rsp,%r12
  4034ef:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4034f6:	00 
  4034f7:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4034fe:	00 00 
  403500:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403506:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40350a:	48 8b 40 18          	mov    0x18(%rax),%rax
  40350e:	48 8b 30             	mov    (%rax),%rsi
  403511:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  403516:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40351b:	e8 30 de ff ff       	call   401350 <__memmove_chk@plt>
  403520:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  403527:	ba 10 00 00 00       	mov    $0x10,%edx
  40352c:	4c 89 e6             	mov    %r12,%rsi
  40352f:	89 df                	mov    %ebx,%edi
  403531:	e8 ea de ff ff       	call   401420 <connect@plt>
  403536:	85 c0                	test   %eax,%eax
  403538:	0f 88 e7 00 00 00    	js     403625 <init_driver+0x1b8>
  40353e:	89 df                	mov    %ebx,%edi
  403540:	e8 bb dd ff ff       	call   401300 <close@plt>
  403545:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40354b:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  40354f:	b8 00 00 00 00       	mov    $0x0,%eax
  403554:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  403559:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403560:	00 00 
  403562:	0f 85 10 01 00 00    	jne    403678 <init_driver+0x20b>
  403568:	48 83 c4 20          	add    $0x20,%rsp
  40356c:	5b                   	pop    %rbx
  40356d:	5d                   	pop    %rbp
  40356e:	41 5c                	pop    %r12
  403570:	c3                   	ret    
  403571:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403578:	3a 20 43 
  40357b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403582:	20 75 6e 
  403585:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403589:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40358d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403594:	74 6f 20 
  403597:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40359e:	65 20 73 
  4035a1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4035a5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4035a9:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4035b0:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4035b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035bb:	eb 97                	jmp    403554 <init_driver+0xe7>
  4035bd:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4035c4:	3a 20 44 
  4035c7:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4035ce:	20 75 6e 
  4035d1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4035d5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4035d9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4035e0:	74 6f 20 
  4035e3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4035ea:	76 65 20 
  4035ed:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4035f1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4035f5:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4035fc:	72 20 61 
  4035ff:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403603:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40360a:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  403610:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403614:	89 df                	mov    %ebx,%edi
  403616:	e8 e5 dc ff ff       	call   401300 <close@plt>
  40361b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403620:	e9 2f ff ff ff       	jmp    403554 <init_driver+0xe7>
  403625:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40362c:	3a 20 55 
  40362f:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403636:	20 74 6f 
  403639:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40363d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403641:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403648:	65 63 74 
  40364b:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403652:	65 72 76 
  403655:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403659:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40365d:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  403663:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  403667:	89 df                	mov    %ebx,%edi
  403669:	e8 92 dc ff ff       	call   401300 <close@plt>
  40366e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403673:	e9 dc fe ff ff       	jmp    403554 <init_driver+0xe7>
  403678:	e8 08 f1 ff ff       	call   402785 <__stack_chk_fail>

000000000040367d <driver_post>:
  40367d:	f3 0f 1e fa          	endbr64 
  403681:	53                   	push   %rbx
  403682:	4c 89 cb             	mov    %r9,%rbx
  403685:	45 85 c0             	test   %r8d,%r8d
  403688:	75 18                	jne    4036a2 <driver_post+0x25>
  40368a:	48 85 ff             	test   %rdi,%rdi
  40368d:	74 05                	je     403694 <driver_post+0x17>
  40368f:	80 3f 00             	cmpb   $0x0,(%rdi)
  403692:	75 37                	jne    4036cb <driver_post+0x4e>
  403694:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403699:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40369d:	44 89 c0             	mov    %r8d,%eax
  4036a0:	5b                   	pop    %rbx
  4036a1:	c3                   	ret    
  4036a2:	48 89 ca             	mov    %rcx,%rdx
  4036a5:	48 8d 35 bd 11 00 00 	lea    0x11bd(%rip),%rsi        # 404869 <trans_char+0xf9>
  4036ac:	bf 01 00 00 00       	mov    $0x1,%edi
  4036b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4036b6:	e8 05 dd ff ff       	call   4013c0 <__printf_chk@plt>
  4036bb:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4036c0:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4036c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4036c9:	eb d5                	jmp    4036a0 <driver_post+0x23>
  4036cb:	48 83 ec 08          	sub    $0x8,%rsp
  4036cf:	41 51                	push   %r9
  4036d1:	49 89 c9             	mov    %rcx,%r9
  4036d4:	49 89 d0             	mov    %rdx,%r8
  4036d7:	48 89 f9             	mov    %rdi,%rcx
  4036da:	48 89 f2             	mov    %rsi,%rdx
  4036dd:	be 39 30 00 00       	mov    $0x3039,%esi
  4036e2:	48 8d 3d 70 11 00 00 	lea    0x1170(%rip),%rdi        # 404859 <trans_char+0xe9>
  4036e9:	e8 a1 f5 ff ff       	call   402c8f <submitr>
  4036ee:	48 83 c4 10          	add    $0x10,%rsp
  4036f2:	eb ac                	jmp    4036a0 <driver_post+0x23>

00000000004036f4 <check>:
  4036f4:	f3 0f 1e fa          	endbr64 
  4036f8:	89 f8                	mov    %edi,%eax
  4036fa:	c1 e8 1c             	shr    $0x1c,%eax
  4036fd:	74 1d                	je     40371c <check+0x28>
  4036ff:	b9 00 00 00 00       	mov    $0x0,%ecx
  403704:	83 f9 1f             	cmp    $0x1f,%ecx
  403707:	7f 0d                	jg     403716 <check+0x22>
  403709:	89 f8                	mov    %edi,%eax
  40370b:	d3 e8                	shr    %cl,%eax
  40370d:	3c 0a                	cmp    $0xa,%al
  40370f:	74 11                	je     403722 <check+0x2e>
  403711:	83 c1 08             	add    $0x8,%ecx
  403714:	eb ee                	jmp    403704 <check+0x10>
  403716:	b8 01 00 00 00       	mov    $0x1,%eax
  40371b:	c3                   	ret    
  40371c:	b8 00 00 00 00       	mov    $0x0,%eax
  403721:	c3                   	ret    
  403722:	b8 00 00 00 00       	mov    $0x0,%eax
  403727:	c3                   	ret    

0000000000403728 <gencookie>:
  403728:	f3 0f 1e fa          	endbr64 
  40372c:	53                   	push   %rbx
  40372d:	83 c7 01             	add    $0x1,%edi
  403730:	e8 3b db ff ff       	call   401270 <srandom@plt>
  403735:	e8 56 dc ff ff       	call   401390 <random@plt>
  40373a:	48 89 c7             	mov    %rax,%rdi
  40373d:	89 c3                	mov    %eax,%ebx
  40373f:	e8 b0 ff ff ff       	call   4036f4 <check>
  403744:	85 c0                	test   %eax,%eax
  403746:	74 ed                	je     403735 <gencookie+0xd>
  403748:	89 d8                	mov    %ebx,%eax
  40374a:	5b                   	pop    %rbx
  40374b:	c3                   	ret    
  40374c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403750 <__libc_csu_init>:
  403750:	f3 0f 1e fa          	endbr64 
  403754:	41 57                	push   %r15
  403756:	4c 8d 3d b3 36 00 00 	lea    0x36b3(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40375d:	41 56                	push   %r14
  40375f:	49 89 d6             	mov    %rdx,%r14
  403762:	41 55                	push   %r13
  403764:	49 89 f5             	mov    %rsi,%r13
  403767:	41 54                	push   %r12
  403769:	41 89 fc             	mov    %edi,%r12d
  40376c:	55                   	push   %rbp
  40376d:	48 8d 2d a4 36 00 00 	lea    0x36a4(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403774:	53                   	push   %rbx
  403775:	4c 29 fd             	sub    %r15,%rbp
  403778:	48 83 ec 08          	sub    $0x8,%rsp
  40377c:	e8 7f d8 ff ff       	call   401000 <_init>
  403781:	48 c1 fd 03          	sar    $0x3,%rbp
  403785:	74 1f                	je     4037a6 <__libc_csu_init+0x56>
  403787:	31 db                	xor    %ebx,%ebx
  403789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403790:	4c 89 f2             	mov    %r14,%rdx
  403793:	4c 89 ee             	mov    %r13,%rsi
  403796:	44 89 e7             	mov    %r12d,%edi
  403799:	41 ff 14 df          	call   *(%r15,%rbx,8)
  40379d:	48 83 c3 01          	add    $0x1,%rbx
  4037a1:	48 39 dd             	cmp    %rbx,%rbp
  4037a4:	75 ea                	jne    403790 <__libc_csu_init+0x40>
  4037a6:	48 83 c4 08          	add    $0x8,%rsp
  4037aa:	5b                   	pop    %rbx
  4037ab:	5d                   	pop    %rbp
  4037ac:	41 5c                	pop    %r12
  4037ae:	41 5d                	pop    %r13
  4037b0:	41 5e                	pop    %r14
  4037b2:	41 5f                	pop    %r15
  4037b4:	c3                   	ret    
  4037b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4037bc:	00 00 00 00 

00000000004037c0 <__libc_csu_fini>:
  4037c0:	f3 0f 1e fa          	endbr64 
  4037c4:	c3                   	ret    

Disassembly of section .fini:

00000000004037c8 <_fini>:
  4037c8:	f3 0f 1e fa          	endbr64 
  4037cc:	48 83 ec 08          	sub    $0x8,%rsp
  4037d0:	48 83 c4 08          	add    $0x8,%rsp
  4037d4:	c3                   	ret    
