#Subsetting data according to clusters
#Dividing germplasm panel accessions into four groups according to ADMIXTURE 

#Reading HapMap data file 
alldata <- read.table("HapMap.hmp.txt", header = T)

#Reading file containing details about accessions 
Names <- read.csv("Accesssions_Information.csv", header = T)

#Division into first cluster 
Cluster1 <- alldata[, c(1:11, 13,	16,	17,	18,	20,	84,	87,	96,	126,	160,	176,	178,	194,	200,	201,	44,	158,	
                        192,	204,	193,	15,	203,	143,	172,	76,	99,	40,	177,	152,	93,	94,	92,	48,	165,	74,	68,	95,	161,	
                        88,	209,	51,	45,	54,	53,	65,	196,	197,	175,	195,	42,	190,	59,	47,	49,	81,	208,	206,	174,	180,	19,	205,	
                        46,	121,	120,	91,	154,	144,	29,	98,	179,	184,	33,	214,	163,	41,	39,	89,	36,	32,	27,	14,	66,	90,	202)]
write.table(Cluster1, file = "Cluster1.txt", sep = "")
write.csv(Cluster1, file = "Cluster1.csv")

#Dividing names files as well
Names1 <- Names[c(2,	5,	6,	7,	9,	73,	76,	85,	115,	149,	165,	167,	183,	189,	190,	33,	147,	181,	193,	182,	4,	192,	
                      132,	161,	65,	88,	29,	166,	141,	82,	83,	81,	37,	154,	63,	57,	84,	150,	77,	198,	40,	34,	43,	42,	54,	185,	
                      186,	164,	184,	31,	179,	48,	36,	38,	70,	197,	195,	163,	169,	8,	194,	35,	110,	109,	80,	143,	133,	
                      18,	87,	168,	173,	22,	203,	152,	30,	28,	78,	25,	21,	16,	3,	55,	79,	191),]
write.csv(Names1, file = "Accessions_Cluster1.csv")


#Second Cluster 
Cluster2 <- alldata[, c(1:11, 104,	111,	115,	116,	117,	124,	125,	127,	166,	215,	216,	188,	187,	82,	173,	78,	123,	61,	
                        106,	63,	105,	56,	102,	103,	186,	62,	64,	52,	83,	162,	85,	58,	55,	57,	60,	171 )]
write.csv(Cluster2, file = "Cluster2.csv")
Names2 <- Names[c(93,	100,	104,	105,	106,	113,	114,	116,	155,	204,	205,	177,	176,	71,	162,	67,	112,	50,	95,	52,	94,	
                  45,	91,	92,	175,	51,	53,	41,	72,	151,	74,	47,	44,	46,	49,	160),]
write.csv(Names2, file = "Accessions_Cluster2.csv")

#Third Cluster 
Cluster3 <- alldata[, c(1:11, 77,	80,	107,	114,	128,	129,	130,	131,	132,	134,	135,	138,	139,	140,	142,	145,	146,	147,
                        148,	149,	150,	151,	153,	168,	169,	170,	191,	79,	141,	157,	189,	155,	136,	118,	182,	156,	159,
                        133,	113,	112,	119,	109,	97,	108,	167,	183,	198,	122,	213,	211,	110,	207,	210,	137 )]
write.csv(Cluster3, file = "Cluster3.csv")
Names3 <- Names[c(66,	69,	96,	103,	117,	118,	119,	120,	121,	123,	124,	127,	128,	129,	131,	134,	135,	136,	137,	138,	
                  139,	140,	142,	157,	158,	159,	180,	68,	130,	146,	178,	144,	125,	107,	171,	145,	148,	122,	102,	
                  101,	108,	98,	86,	97,	156,	172,	187,	111,	202,	200,	99,	196,	199,	126),]
write.csv(Names3, file = "Accessions_Cluster3.csv")

#Fourth Cluster 
Cluster4 <- alldata[, c(1:11, 12,	21,	22,	25,	26,	28,	30,	34,	38,	50,	69,	70,	72,	73,	86,	100,	43,	67,	199,	75,	71,	35,	101,	185,	23,	24,	31,	37,	212,	217,	181,	164)]
write.csv(Cluster4, file = "Cluster4.csv")
Names4 <- Names[c(1,	10,	11,	14,	15,	17,	19,	23,	27,	39,	58,	59,	61,	62,	75,	89,	32,	56,	188,	64,	60,	24,	90,	174,	12,	13,	20,	26,	201,	206,	170,	153),]
write.csv(Names4, file = "Accessions_Cluster4.csv")
