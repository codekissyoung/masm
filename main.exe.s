
main：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    rsp,0x8
    1004:	48 8b 05 dd 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fdd]        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   rax,rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   rax
    1012:	48 83 c4 08          	add    rsp,0x8
    1016:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 a2 2f 00 00    	push   QWORD PTR [rip+0x2fa2]        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 a4 2f 00 00    	jmp    QWORD PTR [rip+0x2fa4]        # 3fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1036:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	31 ed                	xor    ebp,ebp
    1042:	49 89 d1             	mov    r9,rdx
    1045:	5e                   	pop    rsi
    1046:	48 89 e2             	mov    rdx,rsp
    1049:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    104d:	50                   	push   rax
    104e:	54                   	push   rsp
    104f:	4c 8d 05 ba 02 00 00 	lea    r8,[rip+0x2ba]        # 1310 <__libc_csu_fini>
    1056:	48 8d 0d 43 02 00 00 	lea    rcx,[rip+0x243]        # 12a0 <__libc_csu_init>
    105d:	48 8d 3d f7 01 00 00 	lea    rdi,[rip+0x1f7]        # 125b <main>
    1064:	ff 15 76 2f 00 00    	call   QWORD PTR [rip+0x2f76]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    106a:	f4                   	hlt    
    106b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001070 <deregister_tm_clones>:
    1070:	48 8d 3d 59 30 00 00 	lea    rdi,[rip+0x3059]        # 40d0 <__TMC_END__>
    1077:	55                   	push   rbp
    1078:	48 8d 05 51 30 00 00 	lea    rax,[rip+0x3051]        # 40d0 <__TMC_END__>
    107f:	48 39 f8             	cmp    rax,rdi
    1082:	48 89 e5             	mov    rbp,rsp
    1085:	74 19                	je     10a0 <deregister_tm_clones+0x30>
    1087:	48 8b 05 4a 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f4a]        # 3fd8 <_ITM_deregisterTMCloneTable>
    108e:	48 85 c0             	test   rax,rax
    1091:	74 0d                	je     10a0 <deregister_tm_clones+0x30>
    1093:	5d                   	pop    rbp
    1094:	ff e0                	jmp    rax
    1096:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    109d:	00 00 00 
    10a0:	5d                   	pop    rbp
    10a1:	c3                   	ret    
    10a2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    10a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    10ad:	00 00 00 

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 19 30 00 00 	lea    rdi,[rip+0x3019]        # 40d0 <__TMC_END__>
    10b7:	48 8d 35 12 30 00 00 	lea    rsi,[rip+0x3012]        # 40d0 <__TMC_END__>
    10be:	55                   	push   rbp
    10bf:	48 29 fe             	sub    rsi,rdi
    10c2:	48 89 e5             	mov    rbp,rsp
    10c5:	48 c1 fe 03          	sar    rsi,0x3
    10c9:	48 89 f0             	mov    rax,rsi
    10cc:	48 c1 e8 3f          	shr    rax,0x3f
    10d0:	48 01 c6             	add    rsi,rax
    10d3:	48 d1 fe             	sar    rsi,1
    10d6:	74 18                	je     10f0 <register_tm_clones+0x40>
    10d8:	48 8b 05 11 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f11]        # 3ff0 <_ITM_registerTMCloneTable>
    10df:	48 85 c0             	test   rax,rax
    10e2:	74 0c                	je     10f0 <register_tm_clones+0x40>
    10e4:	5d                   	pop    rbp
    10e5:	ff e0                	jmp    rax
    10e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    10ee:	00 00 
    10f0:	5d                   	pop    rbp
    10f1:	c3                   	ret    
    10f2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    10f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    10fd:	00 00 00 

0000000000001100 <__do_global_dtors_aux>:
    1100:	80 3d c9 2f 00 00 00 	cmp    BYTE PTR [rip+0x2fc9],0x0        # 40d0 <__TMC_END__>
    1107:	75 2f                	jne    1138 <__do_global_dtors_aux+0x38>
    1109:	48 83 3d e7 2e 00 00 	cmp    QWORD PTR [rip+0x2ee7],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1110:	00 
    1111:	55                   	push   rbp
    1112:	48 89 e5             	mov    rbp,rsp
    1115:	74 0c                	je     1123 <__do_global_dtors_aux+0x23>
    1117:	48 8b 3d ea 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2eea]        # 4008 <__dso_handle>
    111e:	e8 0d ff ff ff       	call   1030 <__cxa_finalize@plt>
    1123:	e8 48 ff ff ff       	call   1070 <deregister_tm_clones>
    1128:	c6 05 a1 2f 00 00 01 	mov    BYTE PTR [rip+0x2fa1],0x1        # 40d0 <__TMC_END__>
    112f:	5d                   	pop    rbp
    1130:	c3                   	ret    
    1131:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1138:	f3 c3                	repz ret 
    113a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001140 <frame_dummy>:
    1140:	55                   	push   rbp
    1141:	48 89 e5             	mov    rbp,rsp
    1144:	5d                   	pop    rbp
    1145:	e9 66 ff ff ff       	jmp    10b0 <register_tm_clones>

000000000000114a <multi_parm>:
    114a:	55                   	push   rbp
    114b:	48 89 e5             	mov    rbp,rsp
    114e:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    1152:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    1156:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
    115a:	48 89 4d e0          	mov    QWORD PTR [rbp-0x20],rcx
    115e:	4c 89 45 d8          	mov    QWORD PTR [rbp-0x28],r8
    1162:	4c 89 4d d0          	mov    QWORD PTR [rbp-0x30],r9
    1166:	48 8b 55 10          	mov    rdx,QWORD PTR [rbp+0x10]
    116a:	48 8b 45 18          	mov    rax,QWORD PTR [rbp+0x18]
    116e:	48 01 c2             	add    rdx,rax
    1171:	48 8b 45 20          	mov    rax,QWORD PTR [rbp+0x20]
    1175:	48 01 d0             	add    rax,rdx
    1178:	5d                   	pop    rbp
    1179:	c3                   	ret    

000000000000117a <imediate_mode>:
    117a:	55                   	push   rbp
    117b:	48 89 e5             	mov    rbp,rsp
    117e:	b8 12 00 00 00       	mov    eax,0x12
    1183:	5d                   	pop    rbp
    1184:	c3                   	ret    

0000000000001185 <register_mode>:
    1185:	55                   	push   rbp
    1186:	48 89 e5             	mov    rbp,rsp
    1189:	48 c7 c0 41 00 00 00 	mov    rax,0x41
    1190:	48 c7 c3 45 00 00 00 	mov    rbx,0x45
    1197:	b8 00 00 00 00       	mov    eax,0x0
    119c:	5d                   	pop    rbp
    119d:	c3                   	ret    

000000000000119e <direct_mode>:
    119e:	55                   	push   rbp
    119f:	48 89 e5             	mov    rbp,rsp
    11a2:	48 8b 05 17 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f17]        # 40c0 <answer>
    11a9:	5d                   	pop    rbp
    11aa:	c3                   	ret    

00000000000011ab <indexed_mode>:
    11ab:	55                   	push   rbp
    11ac:	48 89 e5             	mov    rbp,rsp
    11af:	c7 45 fc 06 00 00 00 	mov    DWORD PTR [rbp-0x4],0x6
    11b6:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11b9:	48 98                	cdqe   
    11bb:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    11c2:	00 
    11c3:	48 8d 05 76 2e 00 00 	lea    rax,[rip+0x2e76]        # 4040 <int_arr>
    11ca:	8b 04 02             	mov    eax,DWORD PTR [rdx+rax*1]
    11cd:	48 98                	cdqe   
    11cf:	5d                   	pop    rbp
    11d0:	c3                   	ret    

00000000000011d1 <indirect_mode>:
    11d1:	55                   	push   rbp
    11d2:	48 89 e5             	mov    rbp,rsp
    11d5:	48 8d 05 e4 2e 00 00 	lea    rax,[rip+0x2ee4]        # 40c0 <answer>
    11dc:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    11e0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11e4:	48 c7 00 2a 00 00 00 	mov    QWORD PTR [rax],0x2a
    11eb:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11ef:	48 8b 00             	mov    rax,QWORD PTR [rax]
    11f2:	5d                   	pop    rbp
    11f3:	c3                   	ret    

00000000000011f4 <base_pointer_mode>:
    11f4:	55                   	push   rbp
    11f5:	48 89 e5             	mov    rbp,rsp
    11f8:	48 c7 45 f8 29 00 00 	mov    QWORD PTR [rbp-0x8],0x29
    11ff:	00 
    1200:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1204:	5d                   	pop    rbp
    1205:	c3                   	ret    

0000000000001206 <calc_area>:
    1206:	55                   	push   rbp
    1207:	48 89 e5             	mov    rbp,rsp
    120a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    120e:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    1212:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1216:	48 0f af 45 f0       	imul   rax,QWORD PTR [rbp-0x10]
    121b:	5d                   	pop    rbp
    121c:	c3                   	ret    

000000000000121d <calc_area_price>:
    121d:	55                   	push   rbp
    121e:	48 89 e5             	mov    rbp,rsp
    1221:	48 83 ec 28          	sub    rsp,0x28
    1225:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    1229:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    122d:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
    1231:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
    1235:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1239:	48 89 d6             	mov    rsi,rdx
    123c:	48 89 c7             	mov    rdi,rax
    123f:	e8 c2 ff ff ff       	call   1206 <calc_area>
    1244:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    1248:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    124c:	48 0f af 45 d8       	imul   rax,QWORD PTR [rbp-0x28]
    1251:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1255:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1259:	c9                   	leave  
    125a:	c3                   	ret    

000000000000125b <main>:
    125b:	55                   	push   rbp
    125c:	48 89 e5             	mov    rbp,rsp
    125f:	48 83 ec 20          	sub    rsp,0x20
    1263:	48 c7 45 e0 03 00 00 	mov    QWORD PTR [rbp-0x20],0x3
    126a:	00 
    126b:	48 c7 45 e8 04 00 00 	mov    QWORD PTR [rbp-0x18],0x4
    1272:	00 
    1273:	48 c7 45 f0 05 00 00 	mov    QWORD PTR [rbp-0x10],0x5
    127a:	00 
    127b:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
    127f:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
    1283:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    1287:	48 89 ce             	mov    rsi,rcx
    128a:	48 89 c7             	mov    rdi,rax
    128d:	e8 8b ff ff ff       	call   121d <calc_area_price>
    1292:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1296:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    129a:	c9                   	leave  
    129b:	c3                   	ret    
    129c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000012a0 <__libc_csu_init>:
    12a0:	41 57                	push   r15
    12a2:	41 56                	push   r14
    12a4:	49 89 d7             	mov    r15,rdx
    12a7:	41 55                	push   r13
    12a9:	41 54                	push   r12
    12ab:	4c 8d 25 3e 2b 00 00 	lea    r12,[rip+0x2b3e]        # 3df0 <__frame_dummy_init_array_entry>
    12b2:	55                   	push   rbp
    12b3:	48 8d 2d 3e 2b 00 00 	lea    rbp,[rip+0x2b3e]        # 3df8 <__init_array_end>
    12ba:	53                   	push   rbx
    12bb:	41 89 fd             	mov    r13d,edi
    12be:	49 89 f6             	mov    r14,rsi
    12c1:	4c 29 e5             	sub    rbp,r12
    12c4:	48 83 ec 08          	sub    rsp,0x8
    12c8:	48 c1 fd 03          	sar    rbp,0x3
    12cc:	e8 2f fd ff ff       	call   1000 <_init>
    12d1:	48 85 ed             	test   rbp,rbp
    12d4:	74 20                	je     12f6 <__libc_csu_init+0x56>
    12d6:	31 db                	xor    ebx,ebx
    12d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    12df:	00 
    12e0:	4c 89 fa             	mov    rdx,r15
    12e3:	4c 89 f6             	mov    rsi,r14
    12e6:	44 89 ef             	mov    edi,r13d
    12e9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    12ed:	48 83 c3 01          	add    rbx,0x1
    12f1:	48 39 dd             	cmp    rbp,rbx
    12f4:	75 ea                	jne    12e0 <__libc_csu_init+0x40>
    12f6:	48 83 c4 08          	add    rsp,0x8
    12fa:	5b                   	pop    rbx
    12fb:	5d                   	pop    rbp
    12fc:	41 5c                	pop    r12
    12fe:	41 5d                	pop    r13
    1300:	41 5e                	pop    r14
    1302:	41 5f                	pop    r15
    1304:	c3                   	ret    
    1305:	90                   	nop
    1306:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    130d:	00 00 00 

0000000000001310 <__libc_csu_fini>:
    1310:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000001314 <_fini>:
    1314:	48 83 ec 08          	sub    rsp,0x8
    1318:	48 83 c4 08          	add    rsp,0x8
    131c:	c3                   	ret    
