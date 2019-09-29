
main.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <multi_parm>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
   8:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
   c:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  10:	48 89 4d e0          	mov    QWORD PTR [rbp-0x20],rcx
  14:	4c 89 45 d8          	mov    QWORD PTR [rbp-0x28],r8
  18:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
  1c:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
  20:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
  24:	48 01 c2             	add    rdx,rax
  27:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
  2b:	48 01 d0             	add    rax,rdx
  2e:	5d                   	pop    rbp
  2f:	c3                   	ret    

0000000000000030 <imediate_mode>:
  30:	55                   	push   rbp
  31:	48 89 e5             	mov    rbp,rsp
  34:	b8 12 00 00 00       	mov    eax,0x12
  39:	5d                   	pop    rbp
  3a:	c3                   	ret    

000000000000003b <register_mode>:
  3b:	55                   	push   rbp
  3c:	48 89 e5             	mov    rbp,rsp
  3f:	48 c7 c0 41 00 00 00 	mov    rax,0x41
  46:	48 c7 c3 45 00 00 00 	mov    rbx,0x45
  4d:	b8 00 00 00 00       	mov    eax,0x0
  52:	5d                   	pop    rbp
  53:	c3                   	ret    

0000000000000054 <direct_mode>:
  54:	55                   	push   rbp
  55:	48 89 e5             	mov    rbp,rsp
  58:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # 5f <direct_mode+0xb>
  5f:	5d                   	pop    rbp
  60:	c3                   	ret    

0000000000000061 <indexed_mode>:
  61:	55                   	push   rbp
  62:	48 89 e5             	mov    rbp,rsp
  65:	c7 45 fc 06 00 00 00 	mov    DWORD PTR [rbp-0x4],0x6
  6c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  6f:	48 98                	cdqe   
  71:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  78:	00 
  79:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 80 <indexed_mode+0x1f>
  80:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
  83:	48 98                	cdqe   
  85:	5d                   	pop    rbp
  86:	c3                   	ret    

0000000000000087 <indirect_mode>:
  87:	55                   	push   rbp
  88:	48 89 e5             	mov    rbp,rsp
  8b:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 92 <indirect_mode+0xb>
  92:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  96:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  9a:	48 c7 00 2a 00 00 00 	mov    QWORD PTR [rax],0x2a
  a1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  a5:	48 8b 00             	mov    rax,QWORD PTR [rax]
  a8:	5d                   	pop    rbp
  a9:	c3                   	ret    

00000000000000aa <base_pointer_mode>:
  aa:	55                   	push   rbp
  ab:	48 89 e5             	mov    rbp,rsp
  ae:	48 c7 45 f8 29 00 00 	mov    QWORD PTR [rbp-0x8],0x29
  b5:	00 
  b6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  ba:	5d                   	pop    rbp
  bb:	c3                   	ret    

00000000000000bc <calc_area>:
  bc:	55                   	push   rbp
  bd:	48 89 e5             	mov    rbp,rsp
  c0:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  c4:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  c8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  cc:	48 0f af 45 f0       	imul   rax,QWORD PTR [rbp-0x10]
  d1:	5d                   	pop    rbp
  d2:	c3                   	ret    

00000000000000d3 <calc_area_price>:
  d3:	55                   	push   rbp
  d4:	48 89 e5             	mov    rbp,rsp
  d7:	48 83 ec 28          	sub    rsp,0x28
  db:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  df:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  e3:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  e7:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  eb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  ef:	48 89 d6             	mov    rsi,rdx
  f2:	48 89 c7             	mov    rdi,rax
  f5:	e8 00 00 00 00       	call   fa <calc_area_price+0x27>
  fa:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  fe:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 102:	48 0f af 45 d8       	imul   rax,QWORD PTR [rbp-0x28]
 107:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 10b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 10f:	c9                   	leave  
 110:	c3                   	ret    

0000000000000111 <main>:
 111:	55                   	push   rbp
 112:	48 89 e5             	mov    rbp,rsp
 115:	48 83 ec 20          	sub    rsp,0x20
 119:	48 c7 45 e0 03 00 00 	mov    QWORD PTR [rbp-0x20],0x3
 120:	00 
 121:	48 c7 45 e8 04 00 00 	mov    QWORD PTR [rbp-0x18],0x4
 128:	00 
 129:	48 c7 45 f0 05 00 00 	mov    QWORD PTR [rbp-0x10],0x5
 130:	00 
 131:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
 135:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
 139:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 13d:	48 89 ce             	mov    rsi,rcx
 140:	48 89 c7             	mov    rdi,rax
 143:	e8 00 00 00 00       	call   148 <main+0x37>
 148:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 14c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 150:	c9                   	leave  
 151:	c3                   	ret    

Disassembly of section .data:

0000000000000000 <long_var>:
   0:	0a 00                	or     al,BYTE PTR [rax]
   2:	00 00                	add    BYTE PTR [rax],al
   4:	00 00                	add    BYTE PTR [rax],al
	...

0000000000000008 <int_var>:
   8:	01 00                	add    DWORD PTR [rax],eax
	...

000000000000000c <ch>:
   c:	63 00                	movsxd eax,DWORD PTR [rax]
	...

0000000000000020 <int_arr>:
  20:	13 00                	adc    eax,DWORD PTR [rax]
  22:	00 00                	add    BYTE PTR [rax],al
  24:	17                   	(bad)  
  25:	00 00                	add    BYTE PTR [rax],al
  27:	00 22                	add    BYTE PTR [rdx],ah
  29:	00 00                	add    BYTE PTR [rax],al
  2b:	00 38                	add    BYTE PTR [rax],bh
  2d:	00 00                	add    BYTE PTR [rax],al
  2f:	00 43 00             	add    BYTE PTR [rbx+0x0],al
  32:	00 00                	add    BYTE PTR [rax],al
  34:	4e 00 00             	rex.WRX add BYTE PTR [rax],r8b
	...

00000000000000a0 <answer>:
  a0:	29 00                	sub    DWORD PTR [rax],eax
  a2:	00 00                	add    BYTE PTR [rax],al
  a4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rodata:

0000000000000000 <.rodata>:
   0:	68 65 6c 6c 6f       	push   0x6f6c6c65
   5:	20 e4                	and    ah,ah
   7:	b8 ad e6 96 87       	mov    eax,0x8796e6ad
   c:	20 61 62             	and    BYTE PTR [rcx+0x62],ah
   f:	63 00                	movsxd eax,DWORD PTR [rax]

Disassembly of section .data.rel.local:

0000000000000000 <hello>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	00 47 43             	add    BYTE PTR [rdi+0x43],al
   3:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   6:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   9:	75 6e                	jne    79 <indexed_mode+0x18>
   b:	74 75                	je     82 <indexed_mode+0x21>
   d:	20 37                	and    BYTE PTR [rdi],dh
   f:	2e 34 2e             	cs xor al,0x2e
  12:	30 2d 31 75 62 75    	xor    BYTE PTR [rip+0x75627531],ch        # 75627549 <main+0x75627438>
  18:	6e                   	outs   dx,BYTE PTR ds:[rsi]
  19:	74 75                	je     90 <indirect_mode+0x9>
  1b:	31 7e 31             	xor    DWORD PTR [rsi+0x31],edi
  1e:	38 2e                	cmp    BYTE PTR [rsi],ch
  20:	30 34 2e             	xor    BYTE PTR [rsi+rbp*1],dh
  23:	31 29                	xor    DWORD PTR [rcx],ebp
  25:	20 37                	and    BYTE PTR [rdi],dh
  27:	2e 34 2e             	cs xor al,0x2e
  2a:	30 00                	xor    BYTE PTR [rax],al

Disassembly of section .eh_frame:

0000000000000000 <.eh_frame>:
   0:	14 00                	adc    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	00 00                	add    BYTE PTR [rax],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
   b:	00 01                	add    BYTE PTR [rcx],al
   d:	78 10                	js     1f <.eh_frame+0x1f>
   f:	01 1b                	add    DWORD PTR [rbx],ebx
  11:	0c 07                	or     al,0x7
  13:	08 90 01 00 00 1c    	or     BYTE PTR [rax+0x1c000001],dl
  19:	00 00                	add    BYTE PTR [rax],al
  1b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  1e:	00 00                	add    BYTE PTR [rax],al
  20:	00 00                	add    BYTE PTR [rax],al
  22:	00 00                	add    BYTE PTR [rax],al
  24:	0b 00                	or     eax,DWORD PTR [rax]
  26:	00 00                	add    BYTE PTR [rax],al
  28:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  2b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  31:	46 0c 07             	rex.RX or al,0x7
  34:	08 00                	or     BYTE PTR [rax],al
  36:	00 00                	add    BYTE PTR [rax],al
  38:	1c 00                	sbb    al,0x0
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	3c 00                	cmp    al,0x0
  3e:	00 00                	add    BYTE PTR [rax],al
  40:	00 00                	add    BYTE PTR [rax],al
  42:	00 00                	add    BYTE PTR [rax],al
  44:	19 00                	sbb    DWORD PTR [rax],eax
  46:	00 00                	add    BYTE PTR [rax],al
  48:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  4b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  51:	54                   	push   rsp
  52:	0c 07                	or     al,0x7
  54:	08 00                	or     BYTE PTR [rax],al
  56:	00 00                	add    BYTE PTR [rax],al
  58:	1c 00                	sbb    al,0x0
  5a:	00 00                	add    BYTE PTR [rax],al
  5c:	5c                   	pop    rsp
  5d:	00 00                	add    BYTE PTR [rax],al
  5f:	00 00                	add    BYTE PTR [rax],al
  61:	00 00                	add    BYTE PTR [rax],al
  63:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # 69 <.eh_frame+0x69>
  69:	41 0e                	rex.B (bad) 
  6b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  71:	48 0c 07             	rex.W or al,0x7
  74:	08 00                	or     BYTE PTR [rax],al
  76:	00 00                	add    BYTE PTR [rax],al
  78:	1c 00                	sbb    al,0x0
  7a:	00 00                	add    BYTE PTR [rax],al
  7c:	7c 00                	jl     7e <.eh_frame+0x7e>
  7e:	00 00                	add    BYTE PTR [rax],al
  80:	00 00                	add    BYTE PTR [rax],al
  82:	00 00                	add    BYTE PTR [rax],al
  84:	26 00 00             	add    BYTE PTR es:[rax],al
  87:	00 00                	add    BYTE PTR [rax],al
  89:	41 0e                	rex.B (bad) 
  8b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  91:	61                   	(bad)  
  92:	0c 07                	or     al,0x7
  94:	08 00                	or     BYTE PTR [rax],al
  96:	00 00                	add    BYTE PTR [rax],al
  98:	1c 00                	sbb    al,0x0
  9a:	00 00                	add    BYTE PTR [rax],al
  9c:	9c                   	pushf  
  9d:	00 00                	add    BYTE PTR [rax],al
  9f:	00 00                	add    BYTE PTR [rax],al
  a1:	00 00                	add    BYTE PTR [rax],al
  a3:	00 23                	add    BYTE PTR [rbx],ah
  a5:	00 00                	add    BYTE PTR [rax],al
  a7:	00 00                	add    BYTE PTR [rax],al
  a9:	41 0e                	rex.B (bad) 
  ab:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  b1:	5e                   	pop    rsi
  b2:	0c 07                	or     al,0x7
  b4:	08 00                	or     BYTE PTR [rax],al
  b6:	00 00                	add    BYTE PTR [rax],al
  b8:	1c 00                	sbb    al,0x0
  ba:	00 00                	add    BYTE PTR [rax],al
  bc:	bc 00 00 00 00       	mov    esp,0x0
  c1:	00 00                	add    BYTE PTR [rax],al
  c3:	00 12                	add    BYTE PTR [rdx],dl
  c5:	00 00                	add    BYTE PTR [rax],al
  c7:	00 00                	add    BYTE PTR [rax],al
  c9:	41 0e                	rex.B (bad) 
  cb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  d1:	4d 0c 07             	rex.WRB or al,0x7
  d4:	08 00                	or     BYTE PTR [rax],al
  d6:	00 00                	add    BYTE PTR [rax],al
  d8:	1c 00                	sbb    al,0x0
  da:	00 00                	add    BYTE PTR [rax],al
  dc:	dc 00                	fadd   QWORD PTR [rax]
  de:	00 00                	add    BYTE PTR [rax],al
  e0:	00 00                	add    BYTE PTR [rax],al
  e2:	00 00                	add    BYTE PTR [rax],al
  e4:	17                   	(bad)  
  e5:	00 00                	add    BYTE PTR [rax],al
  e7:	00 00                	add    BYTE PTR [rax],al
  e9:	41 0e                	rex.B (bad) 
  eb:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  f1:	52                   	push   rdx
  f2:	0c 07                	or     al,0x7
  f4:	08 00                	or     BYTE PTR [rax],al
  f6:	00 00                	add    BYTE PTR [rax],al
  f8:	1c 00                	sbb    al,0x0
  fa:	00 00                	add    BYTE PTR [rax],al
  fc:	fc                   	cld    
  fd:	00 00                	add    BYTE PTR [rax],al
  ff:	00 00                	add    BYTE PTR [rax],al
 101:	00 00                	add    BYTE PTR [rax],al
 103:	00 3e                	add    BYTE PTR [rsi],bh
 105:	00 00                	add    BYTE PTR [rax],al
 107:	00 00                	add    BYTE PTR [rax],al
 109:	41 0e                	rex.B (bad) 
 10b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 111:	79 0c                	jns    11f <.eh_frame+0x11f>
 113:	07                   	(bad)  
 114:	08 00                	or     BYTE PTR [rax],al
 116:	00 00                	add    BYTE PTR [rax],al
 118:	1c 00                	sbb    al,0x0
 11a:	00 00                	add    BYTE PTR [rax],al
 11c:	1c 01                	sbb    al,0x1
 11e:	00 00                	add    BYTE PTR [rax],al
 120:	00 00                	add    BYTE PTR [rax],al
 122:	00 00                	add    BYTE PTR [rax],al
 124:	41 00 00             	add    BYTE PTR [r8],al
 127:	00 00                	add    BYTE PTR [rax],al
 129:	41 0e                	rex.B (bad) 
 12b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
 131:	7c 0c                	jl     13f <main+0x2e>
 133:	07                   	(bad)  
 134:	08 00                	or     BYTE PTR [rax],al
	...
