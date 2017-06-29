
words:     file format elf64-x86-64


Disassembly of section .init:

00000000004005c8 <_init>:
  4005c8:	48 83 ec 08          	sub    $0x8,%rsp
  4005cc:	48 8b 05 25 1a 20 00 	mov    0x201a25(%rip),%rax        # 601ff8 <_DYNAMIC+0x1d0>
  4005d3:	48 85 c0             	test   %rax,%rax
  4005d6:	74 05                	je     4005dd <_init+0x15>
  4005d8:	e8 93 00 00 00       	callq  400670 <__gmon_start__@plt>
  4005dd:	48 83 c4 08          	add    $0x8,%rsp
  4005e1:	c3                   	retq   

Disassembly of section .plt:

00000000004005f0 <free@plt-0x10>:
  4005f0:	ff 35 12 1a 20 00    	pushq  0x201a12(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005f6:	ff 25 14 1a 20 00    	jmpq   *0x201a14(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400600 <free@plt>:
  400600:	ff 25 12 1a 20 00    	jmpq   *0x201a12(%rip)        # 602018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400606:	68 00 00 00 00       	pushq  $0x0
  40060b:	e9 e0 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400610 <strcpy@plt>:
  400610:	ff 25 0a 1a 20 00    	jmpq   *0x201a0a(%rip)        # 602020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400616:	68 01 00 00 00       	pushq  $0x1
  40061b:	e9 d0 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400620 <puts@plt>:
  400620:	ff 25 02 1a 20 00    	jmpq   *0x201a02(%rip)        # 602028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400626:	68 02 00 00 00       	pushq  $0x2
  40062b:	e9 c0 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400630 <printf@plt>:
  400630:	ff 25 fa 19 20 00    	jmpq   *0x2019fa(%rip)        # 602030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400636:	68 03 00 00 00       	pushq  $0x3
  40063b:	e9 b0 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400640 <__libc_start_main@plt>:
  400640:	ff 25 f2 19 20 00    	jmpq   *0x2019f2(%rip)        # 602038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400646:	68 04 00 00 00       	pushq  $0x4
  40064b:	e9 a0 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400650 <strcmp@plt>:
  400650:	ff 25 ea 19 20 00    	jmpq   *0x2019ea(%rip)        # 602040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400656:	68 05 00 00 00       	pushq  $0x5
  40065b:	e9 90 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400660 <getchar@plt>:
  400660:	ff 25 e2 19 20 00    	jmpq   *0x2019e2(%rip)        # 602048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400666:	68 06 00 00 00       	pushq  $0x6
  40066b:	e9 80 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400670 <__gmon_start__@plt>:
  400670:	ff 25 da 19 20 00    	jmpq   *0x2019da(%rip)        # 602050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400676:	68 07 00 00 00       	pushq  $0x7
  40067b:	e9 70 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400680 <tolower@plt>:
  400680:	ff 25 d2 19 20 00    	jmpq   *0x2019d2(%rip)        # 602058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400686:	68 08 00 00 00       	pushq  $0x8
  40068b:	e9 60 ff ff ff       	jmpq   4005f0 <_init+0x28>

0000000000400690 <malloc@plt>:
  400690:	ff 25 ca 19 20 00    	jmpq   *0x2019ca(%rip)        # 602060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400696:	68 09 00 00 00       	pushq  $0x9
  40069b:	e9 50 ff ff ff       	jmpq   4005f0 <_init+0x28>

00000000004006a0 <__ctype_b_loc@plt>:
  4006a0:	ff 25 c2 19 20 00    	jmpq   *0x2019c2(%rip)        # 602068 <_GLOBAL_OFFSET_TABLE_+0x68>
  4006a6:	68 0a 00 00 00       	pushq  $0xa
  4006ab:	e9 40 ff ff ff       	jmpq   4005f0 <_init+0x28>

Disassembly of section .text:

00000000004006b0 <_start>:
  4006b0:	31 ed                	xor    %ebp,%ebp
  4006b2:	49 89 d1             	mov    %rdx,%r9
  4006b5:	5e                   	pop    %rsi
  4006b6:	48 89 e2             	mov    %rsp,%rdx
  4006b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4006bd:	50                   	push   %rax
  4006be:	54                   	push   %rsp
  4006bf:	49 c7 c0 50 0d 40 00 	mov    $0x400d50,%r8
  4006c6:	48 c7 c1 e0 0c 40 00 	mov    $0x400ce0,%rcx
  4006cd:	48 c7 c7 9d 07 40 00 	mov    $0x40079d,%rdi
  4006d4:	e8 67 ff ff ff       	callq  400640 <__libc_start_main@plt>
  4006d9:	f4                   	hlt    
  4006da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004006e0 <deregister_tm_clones>:
  4006e0:	b8 7f 20 60 00       	mov    $0x60207f,%eax
  4006e5:	55                   	push   %rbp
  4006e6:	48 2d 78 20 60 00    	sub    $0x602078,%rax
  4006ec:	48 83 f8 0e          	cmp    $0xe,%rax
  4006f0:	48 89 e5             	mov    %rsp,%rbp
  4006f3:	77 02                	ja     4006f7 <deregister_tm_clones+0x17>
  4006f5:	5d                   	pop    %rbp
  4006f6:	c3                   	retq   
  4006f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4006fc:	48 85 c0             	test   %rax,%rax
  4006ff:	74 f4                	je     4006f5 <deregister_tm_clones+0x15>
  400701:	5d                   	pop    %rbp
  400702:	bf 78 20 60 00       	mov    $0x602078,%edi
  400707:	ff e0                	jmpq   *%rax
  400709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400710 <register_tm_clones>:
  400710:	b8 78 20 60 00       	mov    $0x602078,%eax
  400715:	55                   	push   %rbp
  400716:	48 2d 78 20 60 00    	sub    $0x602078,%rax
  40071c:	48 c1 f8 03          	sar    $0x3,%rax
  400720:	48 89 e5             	mov    %rsp,%rbp
  400723:	48 89 c2             	mov    %rax,%rdx
  400726:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40072a:	48 01 d0             	add    %rdx,%rax
  40072d:	48 d1 f8             	sar    %rax
  400730:	75 02                	jne    400734 <register_tm_clones+0x24>
  400732:	5d                   	pop    %rbp
  400733:	c3                   	retq   
  400734:	ba 00 00 00 00       	mov    $0x0,%edx
  400739:	48 85 d2             	test   %rdx,%rdx
  40073c:	74 f4                	je     400732 <register_tm_clones+0x22>
  40073e:	5d                   	pop    %rbp
  40073f:	48 89 c6             	mov    %rax,%rsi
  400742:	bf 78 20 60 00       	mov    $0x602078,%edi
  400747:	ff e2                	jmpq   *%rdx
  400749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400750 <__do_global_dtors_aux>:
  400750:	80 3d 29 19 20 00 00 	cmpb   $0x0,0x201929(%rip)        # 602080 <completed.6344>
  400757:	75 11                	jne    40076a <__do_global_dtors_aux+0x1a>
  400759:	55                   	push   %rbp
  40075a:	48 89 e5             	mov    %rsp,%rbp
  40075d:	e8 7e ff ff ff       	callq  4006e0 <deregister_tm_clones>
  400762:	5d                   	pop    %rbp
  400763:	c6 05 16 19 20 00 01 	movb   $0x1,0x201916(%rip)        # 602080 <completed.6344>
  40076a:	f3 c3                	repz retq 
  40076c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400770 <frame_dummy>:
  400770:	48 83 3d a8 16 20 00 	cmpq   $0x0,0x2016a8(%rip)        # 601e20 <__JCR_END__>
  400777:	00 
  400778:	74 1e                	je     400798 <frame_dummy+0x28>
  40077a:	b8 00 00 00 00       	mov    $0x0,%eax
  40077f:	48 85 c0             	test   %rax,%rax
  400782:	74 14                	je     400798 <frame_dummy+0x28>
  400784:	55                   	push   %rbp
  400785:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  40078a:	48 89 e5             	mov    %rsp,%rbp
  40078d:	ff d0                	callq  *%rax
  40078f:	5d                   	pop    %rbp
  400790:	e9 7b ff ff ff       	jmpq   400710 <register_tm_clones>
  400795:	0f 1f 00             	nopl   (%rax)
  400798:	e9 73 ff ff ff       	jmpq   400710 <register_tm_clones>

000000000040079d <main>:
  40079d:	55                   	push   %rbp
  40079e:	48 89 e5             	mov    %rsp,%rbp
  4007a1:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4007a5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  4007ac:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  4007b3:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
  4007ba:	00 
  4007bb:	48 8d 55 88          	lea    -0x78(%rbp),%rdx
  4007bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c4:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4007c9:	48 89 d7             	mov    %rdx,%rdi
  4007cc:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4007cf:	48 89 fa             	mov    %rdi,%rdx
  4007d2:	89 02                	mov    %eax,(%rdx)
  4007d4:	48 83 c2 04          	add    $0x4,%rdx
  4007d8:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4007df:	00 
  4007e0:	eb 65                	jmp    400847 <main+0xaa>
  4007e2:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4007e6:	48 89 c7             	mov    %rax,%rdi
  4007e9:	e8 11 03 00 00       	callq  400aff <dmh99>
  4007ee:	8b 55 f0             	mov    -0x10(%rbp),%edx
  4007f1:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4007f5:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  4007f9:	48 89 ce             	mov    %rcx,%rsi
  4007fc:	48 89 c7             	mov    %rax,%rdi
  4007ff:	e8 92 02 00 00       	callq  400a96 <dmh3>
  400804:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400807:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%rbp)
  40080b:	75 1e                	jne    40082b <main+0x8e>
  40080d:	48 8d 4d ec          	lea    -0x14(%rbp),%rcx
  400811:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  400815:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  400819:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  40081d:	48 89 c7             	mov    %rax,%rdi
  400820:	e8 a4 01 00 00       	callq  4009c9 <dmh72>
  400825:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400829:	eb 1c                	jmp    400847 <main+0xaa>
  40082b:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40082e:	48 98                	cltq   
  400830:	48 c1 e0 04          	shl    $0x4,%rax
  400834:	48 89 c2             	mov    %rax,%rdx
  400837:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40083b:	48 01 d0             	add    %rdx,%rax
  40083e:	8b 50 08             	mov    0x8(%rax),%edx
  400841:	83 c2 01             	add    $0x1,%edx
  400844:	89 50 08             	mov    %edx,0x8(%rax)
  400847:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  40084b:	be 64 00 00 00       	mov    $0x64,%esi
  400850:	48 89 c7             	mov    %rax,%rdi
  400853:	e8 82 03 00 00       	callq  400bda <dmh1>
  400858:	83 f8 ff             	cmp    $0xffffffff,%eax
  40085b:	75 85                	jne    4007e2 <main+0x45>
  40085d:	8b 55 f0             	mov    -0x10(%rbp),%edx
  400860:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400864:	89 d6                	mov    %edx,%esi
  400866:	48 89 c7             	mov    %rax,%rdi
  400869:	e8 07 00 00 00       	callq  400875 <reportResults>
  40086e:	b8 00 00 00 00       	mov    $0x0,%eax
  400873:	c9                   	leaveq 
  400874:	c3                   	retq   

0000000000400875 <reportResults>:
  400875:	55                   	push   %rbp
  400876:	48 89 e5             	mov    %rsp,%rbp
  400879:	48 83 ec 20          	sub    $0x20,%rsp
  40087d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400881:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400884:	ba 70 0d 40 00       	mov    $0x400d70,%edx
  400889:	be 76 0d 40 00       	mov    $0x400d76,%esi
  40088e:	bf 7b 0d 40 00       	mov    $0x400d7b,%edi
  400893:	b8 00 00 00 00       	mov    $0x0,%eax
  400898:	e8 93 fd ff ff       	callq  400630 <printf@plt>
  40089d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4008a4:	eb 42                	jmp    4008e8 <reportResults+0x73>
  4008a6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4008a9:	48 98                	cltq   
  4008ab:	48 c1 e0 04          	shl    $0x4,%rax
  4008af:	48 89 c2             	mov    %rax,%rdx
  4008b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008b6:	48 01 d0             	add    %rdx,%rax
  4008b9:	8b 50 08             	mov    0x8(%rax),%edx
  4008bc:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4008bf:	48 98                	cltq   
  4008c1:	48 c1 e0 04          	shl    $0x4,%rax
  4008c5:	48 89 c1             	mov    %rax,%rcx
  4008c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008cc:	48 01 c8             	add    %rcx,%rax
  4008cf:	48 8b 00             	mov    (%rax),%rax
  4008d2:	48 89 c6             	mov    %rax,%rsi
  4008d5:	bf 85 0d 40 00       	mov    $0x400d85,%edi
  4008da:	b8 00 00 00 00       	mov    $0x0,%eax
  4008df:	e8 4c fd ff ff       	callq  400630 <printf@plt>
  4008e4:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4008e8:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4008eb:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  4008ee:	7c b6                	jl     4008a6 <reportResults+0x31>
  4008f0:	c9                   	leaveq 
  4008f1:	c3                   	retq   

00000000004008f2 <dmh40>:
  4008f2:	55                   	push   %rbp
  4008f3:	48 89 e5             	mov    %rsp,%rbp
  4008f6:	48 83 ec 30          	sub    $0x30,%rsp
  4008fa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008fe:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400902:	89 55 dc             	mov    %edx,-0x24(%rbp)
  400905:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400909:	8b 10                	mov    (%rax),%edx
  40090b:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40090e:	01 d0                	add    %edx,%eax
  400910:	89 45 f8             	mov    %eax,-0x8(%rbp)
  400913:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400916:	48 98                	cltq   
  400918:	48 c1 e0 04          	shl    $0x4,%rax
  40091c:	48 89 c7             	mov    %rax,%rdi
  40091f:	e8 6c fd ff ff       	callq  400690 <malloc@plt>
  400924:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400928:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40092f:	eb 39                	jmp    40096a <dmh40+0x78>
  400931:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400934:	48 98                	cltq   
  400936:	48 c1 e0 04          	shl    $0x4,%rax
  40093a:	48 89 c2             	mov    %rax,%rdx
  40093d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400941:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  400945:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400948:	48 98                	cltq   
  40094a:	48 c1 e0 04          	shl    $0x4,%rax
  40094e:	48 89 c2             	mov    %rax,%rdx
  400951:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400955:	48 01 d0             	add    %rdx,%rax
  400958:	48 8b 50 08          	mov    0x8(%rax),%rdx
  40095c:	48 8b 00             	mov    (%rax),%rax
  40095f:	48 89 01             	mov    %rax,(%rcx)
  400962:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  400966:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40096a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40096e:	8b 00                	mov    (%rax),%eax
  400970:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  400973:	7f bc                	jg     400931 <dmh40+0x3f>
  400975:	eb 38                	jmp    4009af <dmh40+0xbd>
  400977:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40097a:	48 98                	cltq   
  40097c:	48 c1 e0 04          	shl    $0x4,%rax
  400980:	48 89 c2             	mov    %rax,%rdx
  400983:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400987:	48 01 d0             	add    %rdx,%rax
  40098a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  400991:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400994:	48 98                	cltq   
  400996:	48 c1 e0 04          	shl    $0x4,%rax
  40099a:	48 89 c2             	mov    %rax,%rdx
  40099d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4009a1:	48 01 d0             	add    %rdx,%rax
  4009a4:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
  4009ab:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4009af:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009b2:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  4009b5:	7c c0                	jl     400977 <dmh40+0x85>
  4009b7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009bb:	48 89 c7             	mov    %rax,%rdi
  4009be:	e8 3d fc ff ff       	callq  400600 <free@plt>
  4009c3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4009c7:	c9                   	leaveq 
  4009c8:	c3                   	retq   

00000000004009c9 <dmh72>:
  4009c9:	55                   	push   %rbp
  4009ca:	48 89 e5             	mov    %rsp,%rbp
  4009cd:	48 83 ec 30          	sub    $0x30,%rsp
  4009d1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4009d5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4009d9:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4009dd:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4009e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009e5:	8b 10                	mov    (%rax),%edx
  4009e7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4009eb:	8b 00                	mov    (%rax),%eax
  4009ed:	39 c2                	cmp    %eax,%edx
  4009ef:	7c 2d                	jl     400a1e <dmh72+0x55>
  4009f1:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  4009f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4009f9:	ba 0a 00 00 00       	mov    $0xa,%edx
  4009fe:	48 89 ce             	mov    %rcx,%rsi
  400a01:	48 89 c7             	mov    %rax,%rdi
  400a04:	e8 e9 fe ff ff       	callq  4008f2 <dmh40>
  400a09:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a0d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400a11:	8b 00                	mov    (%rax),%eax
  400a13:	8d 50 0a             	lea    0xa(%rax),%edx
  400a16:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400a1a:	89 10                	mov    %edx,(%rax)
  400a1c:	eb 08                	jmp    400a26 <dmh72+0x5d>
  400a1e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400a22:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a26:	bf 64 00 00 00       	mov    $0x64,%edi
  400a2b:	e8 60 fc ff ff       	callq  400690 <malloc@plt>
  400a30:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400a34:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400a38:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a3c:	48 89 d6             	mov    %rdx,%rsi
  400a3f:	48 89 c7             	mov    %rax,%rdi
  400a42:	e8 c9 fb ff ff       	callq  400610 <strcpy@plt>
  400a47:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400a4b:	8b 00                	mov    (%rax),%eax
  400a4d:	48 98                	cltq   
  400a4f:	48 c1 e0 04          	shl    $0x4,%rax
  400a53:	48 89 c2             	mov    %rax,%rdx
  400a56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a5a:	48 01 c2             	add    %rax,%rdx
  400a5d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400a61:	48 89 02             	mov    %rax,(%rdx)
  400a64:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400a68:	8b 00                	mov    (%rax),%eax
  400a6a:	48 98                	cltq   
  400a6c:	48 c1 e0 04          	shl    $0x4,%rax
  400a70:	48 89 c2             	mov    %rax,%rdx
  400a73:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a77:	48 01 d0             	add    %rdx,%rax
  400a7a:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
  400a81:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400a85:	8b 00                	mov    (%rax),%eax
  400a87:	8d 50 01             	lea    0x1(%rax),%edx
  400a8a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400a8e:	89 10                	mov    %edx,(%rax)
  400a90:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a94:	c9                   	leaveq 
  400a95:	c3                   	retq   

0000000000400a96 <dmh3>:
  400a96:	55                   	push   %rbp
  400a97:	48 89 e5             	mov    %rsp,%rbp
  400a9a:	48 83 ec 30          	sub    $0x30,%rsp
  400a9e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400aa2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400aa6:	89 55 dc             	mov    %edx,-0x24(%rbp)
  400aa9:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%rbp)
  400ab0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400ab7:	eb 33                	jmp    400aec <dmh3+0x56>
  400ab9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400abc:	48 98                	cltq   
  400abe:	48 c1 e0 04          	shl    $0x4,%rax
  400ac2:	48 89 c2             	mov    %rax,%rdx
  400ac5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400ac9:	48 01 d0             	add    %rdx,%rax
  400acc:	48 8b 00             	mov    (%rax),%rax
  400acf:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400ad3:	48 89 d6             	mov    %rdx,%rsi
  400ad6:	48 89 c7             	mov    %rax,%rdi
  400ad9:	e8 72 fb ff ff       	callq  400650 <strcmp@plt>
  400ade:	85 c0                	test   %eax,%eax
  400ae0:	75 06                	jne    400ae8 <dmh3+0x52>
  400ae2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400ae5:	89 45 f8             	mov    %eax,-0x8(%rbp)
  400ae8:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400aec:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400aef:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  400af2:	7d 06                	jge    400afa <dmh3+0x64>
  400af4:	83 7d f8 ff          	cmpl   $0xffffffff,-0x8(%rbp)
  400af8:	74 bf                	je     400ab9 <dmh3+0x23>
  400afa:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400afd:	c9                   	leaveq 
  400afe:	c3                   	retq   

0000000000400aff <dmh99>:
  400aff:	55                   	push   %rbp
  400b00:	48 89 e5             	mov    %rsp,%rbp
  400b03:	53                   	push   %rbx
  400b04:	48 83 ec 28          	sub    $0x28,%rsp
  400b08:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400b0c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  400b13:	eb 2e                	jmp    400b43 <dmh99+0x44>
  400b15:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400b18:	48 63 d0             	movslq %eax,%rdx
  400b1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400b1f:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
  400b23:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400b26:	48 63 d0             	movslq %eax,%rdx
  400b29:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400b2d:	48 01 d0             	add    %rdx,%rax
  400b30:	0f b6 00             	movzbl (%rax),%eax
  400b33:	0f be c0             	movsbl %al,%eax
  400b36:	89 c7                	mov    %eax,%edi
  400b38:	e8 43 fb ff ff       	callq  400680 <tolower@plt>
  400b3d:	88 03                	mov    %al,(%rbx)
  400b3f:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  400b43:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400b46:	48 63 d0             	movslq %eax,%rdx
  400b49:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400b4d:	48 01 d0             	add    %rdx,%rax
  400b50:	0f b6 00             	movzbl (%rax),%eax
  400b53:	84 c0                	test   %al,%al
  400b55:	74 06                	je     400b5d <dmh99+0x5e>
  400b57:	83 7d ec 64          	cmpl   $0x64,-0x14(%rbp)
  400b5b:	7e b8                	jle    400b15 <dmh99+0x16>
  400b5d:	48 83 c4 28          	add    $0x28,%rsp
  400b61:	5b                   	pop    %rbx
  400b62:	5d                   	pop    %rbp
  400b63:	c3                   	retq   

0000000000400b64 <getch>:
  400b64:	55                   	push   %rbp
  400b65:	48 89 e5             	mov    %rsp,%rbp
  400b68:	8b 05 16 15 20 00    	mov    0x201516(%rip),%eax        # 602084 <bufp>
  400b6e:	85 c0                	test   %eax,%eax
  400b70:	7e 23                	jle    400b95 <getch+0x31>
  400b72:	8b 05 0c 15 20 00    	mov    0x20150c(%rip),%eax        # 602084 <bufp>
  400b78:	83 e8 01             	sub    $0x1,%eax
  400b7b:	89 05 03 15 20 00    	mov    %eax,0x201503(%rip)        # 602084 <bufp>
  400b81:	8b 05 fd 14 20 00    	mov    0x2014fd(%rip),%eax        # 602084 <bufp>
  400b87:	48 98                	cltq   
  400b89:	0f b6 80 a0 20 60 00 	movzbl 0x6020a0(%rax),%eax
  400b90:	0f be c0             	movsbl %al,%eax
  400b93:	eb 05                	jmp    400b9a <getch+0x36>
  400b95:	e8 c6 fa ff ff       	callq  400660 <getchar@plt>
  400b9a:	5d                   	pop    %rbp
  400b9b:	c3                   	retq   

0000000000400b9c <ungetch>:
  400b9c:	55                   	push   %rbp
  400b9d:	48 89 e5             	mov    %rsp,%rbp
  400ba0:	48 83 ec 10          	sub    $0x10,%rsp
  400ba4:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400ba7:	8b 05 d7 14 20 00    	mov    0x2014d7(%rip),%eax        # 602084 <bufp>
  400bad:	83 f8 63             	cmp    $0x63,%eax
  400bb0:	7e 0c                	jle    400bbe <ungetch+0x22>
  400bb2:	bf 8f 0d 40 00       	mov    $0x400d8f,%edi
  400bb7:	e8 64 fa ff ff       	callq  400620 <puts@plt>
  400bbc:	eb 1a                	jmp    400bd8 <ungetch+0x3c>
  400bbe:	8b 05 c0 14 20 00    	mov    0x2014c0(%rip),%eax        # 602084 <bufp>
  400bc4:	8d 50 01             	lea    0x1(%rax),%edx
  400bc7:	89 15 b7 14 20 00    	mov    %edx,0x2014b7(%rip)        # 602084 <bufp>
  400bcd:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400bd0:	48 98                	cltq   
  400bd2:	88 90 a0 20 60 00    	mov    %dl,0x6020a0(%rax)
  400bd8:	c9                   	leaveq 
  400bd9:	c3                   	retq   

0000000000400bda <dmh1>:
  400bda:	55                   	push   %rbp
  400bdb:	48 89 e5             	mov    %rsp,%rbp
  400bde:	53                   	push   %rbx
  400bdf:	48 83 ec 28          	sub    $0x28,%rsp
  400be3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400be7:	89 75 d4             	mov    %esi,-0x2c(%rbp)
  400bea:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400bee:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400bf2:	90                   	nop
  400bf3:	e8 a8 fa ff ff       	callq  4006a0 <__ctype_b_loc@plt>
  400bf8:	48 8b 18             	mov    (%rax),%rbx
  400bfb:	e8 64 ff ff ff       	callq  400b64 <getch>
  400c00:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  400c03:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400c06:	48 98                	cltq   
  400c08:	48 01 c0             	add    %rax,%rax
  400c0b:	48 01 d8             	add    %rbx,%rax
  400c0e:	0f b7 00             	movzwl (%rax),%eax
  400c11:	0f b7 c0             	movzwl %ax,%eax
  400c14:	25 00 20 00 00       	and    $0x2000,%eax
  400c19:	85 c0                	test   %eax,%eax
  400c1b:	75 d6                	jne    400bf3 <dmh1+0x19>
  400c1d:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%rbp)
  400c21:	74 11                	je     400c34 <dmh1+0x5a>
  400c23:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c27:	48 8d 50 01          	lea    0x1(%rax),%rdx
  400c2b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  400c2f:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  400c32:	88 10                	mov    %dl,(%rax)
  400c34:	e8 67 fa ff ff       	callq  4006a0 <__ctype_b_loc@plt>
  400c39:	48 8b 00             	mov    (%rax),%rax
  400c3c:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  400c3f:	48 63 d2             	movslq %edx,%rdx
  400c42:	48 01 d2             	add    %rdx,%rdx
  400c45:	48 01 d0             	add    %rdx,%rax
  400c48:	0f b7 00             	movzwl (%rax),%eax
  400c4b:	0f b7 c0             	movzwl %ax,%eax
  400c4e:	25 00 04 00 00       	and    $0x400,%eax
  400c53:	85 c0                	test   %eax,%eax
  400c55:	75 0c                	jne    400c63 <dmh1+0x89>
  400c57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c5b:	c6 00 00             	movb   $0x0,(%rax)
  400c5e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400c61:	eb 68                	jmp    400ccb <dmh1+0xf1>
  400c63:	eb 4b                	jmp    400cb0 <dmh1+0xd6>
  400c65:	e8 36 fa ff ff       	callq  4006a0 <__ctype_b_loc@plt>
  400c6a:	48 8b 18             	mov    (%rax),%rbx
  400c6d:	e8 f2 fe ff ff       	callq  400b64 <getch>
  400c72:	89 c2                	mov    %eax,%edx
  400c74:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c78:	88 10                	mov    %dl,(%rax)
  400c7a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c7e:	0f b6 00             	movzbl (%rax),%eax
  400c81:	48 0f be c0          	movsbq %al,%rax
  400c85:	48 01 c0             	add    %rax,%rax
  400c88:	48 01 d8             	add    %rbx,%rax
  400c8b:	0f b7 00             	movzwl (%rax),%eax
  400c8e:	0f b7 c0             	movzwl %ax,%eax
  400c91:	83 e0 08             	and    $0x8,%eax
  400c94:	85 c0                	test   %eax,%eax
  400c96:	75 13                	jne    400cab <dmh1+0xd1>
  400c98:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c9c:	0f b6 00             	movzbl (%rax),%eax
  400c9f:	0f be c0             	movsbl %al,%eax
  400ca2:	89 c7                	mov    %eax,%edi
  400ca4:	e8 f3 fe ff ff       	callq  400b9c <ungetch>
  400ca9:	eb 0f                	jmp    400cba <dmh1+0xe0>
  400cab:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  400cb0:	83 6d d4 01          	subl   $0x1,-0x2c(%rbp)
  400cb4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
  400cb8:	7f ab                	jg     400c65 <dmh1+0x8b>
  400cba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400cbe:	c6 00 00             	movb   $0x0,(%rax)
  400cc1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400cc5:	0f b6 00             	movzbl (%rax),%eax
  400cc8:	0f be c0             	movsbl %al,%eax
  400ccb:	48 83 c4 28          	add    $0x28,%rsp
  400ccf:	5b                   	pop    %rbx
  400cd0:	5d                   	pop    %rbp
  400cd1:	c3                   	retq   
  400cd2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400cd9:	00 00 00 
  400cdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ce0 <__libc_csu_init>:
  400ce0:	41 57                	push   %r15
  400ce2:	41 89 ff             	mov    %edi,%r15d
  400ce5:	41 56                	push   %r14
  400ce7:	49 89 f6             	mov    %rsi,%r14
  400cea:	41 55                	push   %r13
  400cec:	49 89 d5             	mov    %rdx,%r13
  400cef:	41 54                	push   %r12
  400cf1:	4c 8d 25 18 11 20 00 	lea    0x201118(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400cf8:	55                   	push   %rbp
  400cf9:	48 8d 2d 18 11 20 00 	lea    0x201118(%rip),%rbp        # 601e18 <__init_array_end>
  400d00:	53                   	push   %rbx
  400d01:	4c 29 e5             	sub    %r12,%rbp
  400d04:	31 db                	xor    %ebx,%ebx
  400d06:	48 c1 fd 03          	sar    $0x3,%rbp
  400d0a:	48 83 ec 08          	sub    $0x8,%rsp
  400d0e:	e8 b5 f8 ff ff       	callq  4005c8 <_init>
  400d13:	48 85 ed             	test   %rbp,%rbp
  400d16:	74 1e                	je     400d36 <__libc_csu_init+0x56>
  400d18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d1f:	00 
  400d20:	4c 89 ea             	mov    %r13,%rdx
  400d23:	4c 89 f6             	mov    %r14,%rsi
  400d26:	44 89 ff             	mov    %r15d,%edi
  400d29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400d2d:	48 83 c3 01          	add    $0x1,%rbx
  400d31:	48 39 eb             	cmp    %rbp,%rbx
  400d34:	75 ea                	jne    400d20 <__libc_csu_init+0x40>
  400d36:	48 83 c4 08          	add    $0x8,%rsp
  400d3a:	5b                   	pop    %rbx
  400d3b:	5d                   	pop    %rbp
  400d3c:	41 5c                	pop    %r12
  400d3e:	41 5d                	pop    %r13
  400d40:	41 5e                	pop    %r14
  400d42:	41 5f                	pop    %r15
  400d44:	c3                   	retq   
  400d45:	90                   	nop
  400d46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d4d:	00 00 00 

0000000000400d50 <__libc_csu_fini>:
  400d50:	f3 c3                	repz retq 
  400d52:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000400d54 <_fini>:
  400d54:	48 83 ec 08          	sub    $0x8,%rsp
  400d58:	48 83 c4 08          	add    $0x8,%rsp
  400d5c:	c3                   	retq   
