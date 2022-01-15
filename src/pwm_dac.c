#include "pwm_dac.h"

uint8_t xdata dac_buff1[256]; //���Ż���,��໺��256*125=32ms,��32ms�ڱ�����������
uint8_t dac_read = 0;         //������λ��
uint8_t dac_write = 0;        //д����λ��
uint8_t dac_sendflag = 0;     //���ڷ������ݱ�־λ

/* Private define ------------------------------------------------------------*/
/* Quantizer step size lookup table */
code uint16_t StepSizeTable[89]={7,8,9,10,11,12,13,14,16,17,
                            19,21,23,25,28,31,34,37,41,45,
                            50,55,60,66,73,80,88,97,107,118,
                            130,143,157,173,190,209,230,253,279,307,
                            337,371,408,449,494,544,598,658,724,796,
                            876,963,1060,1166,1282,1411,1552,1707,1878,2066,
                            2272,2499,2749,3024,3327,3660,4026,4428,4871,5358,
                            5894,6484,7132,7845,8630,9493,10442,11487,12635,13899,
                            15289,16818,18500,20350,22385,24623,27086,29794,32767};
/* Table of index changes */
code int8_t IndexTable[16]={-1,-1,-1,-1,2,4,6,8,-1,-1,-1,-1,2,4,6,8};
/* wav data */
code uint8_t wav_buf[] = {118, 1, 0,
255, 127, 87, 169, 10, 0, 156, 143, 136, 56, 49, 98, 49, 27,
107, 207, 255, 38, 178, 60, 1, 240, 40, 24, 232, 8, 56, 162,
184, 123, 129, 152, 48, 33, 225, 153, 16, 184, 204, 33, 1, 176,
64, 82, 145, 2, 89, 161, 200, 44, 160, 249, 27, 32, 178, 16,
96, 132, 129, 58, 1, 196, 140, 10, 193, 169, 43, 146, 19, 105,
33, 23, 9, 25, 148, 169, 143, 144, 161, 13, 9, 132, 8, 40,
23, 1, 11, 2, 130, 159, 137, 145, 155, 155, 21, 32, 28, 36,
36, 10, 152, 6, 153, 173, 145, 9, 158, 128, 35, 25, 0, 55,
32, 185, 18, 33, 191, 185, 16, 172, 218, 50, 48, 168, 52, 69,
144, 152, 65, 169, 251, 9, 9, 202, 8, 81, 0, 128, 115, 17,
160, 0, 17, 250, 154, 9, 169, 201, 40, 66, 162, 81, 83, 146,
128, 57, 177, 236, 139, 137, 201, 138, 64, 19, 0, 114, 20, 129,
9, 1, 216, 172, 139, 184, 202, 27, 52, 19, 72, 84, 4, 128,
8, 146, 219, 172, 153, 184, 141, 8, 36, 17, 49, 55, 2, 9,
1, 176, 191, 171, 160, 187, 156, 51, 37, 16, 69, 51, 128, 8,
130, 251, 172, 154, 169, 172, 9, 52, 34, 49, 55, 35, 136, 0,
144, 191, 203, 137, 171, 156, 48, 83, 2, 67, 69, 129, 136, 0,
185, 205, 170, 169, 186, 154, 114, 34, 33, 115, 19, 145, 8, 0,

193, 78, 68,
191, 170, 152, 171, 140, 50, 52, 49, 68, 37, 0, 136, 145, 188,
190, 169, 153, 156, 8, 83, 50, 33, 54, 35, 152, 128, 144, 207,
171, 154, 170, 170, 33, 70, 33, 50, 69, 1, 152, 0, 186, 206,
169, 138, 187, 137, 98, 50, 34, 84, 50, 128, 136, 136, 236, 187,
154, 186, 202, 40, 99, 18, 35, 69, 3, 128, 24, 201, 235, 155,
170, 186, 154, 81, 35, 52, 83, 51, 3, 136, 136, 251, 173, 155,
186, 169, 26, 97, 20, 50, 83, 35, 129, 137, 176, 236, 172, 154,
169, 154, 41, 53, 36, 65, 36, 3, 8, 152, 217, 173, 187, 169,
186, 139, 67, 54, 49, 52, 37, 1, 137, 160, 235, 188, 170, 170,
154, 8, 68, 67, 66, 52, 34, 0, 144, 217, 188, 188, 186, 170,
171, 49, 55, 51, 67, 37, 18, 136, 160, 234, 204, 154, 154, 185,
137, 83, 67, 34, 52, 52, 129, 136, 152, 221, 187, 155, 187, 187,
32, 85, 35, 51, 69, 18, 144, 8, 186, 221, 171, 154, 187, 154,
82, 67, 35, 53, 36, 1, 8, 136, 220, 219, 154, 169, 186, 24,
81, 35, 52, 68, 34, 128, 128, 152, 221, 187, 170, 185, 156, 56,
68, 18, 68, 51, 3, 128, 8, 250, 219, 154, 170, 186, 9, 65,
36, 67, 83, 35, 2, 8, 152, 236, 172, 170, 185, 154, 25, 67,
37, 66, 52, 18, 16, 136, 217, 204, 171, 186, 170, 11, 48, 39,

238, 232, 66,
51, 84, 33, 129, 128, 170, 221, 186, 154, 171, 170, 65, 67, 36,
67, 83, 2, 128, 8, 219, 219, 155, 186, 186, 24, 81, 35, 38,
51, 195, 115, 177, 1, 189, 136, 189, 8, 176, 58, 149, 67, 36,
8, 3, 201, 17, 216, 137, 184, 185, 193, 173, 17, 168, 85, 17,
66, 4, 128, 0, 251, 153, 187, 153, 136, 16, 38, 33, 67, 128,
33, 176, 28, 178, 142, 1, 220, 0, 203, 25, 144, 80, 20, 65,
36, 136, 17, 250, 154, 186, 155, 1, 26, 54, 17, 81, 145, 40,
144, 140, 4, 171, 32, 248, 138, 201, 139, 129, 57, 71, 17, 83,
129, 8, 200, 157, 169, 187, 24, 145, 115, 18, 32, 132, 10, 0,
202, 48, 169, 41, 194, 142, 184, 173, 24, 137, 85, 34, 82, 3,
8, 184, 206, 153, 187, 10, 18, 96, 51, 1, 35, 154, 136, 217,
42, 129, 9, 4, 189, 169, 206, 10, 145, 81, 68, 49, 36, 8,
152, 221, 154, 186, 155, 34, 33, 54, 18, 50, 168, 153, 168, 142,
2, 136, 82, 202, 154, 234, 140, 136, 32, 85, 33, 67, 129, 136,
234, 156, 170, 170, 48, 17, 68, 35, 33, 161, 170, 136, 219, 33,
128, 64, 211, 156, 202, 204, 8, 24, 114, 35, 66, 3, 136, 201,
205, 169, 170, 9, 18, 83, 36, 17, 131, 170, 10, 218, 24, 129,
40, 5, 188, 185, 206, 137, 8, 82, 52, 66, 36, 136, 153, 205,

105, 246, 73,
154, 171, 24, 19, 68, 20, 17, 129, 154, 137, 187, 41, 145, 81,
162, 175, 184, 174, 136, 8, 115, 36, 34, 20, 136, 185, 191, 154,
186, 9, 35, 82, 36, 18, 2, 186, 153, 202, 25, 130, 40, 5,
250, 153, 203, 138, 8, 98, 37, 35, 36, 128, 169, 206, 170, 186,
139, 50, 66, 53, 18, 34, 185, 138, 186, 142, 17, 9, 51, 216,
138, 236, 154, 136, 48, 70, 50, 67, 130, 153, 251, 172, 154, 170,
32, 50, 69, 19, 33, 161, 155, 187, 187, 16, 8, 84, 145, 171,
220, 156, 153, 8, 85, 51, 52, 19, 152, 250, 188, 170, 186, 25,
67, 83, 36, 33, 145, 185, 170, 203, 137, 1, 33, 5, 153, 218,
189, 153, 9, 99, 52, 52, 20, 128, 185, 190, 172, 155, 10, 49,
99, 67, 18, 1, 153, 172, 186, 138, 24, 16, 53, 128, 187, 205,
156, 137, 49, 70, 67, 51, 129, 168, 237, 171, 186, 138, 33, 67,
69, 18, 17, 153, 186, 188, 11, 24, 16, 114, 17, 138, 187, 158,
153, 41, 115, 51, 99, 32, 47, 243, 144, 27, 202, 49, 153, 6,
49, 177, 128, 143, 145, 25, 2, 33, 186, 179, 15, 178, 49, 144,
34, 159, 162, 56, 35, 115, 160, 192, 158, 184, 41, 17, 54, 32,
194, 26, 219, 0, 25, 20, 57, 216, 8, 171, 19, 74, 133, 41,
204, 0, 10, 7, 49, 161, 136, 191, 168, 26, 19, 115, 1, 130,

109, 38, 76,
153, 187, 33, 89, 132, 16, 219, 136, 12, 3, 80, 146, 128, 174,
144, 57, 21, 82, 144, 176, 175, 168, 41, 18, 53, 17, 177, 156,
202, 57, 0, 22, 24, 200, 138, 186, 66, 48, 5, 136, 250, 9,
137, 52, 65, 130, 153, 206, 153, 10, 35, 114, 1, 129, 187, 184,
27, 3, 84, 128, 177, 157, 153, 73, 18, 36, 137, 248, 138, 137,
82, 34, 20, 137, 220, 170, 154, 50, 67, 21, 16, 202, 154, 155,
19, 97, 130, 128, 188, 153, 43, 22, 65, 128, 184, 174, 152, 64,
51, 83, 144, 233, 171, 186, 48, 67, 53, 16, 200, 155, 186, 48,
49, 22, 128, 234, 137, 138, 51, 81, 2, 169, 190, 152, 25, 39,
34, 130, 201, 189, 170, 25, 36, 99, 17, 160, 170, 187, 42, 19,
53, 129, 217, 171, 170, 82, 50, 36, 152, 205, 170, 9, 84, 50,
19, 169, 191, 171, 139, 66, 83, 35, 129, 187, 219, 138, 18, 66,
2, 176, 173, 186, 73, 36, 67, 128, 234, 171, 153, 82, 36, 36,
136, 235, 171, 171, 48, 53, 36, 1, 185, 187, 172, 48, 65, 35,
144, 205, 169, 10, 37, 51, 3, 218, 189, 153, 56, 54, 51, 130,
250, 203, 170, 24, 67, 52, 2, 176, 187, 173, 41, 34, 36, 0,
234, 154, 154, 83, 34, 4, 168, 220, 169, 8, 68, 51, 3, 186,
191, 187, 10, 83, 67, 19, 144, 187, 204, 25, 17, 67, 129, 184,

59, 246, 66,
171, 11, 55, 51, 131, 202, 175, 169, 32, 53, 67, 129, 202, 189,
170, 25, 52, 68, 17, 152, 187, 203, 24, 18, 52, 0, 234, 154,
154, 82, 50, 35, 169, 191, 155, 9, 69, 51, 3, 185, 191, 187,
138, 52, 68, 18, 145, 187, 203, 10, 34, 83, 1, 184, 158, 170,
48, 37, 35, 160, 250, 171, 153, 99, 51, 35, 152, 206, 171, 155,
65, 67, 20, 1, 186, 187, 140, 33, 66, 3, 152, 174, 170, 41,
38, 50, 145, 217, 172, 154, 64, 53, 35, 128, 251, 171, 171, 56,
52, 53, 1, 184, 203, 171, 32, 50, 22, 136, 218, 169, 10, 83,
66, 1, 168, 205, 169, 40, 68, 51, 130, 202, 174, 171, 9, 52,
52, 18, 160, 203, 203, 25, 50, 51, 129, 234, 171, 155, 97, 36,
19, 169, 251, 170, 25, 98, 35, 3, 169, 190, 203, 137, 66, 51,
20, 145, 187, 203, 10, 50, 67, 130, 217, 187, 171, 80, 53, 34,
160, 251, 170, 10, 81, 36, 35, 153, 220, 186, 139, 64, 67, 20,
129, 169, 203, 138, 32, 67, 2, 168, 189, 170, 25, 54, 67, 145,
201, 173, 153, 56, 54, 51, 144, 234, 187, 172, 16, 52, 52, 1,
184, 187, 173, 32, 50, 20, 137, 234, 170, 137, 68, 66, 129, 168,
189, 170, 41, 85, 50, 130, 201, 188, 187, 10, 68, 36, 18, 160,
187, 203, 26, 36, 51, 136, 218, 172, 169, 97, 35, 20, 168, 235,

231, 234, 69,
153, 40, 38, 51, 144, 217, 188, 170, 40, 83, 36, 16, 184, 186,
171, 73, 67, 18, 153, 235, 155, 137, 115, 50, 130, 169, 205, 153,
9, 84, 35, 1, 201, 188, 187, 9, 83, 52, 2, 161, 187, 203,
42, 51, 53, 153, 217, 156, 154, 81, 36, 19, 169, 219, 156, 137,
82, 36, 3, 153, 220, 170, 154, 50, 53, 19, 0, 218, 154, 11,
50, 52, 160, 169, 191, 153, 56, 39, 35, 168, 202, 157, 153, 64,
52, 35, 168, 249, 171, 154, 48, 52, 36, 128, 176, 172, 186, 65,
35, 132, 139, 251, 137, 9, 68, 50, 161, 154, 175, 153, 24, 38,
51, 144, 170, 191, 169, 24, 36, 52, 128, 160, 187, 186, 73, 36,
35, 156, 217, 155, 137, 115, 50, 3, 187, 251, 154, 8, 99, 35,
131, 186, 220, 155, 138, 83, 66, 130, 128, 186, 171, 10, 53, 50,
192, 169, 174, 152, 64, 37, 18, 184, 202, 157, 152, 82, 51, 4,
169, 218, 187, 170, 66, 52, 4, 128, 169, 171, 139, 82, 51, 162,
156, 204, 138, 24, 54, 51, 177, 172, 189, 138, 64, 38, 35, 160,
203, 173, 170, 32, 68, 35, 128, 168, 172, 155, 64, 51, 4, 171,
234, 154, 137, 84, 35, 147, 187, 189, 155, 41, 71, 34, 146, 171,
189, 171, 26, 53, 52, 146, 144, 188, 169, 25, 22, 50, 170, 201,
157, 152, 66, 36, 19, 186, 235, 155, 9, 115, 35, 3, 171, 220,

247, 238, 66,
154, 40, 37, 66, 144, 152, 156, 169, 48, 20, 20, 155, 202, 171,
9, 84, 51, 131, 172, 219, 154, 25, 85, 34, 130, 171, 220, 170,
8, 67, 67, 146, 136, 203, 154, 25, 37, 65, 176, 185, 173, 137,
65, 21, 35, 186, 202, 157, 136, 98, 35, 18, 186, 235, 171, 137,
81, 35, 20, 153, 185, 155, 154, 54, 49, 179, 172, 219, 153, 56,
54, 65, 176, 170, 173, 137, 64, 37, 35, 184, 202, 173, 170, 64,
51, 52, 152, 184, 172, 154, 97, 18, 3, 187, 234, 154, 136, 69,
34, 146, 156, 203, 138, 24, 55, 49, 145, 171, 190, 170, 41, 37,
67, 145, 152, 187, 169, 89, 19, 67, 186, 218, 156, 136, 98, 19,
34, 187, 235, 139, 8, 115, 34, 2, 171, 235, 155, 137, 83, 50,
132, 137, 186, 154, 26, 38, 48, 193, 155, 188, 136, 104, 20, 34,
200, 170, 187, 136, 114, 20, 34, 185, 203, 188, 152, 96, 18, 35,
153, 192, 154, 169, 68, 16, 147, 157, 201, 137, 40, 54, 48, 178,
157, 187, 10, 64, 39, 33, 160, 202, 203, 154, 56, 37, 66, 144,
153, 186, 153, 81, 3, 35, 220, 169, 155, 129, 101, 1, 131, 172,
186, 138, 32, 55, 34, 163, 172, 204, 138, 9, 37, 65, 145, 152,
170, 152, 57, 7, 32, 201, 169, 155, 128, 115, 19, 18, 204, 185,
138, 0, 101, 17, 130, 186, 203, 155, 137, 115, 48, 131, 138, 185,

23, 255, 48,
152, 97, 129, 18, 173, 170, 138, 24, 70, 17, 147, 173, 186, 9,
32, 71, 32, 162, 187, 204, 153, 41, 36, 66, 162, 9, 171, 136,
73, 6, 32, 219, 169, 139, 0, 115, 132, 17, 218, 153, 10, 16,
84, 2, 2, 173, 201, 137, 137, 67, 33, 148, 138, 169, 129, 40,
23, 9, 225, 154, 154, 17, 80, 21, 41, 217, 153, 138, 2, 114,
2, 17, 203, 185, 12, 168, 83, 129, 35, 140, 168, 40, 129, 54,
138, 176, 159, 153, 32, 32, 39, 136, 193, 140, 153, 17, 65, 21,
24, 216, 154, 154, 128, 72, 132, 48, 201, 128, 25, 3, 99, 177,
9, 191, 152, 40, 18, 69, 144, 144, 174, 152, 32, 33, 54, 136,
194, 141, 169, 24, 24, 22, 25, 176, 10, 8, 51, 80, 149, 11,
236, 9, 25, 34, 97, 162, 136, 235, 137, 24, 35, 115, 144, 128,
188, 152, 25, 1, 53, 137, 161, 142, 128, 50, 34, 21, 172, 232,
139, 128, 51, 66, 132, 154, 250, 10, 8, 51, 81, 131, 138, 251,
137, 9, 2, 65, 161, 8, 188, 16, 65, 20, 50, 233, 169, 158,
8, 33, 35, 52, 186, 217, 157, 128, 66, 18, 21, 138, 201, 156,
136, 33, 48, 5, 10, 233, 25, 24, 51, 81, 178, 140, 205, 136,
16, 20, 66, 160, 153, 174, 136, 48, 51, 38, 168, 184, 174, 152,
32, 34, 37, 154, 192, 140, 0, 36, 49, 148, 171, 251, 11, 24,

44, 254, 45,
35, 37, 185, 201, 158, 0, 65, 33, 4, 169, 217, 155, 8, 34,
66, 132, 138, 218, 10, 17, 37, 49, 178, 157, 220, 8, 16, 20,
50, 176, 171, 206, 128, 49, 20, 67, 184, 185, 175, 8, 32, 34,
51, 186, 201, 143, 16, 49, 19, 5, 172, 201, 139, 0, 68, 33,
148, 155, 251, 9, 16, 51, 82, 161, 154, 189, 10, 56, 20, 67,
176, 170, 174, 24, 50, 21, 35, 218, 186, 173, 16, 82, 33, 3,
203, 217, 139, 32, 52, 51, 131, 189, 234, 138, 16, 51, 66, 162,
172, 219, 25, 65, 51, 50, 208, 172, 203, 25, 50, 37, 34, 232,
169, 187, 16, 99, 19, 19, 218, 185, 157, 24, 50, 50, 19, 189,
217, 139, 34, 53, 34, 163, 175, 201, 10, 33, 36, 34, 178, 173,
219, 8, 65, 35, 66, 184, 187, 190, 8, 50, 36, 50, 218, 186,
172, 33, 68, 19, 3, 220, 170, 156, 17, 83, 18, 147, 172, 219,
137, 48, 37, 34, 162, 173, 203, 10, 49, 37, 18, 193, 171, 188,
24, 68, 35, 34, 249, 170, 171, 16, 83, 35, 18, 235, 186, 170,
48, 69, 34, 1, 219, 186, 156, 33, 52, 34, 146, 174, 202, 9,
65, 36, 33, 176, 173, 203, 25, 66, 51, 34, 224, 171, 172, 24,
83, 35, 19, 233, 186, 171, 24, 53, 35, 18, 204, 187, 140, 48,
38, 34, 129, 189, 203, 137, 49, 53, 34, 177, 189, 203, 9, 66,

174, 0, 43,
51, 131, 204, 188, 155, 48, 38, 34, 129, 204, 186, 10, 82, 67,
33, 176, 204, 171, 10, 83, 36, 17, 184, 204, 155, 25, 68, 51,
2, 217, 203, 170, 24, 52, 36, 17, 203, 172, 155, 49, 54, 34,
129, 189, 203, 138, 49, 38, 18, 161, 188, 188, 9, 67, 37, 18,
160, 189, 187, 9, 83, 36, 33, 201, 187, 172, 16, 84, 34, 1,
202, 188, 154, 32, 84, 18, 129, 218, 187, 138, 65, 68, 18, 145,
188, 172, 138, 50, 53, 34, 160, 189, 172, 25, 82, 51, 18, 201,
204, 170, 24, 83, 51, 1, 217, 172, 155, 32, 53, 51, 1, 235,
203, 138, 32, 68, 18, 129, 219, 187, 137, 66, 68, 17, 144, 189,
170, 10, 67, 52, 18, 192, 188, 187, 24, 84, 51, 17, 201, 189,
170, 16, 52, 36, 1, 217, 187, 155, 48, 54, 20, 129, 219, 187,
138, 50, 69, 18, 144, 204, 170, 10, 82, 67, 17, 160, 189, 171,
25, 82, 36, 17, 200, 203, 170, 16, 68, 35, 1, 217, 172, 170,
32, 68, 19, 129, 234, 186, 138, 49, 69, 18, 128, 219, 187, 10,
65, 52, 19, 168, 189, 172, 25, 67, 52, 2, 184, 190, 186, 40,
83, 36, 1, 201, 172, 170, 32, 68, 51, 0, 219, 172, 154, 33,
68, 19, 128, 219, 187, 138, 66, 68, 18, 144, 204, 171, 10, 67,
52, 18, 184, 205, 170, 24, 67, 52, 2, 201, 188, 171, 40, 68,

60, 1, 40,
3, 160, 204, 187, 9, 52, 53, 2, 184, 174, 171, 24, 83, 51,
130, 201, 189, 154, 32, 68, 51, 0, 234, 187, 154, 48, 84, 19,
128, 219, 171, 138, 50, 54, 19, 160, 204, 172, 9, 50, 53, 2,
176, 204, 171, 25, 52, 53, 1, 185, 189, 171, 40, 68, 51, 1,
218, 188, 154, 33, 84, 34, 128, 218, 171, 139, 65, 83, 18, 128,
188, 188, 9, 66, 52, 18, 160, 205, 186, 8, 66, 52, 2, 184,
205, 154, 24, 67, 36, 1, 201, 203, 155, 32, 83, 20, 1, 202,
172, 154, 49, 68, 19, 145, 188, 188, 138, 65, 52, 19, 144, 205,
170, 26, 66, 52, 18, 184, 205, 170, 8, 67, 36, 2, 185, 189,
171, 40, 53, 52, 129, 202, 188, 155, 33, 68, 20, 129, 218, 186,
138, 49, 53, 35, 144, 220, 186, 10, 50, 54, 2, 160, 204, 171,
25, 67, 37, 2, 184, 204, 155, 8, 83, 51, 2, 202, 188, 171,
32, 69, 35, 129, 218, 203, 138, 32, 68, 34, 128, 219, 187, 138,
66, 68, 18, 160, 219, 171, 10, 82, 51, 19, 184, 205, 171, 25,
52, 37, 2, 185, 189, 155, 40, 83, 36, 1, 202, 203, 154, 32,
53, 35, 145, 219, 172, 154, 49, 53, 35, 160, 204, 187, 10, 82,
67, 19, 168, 204, 187, 8, 67, 52, 3, 200, 188, 171, 24, 68,
36, 130, 185, 189, 171, 32, 68, 51, 129, 218, 172, 154, 49, 99,

108, 0, 27,
17, 185, 188, 155, 24, 68, 51, 130, 233, 171, 155, 32, 53, 36,
145, 202, 172, 139, 49, 68, 34, 145, 188, 188, 10, 66, 67, 19,
160, 189, 187, 9, 83, 67, 2, 184, 189, 186, 40, 99, 51, 129,
185, 190, 154, 24, 53, 50, 129, 218, 187, 155, 50, 69, 34, 144,
202, 172, 138, 34, 52, 20, 160, 172, 187, 26, 66, 68, 129, 176,
187, 172, 25, 52, 51, 2, 185, 189, 156, 48, 51, 97, 129, 185,
155, 177, 48, 17, 34, 17, 155, 9, 0, 0, 0, 0,};

static int8_t  index = 0;	//willow add
static int32_t predsample = 0;

uint8_t ADPCM_Decode(uint8_t xcode)
{
  uint16_t step=0;
  int32_t diffq=0;
  
  step = StepSizeTable[index];

  /* 2. inverse code into diff */
  diffq = step>> 3;
  if (xcode&4)
  {
    diffq += step;
  }
  
  if (xcode&2)
  {
    diffq += step>>1;
  }
  
  if (xcode&1)
  {
    diffq += step>>2;
  }

  /* 3. add diff to predicted sample*/
  if (xcode&8)
  {
    predsample -= diffq;
  }
  else
  {
    predsample += diffq;
  }
  
  /* check for overflow*/
  if (predsample > 32767)
  {
    predsample = 32767;
  }
  else if (predsample < -32768)
  {
    predsample = -32768;
  }

  /* 4. find new quantizer step size */
  index += IndexTable [xcode];
  /* check for overflow*/
  if (index < 0)
  {
    index = 0;
  }
  else if (index > 88)
  {
    index = 88;
  }
  
  /* 6. return new speech sample*/
  return (uint8_t)((predsample/256)+128);
}

void pwm_init(void)
{
  P_SW2 = 0x80;
  PWM1_CCER1 = 0x00;
  PWM1_CCMR2 = 0x60;
  PWM1_CCER1 = 0x10;
  PWM1_CCR2H = 0x00;
  PWM1_CCR2L = 0x80;
  PWM1_ARRH  = 0x01;
  PWM1_ARRL  = 0x00;
  PWM1_ENO   = 0x04;
  PWM1_BKR   = 0x80;
  PWM1_CR1   = 0x01;
}

void PWM2_Interrupt(void) interrupt (27)
{
    PWM2_SR1 = 0x00;
    if(dac_read != dac_write)
    {
        PWM1_CCR2L = dac_buff1[dac_read++];
    }
    else
    {
        dac_read = 0;
        dac_write = 0;
        dac_sendflag = 0;
        PWM1_CCR2L = 0x80;  //������ֵ
        PWM2_CR1 = 0x00;    //ֹͣ����
        PWM2_IER = 0x00;
    }
}

uint8_t dac_send(void)
{
    static uint16_t i = 0;

    while((dac_write != (uint8_t)(dac_read-1)) && (dac_write != (uint8_t)(dac_read-2)))   //���л���ռ��������������
    {
        if((i % 255) == 0)    //������ͷ
        {
            int16_t *p = (int16_t *)&wav_buf[i];  //16λ��Ƶ����
            predsample = *p;
            i+=2;
            dac_buff1[dac_write] = (predsample/256)+128;  //ת��Ϊ8bit
            printf_byte(dac_buff1[dac_write]);            //���������Ƶ����
            dac_write++;

            index = wav_buf[i++];
        }
        else
        {
            dac_buff1[dac_write] = ADPCM_Decode(wav_buf[i]&0x0f);
            printf_byte(dac_buff1[dac_write]);
            dac_write++;
            dac_buff1[dac_write] = ADPCM_Decode(wav_buf[i]>>4);
            printf_byte(dac_buff1[dac_write]);
            dac_write++;
            i++;
            if(i == (uint16_t)sizeof(wav_buf))  //�������
            {
                i = 0;
                index = 0;
                predsample = 0;
                return 0;
            }
        }
    }

    if(dac_sendflag == 0)
    {
        PWM2_CNTRH = 0x00;
        PWM2_CNTRL = 0x00;

        PWM2_ARRH = 0x0A;
        PWM2_ARRL = 0xCD;

        PWM2_SR1 = 0x00;
        PWM2_IER = 0x01;
        PWM2_CR1 = 0x01;
        dac_sendflag = 1;
    }
    return 1;
}