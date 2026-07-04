
========================================================================

** ELF Header Information

    File Name: C:\Users\laptop\Documents\ARM\Porsche_ECU\Objects\average.o

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_REL (Relocatable object) (1)
    Machine: EM_ARM (ARM)

    Entry offset (in SHF_ENTRYSECT section): 0x00000000
    Flags: None (0x05000000)

    ARM ELF revision: 5 (ABI version 2)

    Header size: 52 bytes (0x34)
    Program header entry size: 0 bytes (0x0)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 0
    Section header entries: 18

    Program header offset: 0 (0x00000000)
    Section header offset: 5376 (0x00001500)

    Section header string table index: 1

========================================================================

** Section #1 '.strtab' (SHT_STRTAB)
    Size   : 179 bytes


** Section #2 '.text' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 0 bytes (alignment 4)
    Address: 0x00000000


** Section #3 '.text.avg_128' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 1284 bytes (alignment 4)
    Address: 0x00000000

    [Anonymous symbol #2]
    $t
    avg_128
        0x00000000:    f5ad7d3e    ..>}    SUB      sp,sp,#0x2f8
        0x00000004:    903f        ?.      STR      r0,[sp,#0xfc]
        0x00000006:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000008:    6801        .h      LDR      r1,[r0,#0]
        0x0000000a:    6840        @h      LDR      r0,[r0,#4]
        0x0000000c:    91bd        ..      STR      r1,[sp,#0x2f4]
        0x0000000e:    90bc        ..      STR      r0,[sp,#0x2f0]
        0x00000010:    98bd        ..      LDR      r0,[sp,#0x2f4]
        0x00000012:    99bc        ..      LDR      r1,[sp,#0x2f0]
        0x00000014:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000018:    903e        >.      STR      r0,[sp,#0xf8]
        0x0000001a:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x0000001c:    6881        .h      LDR      r1,[r0,#8]
        0x0000001e:    68c0        .h      LDR      r0,[r0,#0xc]
        0x00000020:    91bb        ..      STR      r1,[sp,#0x2ec]
        0x00000022:    90ba        ..      STR      r0,[sp,#0x2e8]
        0x00000024:    98bb        ..      LDR      r0,[sp,#0x2ec]
        0x00000026:    99ba        ..      LDR      r1,[sp,#0x2e8]
        0x00000028:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000002c:    903d        =.      STR      r0,[sp,#0xf4]
        0x0000002e:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000030:    6901        .i      LDR      r1,[r0,#0x10]
        0x00000032:    6940        @i      LDR      r0,[r0,#0x14]
        0x00000034:    91b9        ..      STR      r1,[sp,#0x2e4]
        0x00000036:    90b8        ..      STR      r0,[sp,#0x2e0]
        0x00000038:    98b9        ..      LDR      r0,[sp,#0x2e4]
        0x0000003a:    99b8        ..      LDR      r1,[sp,#0x2e0]
        0x0000003c:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000040:    903c        <.      STR      r0,[sp,#0xf0]
        0x00000042:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000044:    6981        .i      LDR      r1,[r0,#0x18]
        0x00000046:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x00000048:    91b7        ..      STR      r1,[sp,#0x2dc]
        0x0000004a:    90b6        ..      STR      r0,[sp,#0x2d8]
        0x0000004c:    98b7        ..      LDR      r0,[sp,#0x2dc]
        0x0000004e:    99b6        ..      LDR      r1,[sp,#0x2d8]
        0x00000050:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000054:    903b        ;.      STR      r0,[sp,#0xec]
        0x00000056:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000058:    6a01        .j      LDR      r1,[r0,#0x20]
        0x0000005a:    6a40        @j      LDR      r0,[r0,#0x24]
        0x0000005c:    91b5        ..      STR      r1,[sp,#0x2d4]
        0x0000005e:    90b4        ..      STR      r0,[sp,#0x2d0]
        0x00000060:    98b5        ..      LDR      r0,[sp,#0x2d4]
        0x00000062:    99b4        ..      LDR      r1,[sp,#0x2d0]
        0x00000064:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000068:    903a        :.      STR      r0,[sp,#0xe8]
        0x0000006a:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x0000006c:    6a81        .j      LDR      r1,[r0,#0x28]
        0x0000006e:    6ac0        .j      LDR      r0,[r0,#0x2c]
        0x00000070:    91b3        ..      STR      r1,[sp,#0x2cc]
        0x00000072:    90b2        ..      STR      r0,[sp,#0x2c8]
        0x00000074:    98b3        ..      LDR      r0,[sp,#0x2cc]
        0x00000076:    99b2        ..      LDR      r1,[sp,#0x2c8]
        0x00000078:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000007c:    9039        9.      STR      r0,[sp,#0xe4]
        0x0000007e:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000080:    6b01        .k      LDR      r1,[r0,#0x30]
        0x00000082:    6b40        @k      LDR      r0,[r0,#0x34]
        0x00000084:    91b1        ..      STR      r1,[sp,#0x2c4]
        0x00000086:    90b0        ..      STR      r0,[sp,#0x2c0]
        0x00000088:    98b1        ..      LDR      r0,[sp,#0x2c4]
        0x0000008a:    99b0        ..      LDR      r1,[sp,#0x2c0]
        0x0000008c:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000090:    9038        8.      STR      r0,[sp,#0xe0]
        0x00000092:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000094:    6b81        .k      LDR      r1,[r0,#0x38]
        0x00000096:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x00000098:    91af        ..      STR      r1,[sp,#0x2bc]
        0x0000009a:    90ae        ..      STR      r0,[sp,#0x2b8]
        0x0000009c:    98af        ..      LDR      r0,[sp,#0x2bc]
        0x0000009e:    99ae        ..      LDR      r1,[sp,#0x2b8]
        0x000000a0:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000000a4:    9037        7.      STR      r0,[sp,#0xdc]
        0x000000a6:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000000a8:    6c01        .l      LDR      r1,[r0,#0x40]
        0x000000aa:    6c40        @l      LDR      r0,[r0,#0x44]
        0x000000ac:    91ad        ..      STR      r1,[sp,#0x2b4]
        0x000000ae:    90ac        ..      STR      r0,[sp,#0x2b0]
        0x000000b0:    98ad        ..      LDR      r0,[sp,#0x2b4]
        0x000000b2:    99ac        ..      LDR      r1,[sp,#0x2b0]
        0x000000b4:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000000b8:    9036        6.      STR      r0,[sp,#0xd8]
        0x000000ba:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000000bc:    6c81        .l      LDR      r1,[r0,#0x48]
        0x000000be:    6cc0        .l      LDR      r0,[r0,#0x4c]
        0x000000c0:    91ab        ..      STR      r1,[sp,#0x2ac]
        0x000000c2:    90aa        ..      STR      r0,[sp,#0x2a8]
        0x000000c4:    98ab        ..      LDR      r0,[sp,#0x2ac]
        0x000000c6:    99aa        ..      LDR      r1,[sp,#0x2a8]
        0x000000c8:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000000cc:    9035        5.      STR      r0,[sp,#0xd4]
        0x000000ce:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000000d0:    6d01        .m      LDR      r1,[r0,#0x50]
        0x000000d2:    6d40        @m      LDR      r0,[r0,#0x54]
        0x000000d4:    91a9        ..      STR      r1,[sp,#0x2a4]
        0x000000d6:    90a8        ..      STR      r0,[sp,#0x2a0]
        0x000000d8:    98a9        ..      LDR      r0,[sp,#0x2a4]
        0x000000da:    99a8        ..      LDR      r1,[sp,#0x2a0]
        0x000000dc:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000000e0:    9034        4.      STR      r0,[sp,#0xd0]
        0x000000e2:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000000e4:    6d81        .m      LDR      r1,[r0,#0x58]
        0x000000e6:    6dc0        .m      LDR      r0,[r0,#0x5c]
        0x000000e8:    91a7        ..      STR      r1,[sp,#0x29c]
        0x000000ea:    90a6        ..      STR      r0,[sp,#0x298]
        0x000000ec:    98a7        ..      LDR      r0,[sp,#0x29c]
        0x000000ee:    99a6        ..      LDR      r1,[sp,#0x298]
        0x000000f0:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000000f4:    9033        3.      STR      r0,[sp,#0xcc]
        0x000000f6:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000000f8:    6e01        .n      LDR      r1,[r0,#0x60]
        0x000000fa:    6e40        @n      LDR      r0,[r0,#0x64]
        0x000000fc:    91a5        ..      STR      r1,[sp,#0x294]
        0x000000fe:    90a4        ..      STR      r0,[sp,#0x290]
        0x00000100:    98a5        ..      LDR      r0,[sp,#0x294]
        0x00000102:    99a4        ..      LDR      r1,[sp,#0x290]
        0x00000104:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000108:    9032        2.      STR      r0,[sp,#0xc8]
        0x0000010a:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x0000010c:    6e81        .n      LDR      r1,[r0,#0x68]
        0x0000010e:    6ec0        .n      LDR      r0,[r0,#0x6c]
        0x00000110:    91a3        ..      STR      r1,[sp,#0x28c]
        0x00000112:    90a2        ..      STR      r0,[sp,#0x288]
        0x00000114:    98a3        ..      LDR      r0,[sp,#0x28c]
        0x00000116:    99a2        ..      LDR      r1,[sp,#0x288]
        0x00000118:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000011c:    9031        1.      STR      r0,[sp,#0xc4]
        0x0000011e:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000120:    6f01        .o      LDR      r1,[r0,#0x70]
        0x00000122:    6f40        @o      LDR      r0,[r0,#0x74]
        0x00000124:    91a1        ..      STR      r1,[sp,#0x284]
        0x00000126:    90a0        ..      STR      r0,[sp,#0x280]
        0x00000128:    98a1        ..      LDR      r0,[sp,#0x284]
        0x0000012a:    99a0        ..      LDR      r1,[sp,#0x280]
        0x0000012c:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000130:    9030        0.      STR      r0,[sp,#0xc0]
        0x00000132:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000134:    6f81        .o      LDR      r1,[r0,#0x78]
        0x00000136:    6fc0        .o      LDR      r0,[r0,#0x7c]
        0x00000138:    919f        ..      STR      r1,[sp,#0x27c]
        0x0000013a:    909e        ..      STR      r0,[sp,#0x278]
        0x0000013c:    989f        ..      LDR      r0,[sp,#0x27c]
        0x0000013e:    999e        ..      LDR      r1,[sp,#0x278]
        0x00000140:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000144:    902f        /.      STR      r0,[sp,#0xbc]
        0x00000146:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000148:    f8d01080    ....    LDR      r1,[r0,#0x80]
        0x0000014c:    f8d00084    ....    LDR      r0,[r0,#0x84]
        0x00000150:    919d        ..      STR      r1,[sp,#0x274]
        0x00000152:    909c        ..      STR      r0,[sp,#0x270]
        0x00000154:    989d        ..      LDR      r0,[sp,#0x274]
        0x00000156:    999c        ..      LDR      r1,[sp,#0x270]
        0x00000158:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000015c:    902e        ..      STR      r0,[sp,#0xb8]
        0x0000015e:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000160:    f8d01088    ....    LDR      r1,[r0,#0x88]
        0x00000164:    f8d0008c    ....    LDR      r0,[r0,#0x8c]
        0x00000168:    919b        ..      STR      r1,[sp,#0x26c]
        0x0000016a:    909a        ..      STR      r0,[sp,#0x268]
        0x0000016c:    989b        ..      LDR      r0,[sp,#0x26c]
        0x0000016e:    999a        ..      LDR      r1,[sp,#0x268]
        0x00000170:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000174:    902d        -.      STR      r0,[sp,#0xb4]
        0x00000176:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000178:    f8d01090    ....    LDR      r1,[r0,#0x90]
        0x0000017c:    f8d00094    ....    LDR      r0,[r0,#0x94]
        0x00000180:    9199        ..      STR      r1,[sp,#0x264]
        0x00000182:    9098        ..      STR      r0,[sp,#0x260]
        0x00000184:    9899        ..      LDR      r0,[sp,#0x264]
        0x00000186:    9998        ..      LDR      r1,[sp,#0x260]
        0x00000188:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000018c:    902c        ,.      STR      r0,[sp,#0xb0]
        0x0000018e:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000190:    f8d01098    ....    LDR      r1,[r0,#0x98]
        0x00000194:    f8d0009c    ....    LDR      r0,[r0,#0x9c]
        0x00000198:    9197        ..      STR      r1,[sp,#0x25c]
        0x0000019a:    9096        ..      STR      r0,[sp,#0x258]
        0x0000019c:    9897        ..      LDR      r0,[sp,#0x25c]
        0x0000019e:    9996        ..      LDR      r1,[sp,#0x258]
        0x000001a0:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000001a4:    902b        +.      STR      r0,[sp,#0xac]
        0x000001a6:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000001a8:    f8d010a0    ....    LDR      r1,[r0,#0xa0]
        0x000001ac:    f8d000a4    ....    LDR      r0,[r0,#0xa4]
        0x000001b0:    9195        ..      STR      r1,[sp,#0x254]
        0x000001b2:    9094        ..      STR      r0,[sp,#0x250]
        0x000001b4:    9895        ..      LDR      r0,[sp,#0x254]
        0x000001b6:    9994        ..      LDR      r1,[sp,#0x250]
        0x000001b8:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000001bc:    902a        *.      STR      r0,[sp,#0xa8]
        0x000001be:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000001c0:    f8d010a8    ....    LDR      r1,[r0,#0xa8]
        0x000001c4:    f8d000ac    ....    LDR      r0,[r0,#0xac]
        0x000001c8:    9193        ..      STR      r1,[sp,#0x24c]
        0x000001ca:    9092        ..      STR      r0,[sp,#0x248]
        0x000001cc:    9893        ..      LDR      r0,[sp,#0x24c]
        0x000001ce:    9992        ..      LDR      r1,[sp,#0x248]
        0x000001d0:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000001d4:    9029        ).      STR      r0,[sp,#0xa4]
        0x000001d6:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000001d8:    f8d010b0    ....    LDR      r1,[r0,#0xb0]
        0x000001dc:    f8d000b4    ....    LDR      r0,[r0,#0xb4]
        0x000001e0:    9191        ..      STR      r1,[sp,#0x244]
        0x000001e2:    9090        ..      STR      r0,[sp,#0x240]
        0x000001e4:    9891        ..      LDR      r0,[sp,#0x244]
        0x000001e6:    9990        ..      LDR      r1,[sp,#0x240]
        0x000001e8:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000001ec:    9028        (.      STR      r0,[sp,#0xa0]
        0x000001ee:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000001f0:    f8d010b8    ....    LDR      r1,[r0,#0xb8]
        0x000001f4:    f8d000bc    ....    LDR      r0,[r0,#0xbc]
        0x000001f8:    918f        ..      STR      r1,[sp,#0x23c]
        0x000001fa:    908e        ..      STR      r0,[sp,#0x238]
        0x000001fc:    988f        ..      LDR      r0,[sp,#0x23c]
        0x000001fe:    998e        ..      LDR      r1,[sp,#0x238]
        0x00000200:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000204:    9027        '.      STR      r0,[sp,#0x9c]
        0x00000206:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000208:    f8d010c0    ....    LDR      r1,[r0,#0xc0]
        0x0000020c:    f8d000c4    ....    LDR      r0,[r0,#0xc4]
        0x00000210:    918d        ..      STR      r1,[sp,#0x234]
        0x00000212:    908c        ..      STR      r0,[sp,#0x230]
        0x00000214:    988d        ..      LDR      r0,[sp,#0x234]
        0x00000216:    998c        ..      LDR      r1,[sp,#0x230]
        0x00000218:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000021c:    9026        &.      STR      r0,[sp,#0x98]
        0x0000021e:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000220:    f8d010c8    ....    LDR      r1,[r0,#0xc8]
        0x00000224:    f8d000cc    ....    LDR      r0,[r0,#0xcc]
        0x00000228:    918b        ..      STR      r1,[sp,#0x22c]
        0x0000022a:    908a        ..      STR      r0,[sp,#0x228]
        0x0000022c:    988b        ..      LDR      r0,[sp,#0x22c]
        0x0000022e:    998a        ..      LDR      r1,[sp,#0x228]
        0x00000230:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000234:    9025        %.      STR      r0,[sp,#0x94]
        0x00000236:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000238:    f8d010d0    ....    LDR      r1,[r0,#0xd0]
        0x0000023c:    f8d000d4    ....    LDR      r0,[r0,#0xd4]
        0x00000240:    9189        ..      STR      r1,[sp,#0x224]
        0x00000242:    9088        ..      STR      r0,[sp,#0x220]
        0x00000244:    9889        ..      LDR      r0,[sp,#0x224]
        0x00000246:    9988        ..      LDR      r1,[sp,#0x220]
        0x00000248:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000024c:    9024        $.      STR      r0,[sp,#0x90]
        0x0000024e:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000250:    f8d010d8    ....    LDR      r1,[r0,#0xd8]
        0x00000254:    f8d000dc    ....    LDR      r0,[r0,#0xdc]
        0x00000258:    9187        ..      STR      r1,[sp,#0x21c]
        0x0000025a:    9086        ..      STR      r0,[sp,#0x218]
        0x0000025c:    9887        ..      LDR      r0,[sp,#0x21c]
        0x0000025e:    9986        ..      LDR      r1,[sp,#0x218]
        0x00000260:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000264:    9023        #.      STR      r0,[sp,#0x8c]
        0x00000266:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000268:    f8d010e0    ....    LDR      r1,[r0,#0xe0]
        0x0000026c:    f8d000e4    ....    LDR      r0,[r0,#0xe4]
        0x00000270:    9185        ..      STR      r1,[sp,#0x214]
        0x00000272:    9084        ..      STR      r0,[sp,#0x210]
        0x00000274:    9885        ..      LDR      r0,[sp,#0x214]
        0x00000276:    9984        ..      LDR      r1,[sp,#0x210]
        0x00000278:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000027c:    9022        ".      STR      r0,[sp,#0x88]
        0x0000027e:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000280:    f8d010e8    ....    LDR      r1,[r0,#0xe8]
        0x00000284:    f8d000ec    ....    LDR      r0,[r0,#0xec]
        0x00000288:    9183        ..      STR      r1,[sp,#0x20c]
        0x0000028a:    9082        ..      STR      r0,[sp,#0x208]
        0x0000028c:    9883        ..      LDR      r0,[sp,#0x20c]
        0x0000028e:    9982        ..      LDR      r1,[sp,#0x208]
        0x00000290:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000294:    9021        !.      STR      r0,[sp,#0x84]
        0x00000296:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x00000298:    f8d010f0    ....    LDR      r1,[r0,#0xf0]
        0x0000029c:    f8d000f4    ....    LDR      r0,[r0,#0xf4]
        0x000002a0:    9181        ..      STR      r1,[sp,#0x204]
        0x000002a2:    9080        ..      STR      r0,[sp,#0x200]
        0x000002a4:    9881        ..      LDR      r0,[sp,#0x204]
        0x000002a6:    9980        ..      LDR      r1,[sp,#0x200]
        0x000002a8:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000002ac:    9020         .      STR      r0,[sp,#0x80]
        0x000002ae:    983f        ?.      LDR      r0,[sp,#0xfc]
        0x000002b0:    f8d010f8    ....    LDR      r1,[r0,#0xf8]
        0x000002b4:    f8d000fc    ....    LDR      r0,[r0,#0xfc]
        0x000002b8:    917f        ..      STR      r1,[sp,#0x1fc]
        0x000002ba:    907e        ~.      STR      r0,[sp,#0x1f8]
        0x000002bc:    987f        ..      LDR      r0,[sp,#0x1fc]
        0x000002be:    997e        ~.      LDR      r1,[sp,#0x1f8]
        0x000002c0:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000002c4:    901f        ..      STR      r0,[sp,#0x7c]
        0x000002c6:    993e        >.      LDR      r1,[sp,#0xf8]
        0x000002c8:    983d        =.      LDR      r0,[sp,#0xf4]
        0x000002ca:    917d        }.      STR      r1,[sp,#0x1f4]
        0x000002cc:    907c        |.      STR      r0,[sp,#0x1f0]
        0x000002ce:    987d        }.      LDR      r0,[sp,#0x1f4]
        0x000002d0:    997c        |.      LDR      r1,[sp,#0x1f0]
        0x000002d2:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000002d6:    901e        ..      STR      r0,[sp,#0x78]
        0x000002d8:    993c        <.      LDR      r1,[sp,#0xf0]
        0x000002da:    983b        ;.      LDR      r0,[sp,#0xec]
        0x000002dc:    917b        {.      STR      r1,[sp,#0x1ec]
        0x000002de:    907a        z.      STR      r0,[sp,#0x1e8]
        0x000002e0:    987b        {.      LDR      r0,[sp,#0x1ec]
        0x000002e2:    997a        z.      LDR      r1,[sp,#0x1e8]
        0x000002e4:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000002e8:    901d        ..      STR      r0,[sp,#0x74]
        0x000002ea:    993a        :.      LDR      r1,[sp,#0xe8]
        0x000002ec:    9839        9.      LDR      r0,[sp,#0xe4]
        0x000002ee:    9179        y.      STR      r1,[sp,#0x1e4]
        0x000002f0:    9078        x.      STR      r0,[sp,#0x1e0]
        0x000002f2:    9879        y.      LDR      r0,[sp,#0x1e4]
        0x000002f4:    9978        x.      LDR      r1,[sp,#0x1e0]
        0x000002f6:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000002fa:    901c        ..      STR      r0,[sp,#0x70]
        0x000002fc:    9938        8.      LDR      r1,[sp,#0xe0]
        0x000002fe:    9837        7.      LDR      r0,[sp,#0xdc]
        0x00000300:    9177        w.      STR      r1,[sp,#0x1dc]
        0x00000302:    9076        v.      STR      r0,[sp,#0x1d8]
        0x00000304:    9877        w.      LDR      r0,[sp,#0x1dc]
        0x00000306:    9976        v.      LDR      r1,[sp,#0x1d8]
        0x00000308:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000030c:    901b        ..      STR      r0,[sp,#0x6c]
        0x0000030e:    9936        6.      LDR      r1,[sp,#0xd8]
        0x00000310:    9835        5.      LDR      r0,[sp,#0xd4]
        0x00000312:    9175        u.      STR      r1,[sp,#0x1d4]
        0x00000314:    9074        t.      STR      r0,[sp,#0x1d0]
        0x00000316:    9875        u.      LDR      r0,[sp,#0x1d4]
        0x00000318:    9974        t.      LDR      r1,[sp,#0x1d0]
        0x0000031a:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000031e:    901a        ..      STR      r0,[sp,#0x68]
        0x00000320:    9934        4.      LDR      r1,[sp,#0xd0]
        0x00000322:    9833        3.      LDR      r0,[sp,#0xcc]
        0x00000324:    9173        s.      STR      r1,[sp,#0x1cc]
        0x00000326:    9072        r.      STR      r0,[sp,#0x1c8]
        0x00000328:    9873        s.      LDR      r0,[sp,#0x1cc]
        0x0000032a:    9972        r.      LDR      r1,[sp,#0x1c8]
        0x0000032c:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000330:    9019        ..      STR      r0,[sp,#0x64]
        0x00000332:    9932        2.      LDR      r1,[sp,#0xc8]
        0x00000334:    9831        1.      LDR      r0,[sp,#0xc4]
        0x00000336:    9171        q.      STR      r1,[sp,#0x1c4]
        0x00000338:    9070        p.      STR      r0,[sp,#0x1c0]
        0x0000033a:    9871        q.      LDR      r0,[sp,#0x1c4]
        0x0000033c:    9970        p.      LDR      r1,[sp,#0x1c0]
        0x0000033e:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000342:    9018        ..      STR      r0,[sp,#0x60]
        0x00000344:    9930        0.      LDR      r1,[sp,#0xc0]
        0x00000346:    982f        /.      LDR      r0,[sp,#0xbc]
        0x00000348:    916f        o.      STR      r1,[sp,#0x1bc]
        0x0000034a:    906e        n.      STR      r0,[sp,#0x1b8]
        0x0000034c:    986f        o.      LDR      r0,[sp,#0x1bc]
        0x0000034e:    996e        n.      LDR      r1,[sp,#0x1b8]
        0x00000350:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000354:    9017        ..      STR      r0,[sp,#0x5c]
        0x00000356:    992e        ..      LDR      r1,[sp,#0xb8]
        0x00000358:    982d        -.      LDR      r0,[sp,#0xb4]
        0x0000035a:    916d        m.      STR      r1,[sp,#0x1b4]
        0x0000035c:    906c        l.      STR      r0,[sp,#0x1b0]
        0x0000035e:    986d        m.      LDR      r0,[sp,#0x1b4]
        0x00000360:    996c        l.      LDR      r1,[sp,#0x1b0]
        0x00000362:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000366:    9016        ..      STR      r0,[sp,#0x58]
        0x00000368:    992c        ,.      LDR      r1,[sp,#0xb0]
        0x0000036a:    982b        +.      LDR      r0,[sp,#0xac]
        0x0000036c:    916b        k.      STR      r1,[sp,#0x1ac]
        0x0000036e:    906a        j.      STR      r0,[sp,#0x1a8]
        0x00000370:    986b        k.      LDR      r0,[sp,#0x1ac]
        0x00000372:    996a        j.      LDR      r1,[sp,#0x1a8]
        0x00000374:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000378:    9015        ..      STR      r0,[sp,#0x54]
        0x0000037a:    992a        *.      LDR      r1,[sp,#0xa8]
        0x0000037c:    9829        ).      LDR      r0,[sp,#0xa4]
        0x0000037e:    9169        i.      STR      r1,[sp,#0x1a4]
        0x00000380:    9068        h.      STR      r0,[sp,#0x1a0]
        0x00000382:    9869        i.      LDR      r0,[sp,#0x1a4]
        0x00000384:    9968        h.      LDR      r1,[sp,#0x1a0]
        0x00000386:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000038a:    9014        ..      STR      r0,[sp,#0x50]
        0x0000038c:    9928        (.      LDR      r1,[sp,#0xa0]
        0x0000038e:    9827        '.      LDR      r0,[sp,#0x9c]
        0x00000390:    9167        g.      STR      r1,[sp,#0x19c]
        0x00000392:    9066        f.      STR      r0,[sp,#0x198]
        0x00000394:    9867        g.      LDR      r0,[sp,#0x19c]
        0x00000396:    9966        f.      LDR      r1,[sp,#0x198]
        0x00000398:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000039c:    9013        ..      STR      r0,[sp,#0x4c]
        0x0000039e:    9926        &.      LDR      r1,[sp,#0x98]
        0x000003a0:    9825        %.      LDR      r0,[sp,#0x94]
        0x000003a2:    9165        e.      STR      r1,[sp,#0x194]
        0x000003a4:    9064        d.      STR      r0,[sp,#0x190]
        0x000003a6:    9865        e.      LDR      r0,[sp,#0x194]
        0x000003a8:    9964        d.      LDR      r1,[sp,#0x190]
        0x000003aa:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000003ae:    9012        ..      STR      r0,[sp,#0x48]
        0x000003b0:    9924        $.      LDR      r1,[sp,#0x90]
        0x000003b2:    9823        #.      LDR      r0,[sp,#0x8c]
        0x000003b4:    9163        c.      STR      r1,[sp,#0x18c]
        0x000003b6:    9062        b.      STR      r0,[sp,#0x188]
        0x000003b8:    9863        c.      LDR      r0,[sp,#0x18c]
        0x000003ba:    9962        b.      LDR      r1,[sp,#0x188]
        0x000003bc:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000003c0:    9011        ..      STR      r0,[sp,#0x44]
        0x000003c2:    9922        ".      LDR      r1,[sp,#0x88]
        0x000003c4:    9821        !.      LDR      r0,[sp,#0x84]
        0x000003c6:    9161        a.      STR      r1,[sp,#0x184]
        0x000003c8:    9060        `.      STR      r0,[sp,#0x180]
        0x000003ca:    9861        a.      LDR      r0,[sp,#0x184]
        0x000003cc:    9960        `.      LDR      r1,[sp,#0x180]
        0x000003ce:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000003d2:    9010        ..      STR      r0,[sp,#0x40]
        0x000003d4:    9920         .      LDR      r1,[sp,#0x80]
        0x000003d6:    981f        ..      LDR      r0,[sp,#0x7c]
        0x000003d8:    915f        _.      STR      r1,[sp,#0x17c]
        0x000003da:    905e        ^.      STR      r0,[sp,#0x178]
        0x000003dc:    985f        _.      LDR      r0,[sp,#0x17c]
        0x000003de:    995e        ^.      LDR      r1,[sp,#0x178]
        0x000003e0:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000003e4:    900f        ..      STR      r0,[sp,#0x3c]
        0x000003e6:    991e        ..      LDR      r1,[sp,#0x78]
        0x000003e8:    981d        ..      LDR      r0,[sp,#0x74]
        0x000003ea:    915d        ].      STR      r1,[sp,#0x174]
        0x000003ec:    905c        \.      STR      r0,[sp,#0x170]
        0x000003ee:    985d        ].      LDR      r0,[sp,#0x174]
        0x000003f0:    995c        \.      LDR      r1,[sp,#0x170]
        0x000003f2:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000003f6:    900e        ..      STR      r0,[sp,#0x38]
        0x000003f8:    991c        ..      LDR      r1,[sp,#0x70]
        0x000003fa:    981b        ..      LDR      r0,[sp,#0x6c]
        0x000003fc:    915b        [.      STR      r1,[sp,#0x16c]
        0x000003fe:    905a        Z.      STR      r0,[sp,#0x168]
        0x00000400:    985b        [.      LDR      r0,[sp,#0x16c]
        0x00000402:    995a        Z.      LDR      r1,[sp,#0x168]
        0x00000404:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000408:    900d        ..      STR      r0,[sp,#0x34]
        0x0000040a:    991a        ..      LDR      r1,[sp,#0x68]
        0x0000040c:    9819        ..      LDR      r0,[sp,#0x64]
        0x0000040e:    9159        Y.      STR      r1,[sp,#0x164]
        0x00000410:    9058        X.      STR      r0,[sp,#0x160]
        0x00000412:    9859        Y.      LDR      r0,[sp,#0x164]
        0x00000414:    9958        X.      LDR      r1,[sp,#0x160]
        0x00000416:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000041a:    900c        ..      STR      r0,[sp,#0x30]
        0x0000041c:    9918        ..      LDR      r1,[sp,#0x60]
        0x0000041e:    9817        ..      LDR      r0,[sp,#0x5c]
        0x00000420:    9157        W.      STR      r1,[sp,#0x15c]
        0x00000422:    9056        V.      STR      r0,[sp,#0x158]
        0x00000424:    9857        W.      LDR      r0,[sp,#0x15c]
        0x00000426:    9956        V.      LDR      r1,[sp,#0x158]
        0x00000428:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000042c:    900b        ..      STR      r0,[sp,#0x2c]
        0x0000042e:    9916        ..      LDR      r1,[sp,#0x58]
        0x00000430:    9815        ..      LDR      r0,[sp,#0x54]
        0x00000432:    9155        U.      STR      r1,[sp,#0x154]
        0x00000434:    9054        T.      STR      r0,[sp,#0x150]
        0x00000436:    9855        U.      LDR      r0,[sp,#0x154]
        0x00000438:    9954        T.      LDR      r1,[sp,#0x150]
        0x0000043a:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x0000043e:    900a        ..      STR      r0,[sp,#0x28]
        0x00000440:    9914        ..      LDR      r1,[sp,#0x50]
        0x00000442:    9813        ..      LDR      r0,[sp,#0x4c]
        0x00000444:    9153        S.      STR      r1,[sp,#0x14c]
        0x00000446:    9052        R.      STR      r0,[sp,#0x148]
        0x00000448:    9853        S.      LDR      r0,[sp,#0x14c]
        0x0000044a:    9952        R.      LDR      r1,[sp,#0x148]
        0x0000044c:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000450:    9009        ..      STR      r0,[sp,#0x24]
        0x00000452:    9912        ..      LDR      r1,[sp,#0x48]
        0x00000454:    9811        ..      LDR      r0,[sp,#0x44]
        0x00000456:    9151        Q.      STR      r1,[sp,#0x144]
        0x00000458:    9050        P.      STR      r0,[sp,#0x140]
        0x0000045a:    9851        Q.      LDR      r0,[sp,#0x144]
        0x0000045c:    9950        P.      LDR      r1,[sp,#0x140]
        0x0000045e:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000462:    9008        ..      STR      r0,[sp,#0x20]
        0x00000464:    9910        ..      LDR      r1,[sp,#0x40]
        0x00000466:    980f        ..      LDR      r0,[sp,#0x3c]
        0x00000468:    914f        O.      STR      r1,[sp,#0x13c]
        0x0000046a:    904e        N.      STR      r0,[sp,#0x138]
        0x0000046c:    984f        O.      LDR      r0,[sp,#0x13c]
        0x0000046e:    994e        N.      LDR      r1,[sp,#0x138]
        0x00000470:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000474:    9007        ..      STR      r0,[sp,#0x1c]
        0x00000476:    990e        ..      LDR      r1,[sp,#0x38]
        0x00000478:    980d        ..      LDR      r0,[sp,#0x34]
        0x0000047a:    914d        M.      STR      r1,[sp,#0x134]
        0x0000047c:    904c        L.      STR      r0,[sp,#0x130]
        0x0000047e:    984d        M.      LDR      r0,[sp,#0x134]
        0x00000480:    994c        L.      LDR      r1,[sp,#0x130]
        0x00000482:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000486:    9006        ..      STR      r0,[sp,#0x18]
        0x00000488:    990c        ..      LDR      r1,[sp,#0x30]
        0x0000048a:    980b        ..      LDR      r0,[sp,#0x2c]
        0x0000048c:    914b        K.      STR      r1,[sp,#0x12c]
        0x0000048e:    904a        J.      STR      r0,[sp,#0x128]
        0x00000490:    984b        K.      LDR      r0,[sp,#0x12c]
        0x00000492:    994a        J.      LDR      r1,[sp,#0x128]
        0x00000494:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x00000498:    9005        ..      STR      r0,[sp,#0x14]
        0x0000049a:    990a        ..      LDR      r1,[sp,#0x28]
        0x0000049c:    9809        ..      LDR      r0,[sp,#0x24]
        0x0000049e:    9149        I.      STR      r1,[sp,#0x124]
        0x000004a0:    9048        H.      STR      r0,[sp,#0x120]
        0x000004a2:    9849        I.      LDR      r0,[sp,#0x124]
        0x000004a4:    9948        H.      LDR      r1,[sp,#0x120]
        0x000004a6:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000004aa:    9004        ..      STR      r0,[sp,#0x10]
        0x000004ac:    9908        ..      LDR      r1,[sp,#0x20]
        0x000004ae:    9807        ..      LDR      r0,[sp,#0x1c]
        0x000004b0:    9147        G.      STR      r1,[sp,#0x11c]
        0x000004b2:    9046        F.      STR      r0,[sp,#0x118]
        0x000004b4:    9847        G.      LDR      r0,[sp,#0x11c]
        0x000004b6:    9946        F.      LDR      r1,[sp,#0x118]
        0x000004b8:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000004bc:    9003        ..      STR      r0,[sp,#0xc]
        0x000004be:    9906        ..      LDR      r1,[sp,#0x18]
        0x000004c0:    9805        ..      LDR      r0,[sp,#0x14]
        0x000004c2:    9145        E.      STR      r1,[sp,#0x114]
        0x000004c4:    9044        D.      STR      r0,[sp,#0x110]
        0x000004c6:    9845        E.      LDR      r0,[sp,#0x114]
        0x000004c8:    9944        D.      LDR      r1,[sp,#0x110]
        0x000004ca:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000004ce:    9002        ..      STR      r0,[sp,#8]
        0x000004d0:    9904        ..      LDR      r1,[sp,#0x10]
        0x000004d2:    9803        ..      LDR      r0,[sp,#0xc]
        0x000004d4:    9143        C.      STR      r1,[sp,#0x10c]
        0x000004d6:    9042        B.      STR      r0,[sp,#0x108]
        0x000004d8:    9843        C.      LDR      r0,[sp,#0x10c]
        0x000004da:    9942        B.      LDR      r1,[sp,#0x108]
        0x000004dc:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000004e0:    9001        ..      STR      r0,[sp,#4]
        0x000004e2:    9902        ..      LDR      r1,[sp,#8]
        0x000004e4:    9801        ..      LDR      r0,[sp,#4]
        0x000004e6:    9141        A.      STR      r1,[sp,#0x104]
        0x000004e8:    9040        @.      STR      r0,[sp,#0x100]
        0x000004ea:    9841        A.      LDR      r0,[sp,#0x104]
        0x000004ec:    9940        @.      LDR      r1,[sp,#0x100]
        0x000004ee:    fa90f021    ..!.    SHADD16  r0,r0,r1
        0x000004f2:    9000        ..      STR      r0,[sp,#0]
        0x000004f4:    9800        ..      LDR      r0,[sp,#0]
        0x000004f6:    eb004010    ...@    ADD      r0,r0,r0,LSR #16
        0x000004fa:    b280        ..      UXTH     r0,r0
        0x000004fc:    0840        @.      LSRS     r0,r0,#1
        0x000004fe:    f50d7d3e    ..>}    ADD      sp,sp,#0x2f8
        0x00000502:    4770        pG      BX       lr

** Section #4 '.ARM.exidx.text.avg_128' (SHT_ARM_EXIDX) [SHF_ALLOC + SHF_LINK_ORDER]
    Size   : 8 bytes (alignment 4)
    Address: 0x00000000
    Link to section #3 '.text.avg_128'


** Section #5 '.rel.ARM.exidx.text.avg_128' (SHT_REL) [SHF_INFO_LINK]
    Size   : 8 bytes (alignment 4)
    Symbol table #17 '.symtab'
    1 relocations applied to section #4 '.ARM.exidx.text.avg_128'


** Section #6 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 104 bytes


** Section #7 '.debug_info' (SHT_PROGBITS)
    Size   : 1051 bytes


** Section #8 '.rel.debug_info' (SHT_REL) [SHF_INFO_LINK]
    Size   : 608 bytes (alignment 4)
    Symbol table #17 '.symtab'
    76 relocations applied to section #7 '.debug_info'


** Section #9 '.debug_str' (SHT_PROGBITS) [SHF_MERGE + SHF_STRINGS]
    Size   : 557 bytes


** Section #10 '.comment' (SHT_PROGBITS) [SHF_MERGE + SHF_STRINGS]
    Size   : 69 bytes


** Section #11 '.note.GNU-stack' (SHT_PROGBITS)
    Size   : 0 bytes


** Section #12 '.ARM.attributes' (SHT_ARM_ATTRIBUTES)
    Size   : 88 bytes


** Section #13 '.debug_frame' (SHT_PROGBITS)
    Size   : 40 bytes (alignment 4)


** Section #14 '.rel.debug_frame' (SHT_REL) [SHF_INFO_LINK]
    Size   : 16 bytes (alignment 4)
    Symbol table #17 '.symtab'
    2 relocations applied to section #13 '.debug_frame'


** Section #15 '.debug_line' (SHT_PROGBITS)
    Size   : 1145 bytes


** Section #16 '.rel.debug_line' (SHT_REL) [SHF_INFO_LINK]
    Size   : 8 bytes (alignment 4)
    Symbol table #17 '.symtab'
    1 relocations applied to section #15 '.debug_line'


** Section #17 '.symtab' (SHT_SYMTAB)
    Size   : 144 bytes (alignment 4)
    String table #1 '.strtab'
    Last local symbol no. 7


