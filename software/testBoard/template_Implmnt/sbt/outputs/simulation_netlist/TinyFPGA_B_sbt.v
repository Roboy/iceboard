// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 12 2017 08:25:46

// File Generated:     Jan 30 2020 23:28:46

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "TinyFPGA_B" view "INTERFACE"

module TinyFPGA_B (
    USBPU,
    TX,
    SDA,
    SCL,
    RX,
    NEOPXL,
    LED,
    INLC,
    INLB,
    INLA,
    INHC,
    INHB,
    INHA,
    HALL3,
    HALL2,
    HALL1,
    FAULT_N,
    ENCODER1_B,
    ENCODER1_A,
    ENCODER0_B,
    ENCODER0_A,
    DE,
    CS_MISO,
    CS_CLK,
    CS,
    CLK);

    output USBPU;
    output TX;
    inout SDA;
    inout SCL;
    input RX;
    output NEOPXL;
    output LED;
    output INLC;
    output INLB;
    output INLA;
    output INHC;
    output INHB;
    output INHA;
    input HALL3;
    input HALL2;
    input HALL1;
    input FAULT_N;
    input ENCODER1_B;
    input ENCODER1_A;
    input ENCODER0_B;
    input ENCODER0_A;
    output DE;
    input CS_MISO;
    output CS_CLK;
    output CS;
    input CLK;

    wire N__6680;
    wire N__6679;
    wire N__6678;
    wire N__6671;
    wire N__6670;
    wire N__6669;
    wire N__6662;
    wire N__6661;
    wire N__6660;
    wire N__6653;
    wire N__6652;
    wire N__6651;
    wire N__6644;
    wire N__6643;
    wire N__6642;
    wire N__6635;
    wire N__6634;
    wire N__6633;
    wire N__6626;
    wire N__6625;
    wire N__6624;
    wire N__6617;
    wire N__6616;
    wire N__6615;
    wire N__6608;
    wire N__6607;
    wire N__6606;
    wire N__6599;
    wire N__6598;
    wire N__6597;
    wire N__6590;
    wire N__6589;
    wire N__6588;
    wire N__6581;
    wire N__6580;
    wire N__6579;
    wire N__6572;
    wire N__6571;
    wire N__6570;
    wire N__6563;
    wire N__6562;
    wire N__6561;
    wire N__6554;
    wire N__6553;
    wire N__6552;
    wire N__6545;
    wire N__6544;
    wire N__6543;
    wire N__6526;
    wire N__6523;
    wire N__6520;
    wire N__6517;
    wire N__6514;
    wire N__6513;
    wire N__6512;
    wire N__6509;
    wire N__6506;
    wire N__6503;
    wire N__6500;
    wire N__6497;
    wire N__6494;
    wire N__6487;
    wire N__6484;
    wire N__6481;
    wire N__6478;
    wire N__6475;
    wire N__6472;
    wire N__6469;
    wire N__6466;
    wire N__6463;
    wire N__6460;
    wire N__6459;
    wire N__6456;
    wire N__6453;
    wire N__6450;
    wire N__6449;
    wire N__6448;
    wire N__6447;
    wire N__6446;
    wire N__6445;
    wire N__6444;
    wire N__6441;
    wire N__6438;
    wire N__6437;
    wire N__6434;
    wire N__6431;
    wire N__6430;
    wire N__6429;
    wire N__6428;
    wire N__6423;
    wire N__6422;
    wire N__6421;
    wire N__6420;
    wire N__6419;
    wire N__6418;
    wire N__6417;
    wire N__6414;
    wire N__6411;
    wire N__6410;
    wire N__6409;
    wire N__6408;
    wire N__6405;
    wire N__6402;
    wire N__6399;
    wire N__6394;
    wire N__6391;
    wire N__6386;
    wire N__6383;
    wire N__6376;
    wire N__6371;
    wire N__6368;
    wire N__6361;
    wire N__6356;
    wire N__6331;
    wire N__6330;
    wire N__6329;
    wire N__6328;
    wire N__6327;
    wire N__6324;
    wire N__6321;
    wire N__6320;
    wire N__6319;
    wire N__6318;
    wire N__6317;
    wire N__6316;
    wire N__6313;
    wire N__6312;
    wire N__6309;
    wire N__6306;
    wire N__6305;
    wire N__6302;
    wire N__6299;
    wire N__6298;
    wire N__6297;
    wire N__6292;
    wire N__6285;
    wire N__6282;
    wire N__6281;
    wire N__6280;
    wire N__6277;
    wire N__6274;
    wire N__6271;
    wire N__6268;
    wire N__6267;
    wire N__6264;
    wire N__6261;
    wire N__6256;
    wire N__6255;
    wire N__6250;
    wire N__6249;
    wire N__6248;
    wire N__6245;
    wire N__6242;
    wire N__6239;
    wire N__6230;
    wire N__6227;
    wire N__6220;
    wire N__6217;
    wire N__6214;
    wire N__6209;
    wire N__6190;
    wire N__6189;
    wire N__6188;
    wire N__6185;
    wire N__6184;
    wire N__6181;
    wire N__6180;
    wire N__6179;
    wire N__6178;
    wire N__6175;
    wire N__6174;
    wire N__6173;
    wire N__6172;
    wire N__6171;
    wire N__6170;
    wire N__6167;
    wire N__6164;
    wire N__6161;
    wire N__6158;
    wire N__6157;
    wire N__6156;
    wire N__6155;
    wire N__6154;
    wire N__6153;
    wire N__6150;
    wire N__6141;
    wire N__6136;
    wire N__6135;
    wire N__6134;
    wire N__6131;
    wire N__6126;
    wire N__6123;
    wire N__6120;
    wire N__6117;
    wire N__6112;
    wire N__6107;
    wire N__6104;
    wire N__6099;
    wire N__6092;
    wire N__6073;
    wire N__6072;
    wire N__6071;
    wire N__6070;
    wire N__6069;
    wire N__6068;
    wire N__6067;
    wire N__6064;
    wire N__6061;
    wire N__6058;
    wire N__6057;
    wire N__6056;
    wire N__6055;
    wire N__6054;
    wire N__6051;
    wire N__6046;
    wire N__6043;
    wire N__6042;
    wire N__6041;
    wire N__6040;
    wire N__6039;
    wire N__6038;
    wire N__6037;
    wire N__6036;
    wire N__6033;
    wire N__6030;
    wire N__6027;
    wire N__6022;
    wire N__6017;
    wire N__6012;
    wire N__6011;
    wire N__6010;
    wire N__6009;
    wire N__6008;
    wire N__6005;
    wire N__6000;
    wire N__5995;
    wire N__5988;
    wire N__5985;
    wire N__5974;
    wire N__5971;
    wire N__5964;
    wire N__5947;
    wire N__5946;
    wire N__5943;
    wire N__5942;
    wire N__5941;
    wire N__5940;
    wire N__5935;
    wire N__5932;
    wire N__5929;
    wire N__5926;
    wire N__5925;
    wire N__5920;
    wire N__5915;
    wire N__5912;
    wire N__5911;
    wire N__5910;
    wire N__5909;
    wire N__5906;
    wire N__5903;
    wire N__5900;
    wire N__5897;
    wire N__5892;
    wire N__5881;
    wire N__5880;
    wire N__5877;
    wire N__5872;
    wire N__5869;
    wire N__5868;
    wire N__5867;
    wire N__5864;
    wire N__5861;
    wire N__5858;
    wire N__5851;
    wire N__5850;
    wire N__5849;
    wire N__5848;
    wire N__5847;
    wire N__5846;
    wire N__5845;
    wire N__5844;
    wire N__5843;
    wire N__5842;
    wire N__5841;
    wire N__5840;
    wire N__5839;
    wire N__5838;
    wire N__5837;
    wire N__5836;
    wire N__5835;
    wire N__5800;
    wire N__5797;
    wire N__5794;
    wire N__5791;
    wire N__5788;
    wire N__5785;
    wire N__5782;
    wire N__5779;
    wire N__5776;
    wire N__5775;
    wire N__5772;
    wire N__5771;
    wire N__5768;
    wire N__5767;
    wire N__5766;
    wire N__5765;
    wire N__5764;
    wire N__5761;
    wire N__5758;
    wire N__5757;
    wire N__5756;
    wire N__5753;
    wire N__5750;
    wire N__5749;
    wire N__5746;
    wire N__5743;
    wire N__5742;
    wire N__5741;
    wire N__5738;
    wire N__5737;
    wire N__5732;
    wire N__5729;
    wire N__5728;
    wire N__5725;
    wire N__5720;
    wire N__5717;
    wire N__5712;
    wire N__5709;
    wire N__5706;
    wire N__5703;
    wire N__5700;
    wire N__5695;
    wire N__5692;
    wire N__5689;
    wire N__5686;
    wire N__5683;
    wire N__5680;
    wire N__5677;
    wire N__5666;
    wire N__5665;
    wire N__5662;
    wire N__5655;
    wire N__5650;
    wire N__5647;
    wire N__5638;
    wire N__5635;
    wire N__5632;
    wire N__5629;
    wire N__5628;
    wire N__5625;
    wire N__5622;
    wire N__5619;
    wire N__5616;
    wire N__5611;
    wire N__5608;
    wire N__5605;
    wire N__5602;
    wire N__5599;
    wire N__5596;
    wire N__5593;
    wire N__5590;
    wire N__5589;
    wire N__5586;
    wire N__5583;
    wire N__5578;
    wire N__5575;
    wire N__5574;
    wire N__5571;
    wire N__5568;
    wire N__5565;
    wire N__5560;
    wire N__5557;
    wire N__5556;
    wire N__5553;
    wire N__5550;
    wire N__5545;
    wire N__5542;
    wire N__5539;
    wire N__5536;
    wire N__5535;
    wire N__5532;
    wire N__5529;
    wire N__5526;
    wire N__5521;
    wire N__5518;
    wire N__5517;
    wire N__5516;
    wire N__5513;
    wire N__5510;
    wire N__5509;
    wire N__5506;
    wire N__5501;
    wire N__5498;
    wire N__5493;
    wire N__5490;
    wire N__5489;
    wire N__5486;
    wire N__5483;
    wire N__5480;
    wire N__5473;
    wire N__5472;
    wire N__5471;
    wire N__5468;
    wire N__5465;
    wire N__5462;
    wire N__5459;
    wire N__5456;
    wire N__5455;
    wire N__5452;
    wire N__5447;
    wire N__5444;
    wire N__5441;
    wire N__5438;
    wire N__5435;
    wire N__5428;
    wire N__5425;
    wire N__5422;
    wire N__5419;
    wire N__5416;
    wire N__5413;
    wire N__5410;
    wire N__5407;
    wire N__5404;
    wire N__5401;
    wire N__5400;
    wire N__5397;
    wire N__5394;
    wire N__5389;
    wire N__5386;
    wire N__5383;
    wire N__5380;
    wire N__5377;
    wire N__5374;
    wire N__5371;
    wire N__5368;
    wire N__5365;
    wire N__5362;
    wire N__5361;
    wire N__5358;
    wire N__5355;
    wire N__5350;
    wire N__5347;
    wire N__5344;
    wire N__5341;
    wire N__5338;
    wire N__5337;
    wire N__5334;
    wire N__5331;
    wire N__5326;
    wire N__5323;
    wire N__5322;
    wire N__5319;
    wire N__5316;
    wire N__5311;
    wire N__5308;
    wire N__5307;
    wire N__5304;
    wire N__5301;
    wire N__5296;
    wire N__5293;
    wire N__5292;
    wire N__5289;
    wire N__5286;
    wire N__5281;
    wire N__5278;
    wire N__5277;
    wire N__5274;
    wire N__5271;
    wire N__5268;
    wire N__5263;
    wire N__5260;
    wire N__5259;
    wire N__5256;
    wire N__5253;
    wire N__5250;
    wire N__5245;
    wire N__5242;
    wire N__5241;
    wire N__5238;
    wire N__5235;
    wire N__5232;
    wire N__5227;
    wire N__5224;
    wire N__5223;
    wire N__5220;
    wire N__5217;
    wire N__5212;
    wire N__5209;
    wire N__5208;
    wire N__5205;
    wire N__5202;
    wire N__5197;
    wire N__5194;
    wire N__5193;
    wire N__5190;
    wire N__5187;
    wire N__5182;
    wire N__5179;
    wire N__5178;
    wire N__5175;
    wire N__5172;
    wire N__5167;
    wire N__5164;
    wire N__5163;
    wire N__5160;
    wire N__5157;
    wire N__5152;
    wire N__5149;
    wire N__5148;
    wire N__5145;
    wire N__5142;
    wire N__5139;
    wire N__5134;
    wire N__5131;
    wire N__5130;
    wire N__5127;
    wire N__5124;
    wire N__5119;
    wire N__5116;
    wire N__5115;
    wire N__5112;
    wire N__5109;
    wire N__5104;
    wire N__5101;
    wire N__5100;
    wire N__5097;
    wire N__5094;
    wire N__5089;
    wire N__5086;
    wire N__5085;
    wire N__5082;
    wire N__5079;
    wire N__5074;
    wire N__5071;
    wire N__5070;
    wire N__5067;
    wire N__5064;
    wire N__5061;
    wire N__5056;
    wire N__5053;
    wire N__5052;
    wire N__5049;
    wire N__5046;
    wire N__5043;
    wire N__5038;
    wire N__5035;
    wire N__5034;
    wire N__5031;
    wire N__5028;
    wire N__5025;
    wire N__5020;
    wire N__5017;
    wire N__5016;
    wire N__5013;
    wire N__5010;
    wire N__5005;
    wire N__5002;
    wire N__5001;
    wire N__4998;
    wire N__4995;
    wire N__4990;
    wire N__4987;
    wire N__4986;
    wire N__4983;
    wire N__4980;
    wire N__4975;
    wire N__4972;
    wire N__4971;
    wire N__4968;
    wire N__4965;
    wire N__4960;
    wire N__4957;
    wire N__4956;
    wire N__4953;
    wire N__4950;
    wire N__4945;
    wire N__4942;
    wire N__4939;
    wire N__4936;
    wire N__4933;
    wire N__4930;
    wire N__4927;
    wire N__4924;
    wire N__4921;
    wire N__4918;
    wire N__4917;
    wire N__4916;
    wire N__4915;
    wire N__4914;
    wire N__4911;
    wire N__4910;
    wire N__4907;
    wire N__4900;
    wire N__4897;
    wire N__4894;
    wire N__4885;
    wire N__4884;
    wire N__4881;
    wire N__4878;
    wire N__4877;
    wire N__4876;
    wire N__4875;
    wire N__4872;
    wire N__4869;
    wire N__4866;
    wire N__4863;
    wire N__4860;
    wire N__4853;
    wire N__4846;
    wire N__4845;
    wire N__4844;
    wire N__4841;
    wire N__4840;
    wire N__4837;
    wire N__4836;
    wire N__4835;
    wire N__4832;
    wire N__4829;
    wire N__4822;
    wire N__4819;
    wire N__4816;
    wire N__4807;
    wire N__4804;
    wire N__4801;
    wire N__4798;
    wire N__4797;
    wire N__4794;
    wire N__4791;
    wire N__4786;
    wire N__4785;
    wire N__4784;
    wire N__4781;
    wire N__4776;
    wire N__4771;
    wire N__4770;
    wire N__4767;
    wire N__4764;
    wire N__4761;
    wire N__4758;
    wire N__4753;
    wire N__4752;
    wire N__4749;
    wire N__4746;
    wire N__4741;
    wire N__4738;
    wire N__4737;
    wire N__4734;
    wire N__4731;
    wire N__4726;
    wire N__4723;
    wire N__4722;
    wire N__4719;
    wire N__4716;
    wire N__4713;
    wire N__4708;
    wire N__4705;
    wire N__4702;
    wire N__4701;
    wire N__4698;
    wire N__4695;
    wire N__4690;
    wire N__4689;
    wire N__4684;
    wire N__4681;
    wire N__4678;
    wire N__4677;
    wire N__4672;
    wire N__4669;
    wire N__4666;
    wire N__4665;
    wire N__4664;
    wire N__4663;
    wire N__4660;
    wire N__4659;
    wire N__4658;
    wire N__4657;
    wire N__4656;
    wire N__4653;
    wire N__4644;
    wire N__4643;
    wire N__4640;
    wire N__4639;
    wire N__4636;
    wire N__4635;
    wire N__4632;
    wire N__4631;
    wire N__4626;
    wire N__4623;
    wire N__4620;
    wire N__4619;
    wire N__4616;
    wire N__4613;
    wire N__4608;
    wire N__4605;
    wire N__4598;
    wire N__4593;
    wire N__4586;
    wire N__4581;
    wire N__4578;
    wire N__4575;
    wire N__4572;
    wire N__4569;
    wire N__4566;
    wire N__4563;
    wire N__4558;
    wire N__4555;
    wire N__4554;
    wire N__4553;
    wire N__4550;
    wire N__4547;
    wire N__4544;
    wire N__4543;
    wire N__4540;
    wire N__4535;
    wire N__4534;
    wire N__4531;
    wire N__4530;
    wire N__4527;
    wire N__4524;
    wire N__4521;
    wire N__4518;
    wire N__4515;
    wire N__4504;
    wire N__4501;
    wire N__4498;
    wire N__4495;
    wire N__4492;
    wire N__4489;
    wire N__4486;
    wire N__4483;
    wire N__4480;
    wire N__4477;
    wire N__4474;
    wire N__4473;
    wire N__4472;
    wire N__4471;
    wire N__4468;
    wire N__4467;
    wire N__4466;
    wire N__4463;
    wire N__4462;
    wire N__4459;
    wire N__4458;
    wire N__4455;
    wire N__4452;
    wire N__4437;
    wire N__4432;
    wire N__4429;
    wire N__4426;
    wire N__4425;
    wire N__4424;
    wire N__4421;
    wire N__4416;
    wire N__4411;
    wire N__4408;
    wire N__4405;
    wire N__4402;
    wire N__4399;
    wire N__4396;
    wire N__4395;
    wire N__4392;
    wire N__4389;
    wire N__4386;
    wire N__4383;
    wire N__4378;
    wire N__4377;
    wire N__4374;
    wire N__4371;
    wire N__4368;
    wire N__4365;
    wire N__4360;
    wire N__4359;
    wire N__4356;
    wire N__4353;
    wire N__4348;
    wire N__4347;
    wire N__4344;
    wire N__4341;
    wire N__4336;
    wire N__4335;
    wire N__4334;
    wire N__4331;
    wire N__4328;
    wire N__4325;
    wire N__4322;
    wire N__4315;
    wire N__4312;
    wire N__4311;
    wire N__4310;
    wire N__4307;
    wire N__4302;
    wire N__4297;
    wire N__4296;
    wire N__4291;
    wire N__4288;
    wire N__4285;
    wire N__4282;
    wire N__4279;
    wire N__4276;
    wire N__4273;
    wire N__4270;
    wire N__4267;
    wire N__4264;
    wire N__4261;
    wire N__4258;
    wire N__4257;
    wire N__4254;
    wire N__4251;
    wire N__4248;
    wire N__4243;
    wire N__4240;
    wire N__4237;
    wire N__4234;
    wire N__4233;
    wire N__4228;
    wire N__4225;
    wire N__4224;
    wire N__4223;
    wire N__4222;
    wire N__4219;
    wire N__4214;
    wire N__4211;
    wire N__4206;
    wire N__4201;
    wire N__4200;
    wire N__4197;
    wire N__4192;
    wire N__4189;
    wire N__4186;
    wire N__4183;
    wire N__4180;
    wire N__4179;
    wire N__4174;
    wire N__4171;
    wire N__4168;
    wire N__4165;
    wire N__4164;
    wire N__4163;
    wire N__4162;
    wire N__4159;
    wire N__4154;
    wire N__4151;
    wire N__4144;
    wire N__4141;
    wire N__4140;
    wire N__4135;
    wire N__4132;
    wire N__4129;
    wire N__4126;
    wire N__4123;
    wire N__4120;
    wire N__4117;
    wire N__4116;
    wire N__4113;
    wire N__4110;
    wire N__4105;
    wire N__4102;
    wire N__4099;
    wire N__4098;
    wire N__4095;
    wire N__4092;
    wire N__4089;
    wire N__4084;
    wire N__4081;
    wire N__4080;
    wire N__4077;
    wire N__4074;
    wire N__4071;
    wire N__4068;
    wire N__4063;
    wire N__4060;
    wire N__4059;
    wire N__4056;
    wire N__4053;
    wire N__4050;
    wire N__4045;
    wire N__4042;
    wire N__4041;
    wire N__4038;
    wire N__4035;
    wire N__4032;
    wire N__4029;
    wire N__4024;
    wire N__4021;
    wire N__4018;
    wire N__4015;
    wire N__4014;
    wire N__4009;
    wire N__4006;
    wire N__4003;
    wire N__4000;
    wire N__3997;
    wire N__3994;
    wire N__3991;
    wire N__3990;
    wire N__3987;
    wire N__3984;
    wire N__3979;
    wire N__3978;
    wire N__3975;
    wire N__3974;
    wire N__3973;
    wire N__3972;
    wire N__3971;
    wire N__3962;
    wire N__3957;
    wire N__3952;
    wire N__3949;
    wire N__3948;
    wire N__3943;
    wire N__3940;
    wire N__3937;
    wire N__3934;
    wire N__3931;
    wire N__3928;
    wire N__3925;
    wire N__3924;
    wire N__3921;
    wire N__3918;
    wire N__3913;
    wire N__3912;
    wire N__3909;
    wire N__3906;
    wire N__3901;
    wire N__3898;
    wire N__3897;
    wire N__3894;
    wire N__3891;
    wire N__3888;
    wire N__3883;
    wire N__3882;
    wire N__3879;
    wire N__3876;
    wire N__3871;
    wire N__3870;
    wire N__3867;
    wire N__3864;
    wire N__3859;
    wire N__3856;
    wire N__3855;
    wire N__3852;
    wire N__3849;
    wire N__3844;
    wire N__3841;
    wire N__3838;
    wire N__3835;
    wire N__3832;
    wire N__3831;
    wire N__3830;
    wire N__3829;
    wire N__3828;
    wire N__3825;
    wire N__3820;
    wire N__3817;
    wire N__3814;
    wire N__3805;
    wire N__3802;
    wire N__3801;
    wire N__3800;
    wire N__3797;
    wire N__3794;
    wire N__3791;
    wire N__3784;
    wire N__3781;
    wire N__3778;
    wire N__3777;
    wire N__3776;
    wire N__3775;
    wire N__3774;
    wire N__3773;
    wire N__3772;
    wire N__3771;
    wire N__3768;
    wire N__3763;
    wire N__3760;
    wire N__3753;
    wire N__3750;
    wire N__3739;
    wire N__3738;
    wire N__3737;
    wire N__3736;
    wire N__3735;
    wire N__3732;
    wire N__3731;
    wire N__3728;
    wire N__3725;
    wire N__3724;
    wire N__3721;
    wire N__3720;
    wire N__3719;
    wire N__3718;
    wire N__3715;
    wire N__3712;
    wire N__3707;
    wire N__3702;
    wire N__3697;
    wire N__3694;
    wire N__3691;
    wire N__3676;
    wire N__3675;
    wire N__3670;
    wire N__3667;
    wire N__3664;
    wire N__3661;
    wire N__3658;
    wire N__3657;
    wire N__3656;
    wire N__3651;
    wire N__3648;
    wire N__3645;
    wire N__3642;
    wire N__3637;
    wire N__3636;
    wire N__3633;
    wire N__3632;
    wire N__3631;
    wire N__3630;
    wire N__3629;
    wire N__3622;
    wire N__3615;
    wire N__3610;
    wire N__3607;
    wire N__3604;
    wire N__3603;
    wire N__3600;
    wire N__3595;
    wire N__3592;
    wire N__3591;
    wire N__3588;
    wire N__3585;
    wire N__3582;
    wire N__3577;
    wire N__3576;
    wire N__3571;
    wire N__3568;
    wire N__3565;
    wire N__3564;
    wire N__3561;
    wire N__3558;
    wire N__3553;
    wire N__3550;
    wire N__3547;
    wire N__3544;
    wire N__3541;
    wire N__3538;
    wire N__3535;
    wire N__3532;
    wire N__3529;
    wire N__3528;
    wire N__3523;
    wire N__3520;
    wire N__3517;
    wire N__3514;
    wire N__3511;
    wire N__3508;
    wire N__3505;
    wire N__3502;
    wire N__3499;
    wire N__3496;
    wire N__3493;
    wire N__3492;
    wire N__3489;
    wire N__3486;
    wire N__3481;
    wire N__3478;
    wire N__3477;
    wire N__3474;
    wire N__3471;
    wire N__3466;
    wire N__3465;
    wire N__3462;
    wire N__3459;
    wire N__3456;
    wire N__3453;
    wire N__3448;
    wire N__3445;
    wire N__3444;
    wire N__3441;
    wire N__3438;
    wire N__3433;
    wire N__3430;
    wire N__3427;
    wire N__3424;
    wire N__3421;
    wire N__3418;
    wire N__3415;
    wire N__3412;
    wire N__3409;
    wire N__3408;
    wire N__3407;
    wire N__3406;
    wire N__3405;
    wire N__3404;
    wire N__3403;
    wire N__3402;
    wire N__3401;
    wire N__3398;
    wire N__3397;
    wire N__3394;
    wire N__3393;
    wire N__3390;
    wire N__3389;
    wire N__3386;
    wire N__3385;
    wire N__3382;
    wire N__3381;
    wire N__3378;
    wire N__3377;
    wire N__3374;
    wire N__3373;
    wire N__3356;
    wire N__3339;
    wire N__3334;
    wire N__3331;
    wire N__3328;
    wire N__3325;
    wire N__3322;
    wire N__3319;
    wire N__3316;
    wire N__3315;
    wire N__3314;
    wire N__3309;
    wire N__3306;
    wire N__3301;
    wire N__3298;
    wire N__3295;
    wire N__3294;
    wire N__3291;
    wire N__3288;
    wire N__3283;
    wire N__3282;
    wire N__3279;
    wire N__3276;
    wire N__3271;
    wire N__3268;
    wire N__3267;
    wire N__3264;
    wire N__3261;
    wire N__3256;
    wire N__3255;
    wire N__3252;
    wire N__3249;
    wire N__3246;
    wire N__3241;
    wire N__3240;
    wire N__3237;
    wire N__3234;
    wire N__3229;
    wire N__3226;
    wire N__3223;
    wire N__3222;
    wire N__3219;
    wire N__3216;
    wire N__3213;
    wire N__3210;
    wire N__3205;
    wire N__3204;
    wire N__3201;
    wire N__3198;
    wire N__3193;
    wire N__3192;
    wire N__3189;
    wire N__3186;
    wire N__3181;
    wire N__3180;
    wire N__3177;
    wire N__3174;
    wire N__3171;
    wire N__3168;
    wire N__3163;
    wire N__3160;
    wire N__3159;
    wire N__3156;
    wire N__3153;
    wire N__3148;
    wire N__3145;
    wire N__3144;
    wire N__3141;
    wire N__3138;
    wire N__3133;
    wire N__3132;
    wire N__3129;
    wire N__3126;
    wire N__3121;
    wire N__3120;
    wire N__3117;
    wire N__3114;
    wire N__3111;
    wire N__3106;
    wire N__3105;
    wire N__3102;
    wire N__3099;
    wire N__3094;
    wire N__3093;
    wire N__3090;
    wire N__3087;
    wire N__3084;
    wire N__3081;
    wire N__3080;
    wire N__3077;
    wire N__3074;
    wire N__3071;
    wire N__3064;
    wire N__3061;
    wire N__3058;
    wire N__3055;
    wire N__3052;
    wire N__3049;
    wire N__3046;
    wire N__3043;
    wire N__3040;
    wire N__3037;
    wire N__3034;
    wire N__3031;
    wire N__3028;
    wire N__3025;
    wire N__3022;
    wire N__3019;
    wire N__3018;
    wire N__3017;
    wire N__3012;
    wire N__3009;
    wire N__3004;
    wire N__3001;
    wire N__3000;
    wire N__2999;
    wire N__2994;
    wire N__2991;
    wire N__2986;
    wire N__2983;
    wire N__2982;
    wire N__2979;
    wire N__2976;
    wire N__2975;
    wire N__2970;
    wire N__2967;
    wire N__2962;
    wire N__2959;
    wire N__2956;
    wire N__2953;
    wire N__2950;
    wire N__2947;
    wire N__2944;
    wire N__2941;
    wire N__2938;
    wire N__2935;
    wire N__2932;
    wire N__2929;
    wire N__2926;
    wire N__2923;
    wire N__2920;
    wire N__2917;
    wire N__2914;
    wire N__2911;
    wire N__2908;
    wire N__2905;
    wire N__2902;
    wire N__2899;
    wire N__2896;
    wire N__2893;
    wire N__2890;
    wire N__2887;
    wire N__2884;
    wire N__2881;
    wire N__2878;
    wire N__2875;
    wire N__2872;
    wire N__2869;
    wire N__2866;
    wire N__2863;
    wire N__2860;
    wire N__2857;
    wire N__2854;
    wire N__2851;
    wire N__2848;
    wire N__2845;
    wire N__2842;
    wire N__2839;
    wire N__2836;
    wire N__2833;
    wire N__2830;
    wire N__2827;
    wire N__2824;
    wire N__2821;
    wire N__2818;
    wire N__2815;
    wire N__2812;
    wire N__2809;
    wire N__2806;
    wire N__2803;
    wire N__2800;
    wire N__2797;
    wire N__2794;
    wire N__2791;
    wire N__2788;
    wire N__2785;
    wire N__2782;
    wire N__2779;
    wire N__2776;
    wire N__2773;
    wire N__2770;
    wire N__2767;
    wire N__2764;
    wire N__2761;
    wire N__2758;
    wire N__2755;
    wire N__2752;
    wire N__2749;
    wire N__2746;
    wire N__2743;
    wire N__2740;
    wire N__2737;
    wire N__2734;
    wire N__2731;
    wire N__2728;
    wire N__2725;
    wire CLK_pad_gb_input;
    wire VCCG0;
    wire GNDG0;
    wire n2955_cascade_;
    wire LED_c;
    wire n2954;
    wire bfn_19_13_0_;
    wire \eeprom.n2671 ;
    wire \eeprom.n2672 ;
    wire \eeprom.n2673 ;
    wire \eeprom.n2674 ;
    wire \eeprom.n2675 ;
    wire \eeprom.n2676 ;
    wire \eeprom.n2677 ;
    wire \eeprom.n2678 ;
    wire bfn_19_14_0_;
    wire \eeprom.n2679 ;
    wire \eeprom.n2680 ;
    wire \eeprom.n2681 ;
    wire \eeprom.n2682 ;
    wire \eeprom.n2683 ;
    wire \eeprom.n2684 ;
    wire \eeprom.n2685 ;
    wire n26;
    wire bfn_19_17_0_;
    wire n25_adj_407;
    wire n2691;
    wire n24_adj_406;
    wire n2692;
    wire n23_adj_405;
    wire n2693;
    wire n22_adj_404;
    wire n2694;
    wire n21;
    wire n2695;
    wire n20_adj_403;
    wire n2696;
    wire n19;
    wire n2697;
    wire n2698;
    wire n18_adj_402;
    wire bfn_19_18_0_;
    wire n17;
    wire n2699;
    wire n16;
    wire n2700;
    wire n15_adj_401;
    wire n2701;
    wire n14_adj_400;
    wire n2702;
    wire n13_adj_399;
    wire n2703;
    wire n12;
    wire n2704;
    wire n11;
    wire n2705;
    wire n2706;
    wire n10_adj_398;
    wire bfn_19_19_0_;
    wire n9;
    wire n2707;
    wire n8_adj_397;
    wire n2708;
    wire n7;
    wire n2709;
    wire n6_adj_396;
    wire n2710;
    wire blink_counter_21;
    wire n2711;
    wire blink_counter_22;
    wire n2712;
    wire blink_counter_23;
    wire n2713;
    wire n2714;
    wire blink_counter_24;
    wire bfn_19_20_0_;
    wire n2715;
    wire blink_counter_25;
    wire \eeprom.delay_counter_7 ;
    wire \eeprom.delay_counter_2 ;
    wire \eeprom.delay_counter_5 ;
    wire \eeprom.delay_counter_11 ;
    wire \eeprom.n1934 ;
    wire \eeprom.delay_counter_13 ;
    wire \eeprom.delay_counter_9 ;
    wire \eeprom.delay_counter_0 ;
    wire \eeprom.delay_counter_4 ;
    wire \eeprom.delay_counter_14 ;
    wire \eeprom.delay_counter_3 ;
    wire \eeprom.delay_counter_1 ;
    wire \eeprom.delay_counter_15 ;
    wire \eeprom.n1799 ;
    wire \eeprom.delay_counter_12 ;
    wire \eeprom.delay_counter_10 ;
    wire \eeprom.delay_counter_8 ;
    wire \eeprom.delay_counter_6 ;
    wire \eeprom.n26_adj_388 ;
    wire \eeprom.n27 ;
    wire \eeprom.n28_cascade_ ;
    wire \eeprom.n25 ;
    wire \eeprom.n1703_cascade_ ;
    wire \eeprom.n730 ;
    wire bfn_21_8_0_;
    wire \eeprom.i2c.n2686 ;
    wire \eeprom.i2c.n2687 ;
    wire \eeprom.i2c.n2688 ;
    wire \eeprom.i2c.n2689 ;
    wire \eeprom.i2c.n2690 ;
    wire \eeprom.i2c.n10_adj_384_cascade_ ;
    wire \eeprom.i2c.n10_adj_377 ;
    wire \eeprom.i2c.n2972 ;
    wire \INVeeprom.i2c.data_out_i0_i1C_net ;
    wire \INVeeprom.i2c.data_out_i0_i3C_net ;
    wire data_2;
    wire data_1;
    wire data_3;
    wire data_0;
    wire n10_cascade_;
    wire \eeprom.n4 ;
    wire \eeprom.n22 ;
    wire \eeprom.n26 ;
    wire \eeprom.n2727 ;
    wire \eeprom.n2727_cascade_ ;
    wire \eeprom.i2c.n2881 ;
    wire read;
    wire \eeprom.n1703 ;
    wire n805_cascade_;
    wire state_1;
    wire state_0;
    wire data_ready;
    wire n2476;
    wire n2476_cascade_;
    wire n15;
    wire ID_READOUT_FSM_state_1;
    wire n20;
    wire ID_READOUT_FSM_state_0;
    wire n20_cascade_;
    wire n6;
    wire n1841;
    wire \eeprom.i2c.n9_cascade_ ;
    wire \eeprom.i2c.n2873 ;
    wire \eeprom.i2c.counter2_2 ;
    wire \eeprom.i2c.counter2_5 ;
    wire \eeprom.i2c.counter2_4 ;
    wire \eeprom.i2c.counter2_3 ;
    wire \eeprom.i2c.counter2_1 ;
    wire \eeprom.i2c.n10_adj_379_cascade_ ;
    wire \eeprom.i2c.counter2_0 ;
    wire \eeprom.i2c.n1171 ;
    wire \eeprom.i2c.n2927 ;
    wire n4;
    wire n4_cascade_;
    wire \eeprom.i2c.n2951_cascade_ ;
    wire \eeprom.i2c.n37_cascade_ ;
    wire \eeprom.i2c.n1935 ;
    wire \eeprom.i2c.n15_cascade_ ;
    wire \eeprom.i2c.n2454 ;
    wire \eeprom.i2c.n15 ;
    wire bfn_22_11_0_;
    wire \eeprom.i2c.n2664 ;
    wire \eeprom.i2c.n2665 ;
    wire \eeprom.i2c.counter_3 ;
    wire \eeprom.i2c.n2666 ;
    wire \eeprom.i2c.counter_4 ;
    wire \eeprom.i2c.n2667 ;
    wire \eeprom.i2c.counter_5 ;
    wire \eeprom.i2c.n2668 ;
    wire \eeprom.i2c.counter_6 ;
    wire \eeprom.i2c.n2669 ;
    wire \eeprom.i2c.n2670 ;
    wire \eeprom.i2c.counter_7 ;
    wire n14_adj_395;
    wire n4_adj_394_cascade_;
    wire data_4;
    wire n1717;
    wire data_6;
    wire n2424;
    wire n2424_cascade_;
    wire data_7;
    wire n4_adj_394;
    wire n1722;
    wire data_5;
    wire \INVeeprom.i2c.data_out_i0_i4C_net ;
    wire n4_adj_393;
    wire n14;
    wire n13_cascade_;
    wire n18_cascade_;
    wire n2935_cascade_;
    wire n2939;
    wire n36_cascade_;
    wire n22_cascade_;
    wire n25_cascade_;
    wire n104;
    wire n24;
    wire n23;
    wire \eeprom.i2c.n1837 ;
    wire \eeprom.i2c.n1928 ;
    wire \eeprom.i2c.n37 ;
    wire \eeprom.i2c.n33 ;
    wire \eeprom.i2c.n9 ;
    wire \eeprom.i2c.n10_adj_384 ;
    wire \eeprom.i2c.n1739_cascade_ ;
    wire \eeprom.i2c.n1054 ;
    wire n2414;
    wire n1061_cascade_;
    wire \eeprom.i2c.n2869 ;
    wire state_7_N_289_3;
    wire n1061;
    wire \eeprom.i2c.n2479 ;
    wire \eeprom.i2c.n10 ;
    wire \eeprom.i2c.n7 ;
    wire CONSTANT_ONE_NET;
    wire n2434;
    wire n2434_cascade_;
    wire n2958;
    wire \eeprom.i2c.counter_1 ;
    wire \eeprom.i2c.counter_0 ;
    wire \eeprom.i2c.counter_2 ;
    wire \eeprom.i2c.n2967_cascade_ ;
    wire rw;
    wire saved_addr_0;
    wire \eeprom.enable ;
    wire delay_counter_0;
    wire bfn_23_13_0_;
    wire delay_counter_1;
    wire n2633;
    wire delay_counter_2;
    wire n2634;
    wire delay_counter_3;
    wire n2635;
    wire delay_counter_4;
    wire n2636;
    wire delay_counter_5;
    wire n2637;
    wire delay_counter_6;
    wire n2638;
    wire delay_counter_7;
    wire n2639;
    wire n2640;
    wire delay_counter_8;
    wire bfn_23_14_0_;
    wire delay_counter_9;
    wire n2641;
    wire delay_counter_10;
    wire n2642;
    wire delay_counter_11;
    wire n2643;
    wire delay_counter_12;
    wire n2644;
    wire delay_counter_13;
    wire n2645;
    wire delay_counter_14;
    wire n2646;
    wire delay_counter_15;
    wire n2647;
    wire n2648;
    wire delay_counter_16;
    wire bfn_23_15_0_;
    wire delay_counter_17;
    wire n2649;
    wire delay_counter_18;
    wire n2650;
    wire delay_counter_19;
    wire n2651;
    wire delay_counter_20;
    wire n2652;
    wire delay_counter_21;
    wire n2653;
    wire delay_counter_22;
    wire n2654;
    wire delay_counter_23;
    wire n2655;
    wire n2656;
    wire delay_counter_24;
    wire bfn_23_16_0_;
    wire delay_counter_25;
    wire n2657;
    wire delay_counter_26;
    wire n2658;
    wire delay_counter_27;
    wire n2659;
    wire delay_counter_28;
    wire n2660;
    wire delay_counter_29;
    wire n2661;
    wire delay_counter_30;
    wire n2662;
    wire n2663;
    wire delay_counter_31;
    wire n1740;
    wire n1895;
    wire sda_out;
    wire sda_enable;
    wire \INVeeprom.i2c.write_enable_130C_net ;
    wire \eeprom.i2c.n1152 ;
    wire \eeprom.i2c.n1932 ;
    wire \eeprom.i2c.n11_adj_378 ;
    wire \eeprom.i2c.n13 ;
    wire \eeprom.i2c.n11_adj_381 ;
    wire \eeprom.i2c.n2963 ;
    wire \eeprom.i2c.n11 ;
    wire \eeprom.i2c.sda_out_adj_376 ;
    wire \INVeeprom.i2c.sda_out_131C_net ;
    wire \eeprom.i2c.n2791 ;
    wire \eeprom.i2c.n11_adj_380 ;
    wire state_0_adj_392;
    wire \eeprom.state_3 ;
    wire \eeprom.i2c.state_1_adj_375 ;
    wire \eeprom.i2c.state_2 ;
    wire \INVeeprom.i2c.i2c_scl_enable_123C_net ;
    wire n47;
    wire state_7_N_273_0;
    wire CLK_c;
    wire \eeprom.i2c.n1766 ;
    wire \eeprom.i2c.i2c_clk ;
    wire scl_enable;
    wire scl_c;
    wire _gnd_net_;

    defparam CS_CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_CLK_pad_iopad (
            .OE(N__6680),
            .DIN(N__6679),
            .DOUT(N__6678),
            .PACKAGEPIN(CS_CLK));
    defparam CS_CLK_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_CLK_pad_preio (
            .PADOEN(N__6680),
            .PADOUT(N__6679),
            .PADIN(N__6678),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam CS_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_pad_iopad (
            .OE(N__6671),
            .DIN(N__6670),
            .DOUT(N__6669),
            .PACKAGEPIN(CS));
    defparam CS_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_pad_preio (
            .PADOEN(N__6671),
            .PADOUT(N__6670),
            .PADIN(N__6669),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam DE_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam DE_pad_iopad.PULLUP=1'b0;
    IO_PAD DE_pad_iopad (
            .OE(N__6662),
            .DIN(N__6661),
            .DOUT(N__6660),
            .PACKAGEPIN(DE));
    defparam DE_pad_preio.PIN_TYPE=6'b011001;
    defparam DE_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO DE_pad_preio (
            .PADOEN(N__6662),
            .PADOUT(N__6661),
            .PADIN(N__6660),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INHA_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INHA_pad_iopad.PULLUP=1'b0;
    IO_PAD INHA_pad_iopad (
            .OE(N__6653),
            .DIN(N__6652),
            .DOUT(N__6651),
            .PACKAGEPIN(INHA));
    defparam INHA_pad_preio.PIN_TYPE=6'b011001;
    defparam INHA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHA_pad_preio (
            .PADOEN(N__6653),
            .PADOUT(N__6652),
            .PADIN(N__6651),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INHB_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INHB_pad_iopad.PULLUP=1'b0;
    IO_PAD INHB_pad_iopad (
            .OE(N__6644),
            .DIN(N__6643),
            .DOUT(N__6642),
            .PACKAGEPIN(INHB));
    defparam INHB_pad_preio.PIN_TYPE=6'b011001;
    defparam INHB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHB_pad_preio (
            .PADOEN(N__6644),
            .PADOUT(N__6643),
            .PADIN(N__6642),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INHC_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INHC_pad_iopad.PULLUP=1'b0;
    IO_PAD INHC_pad_iopad (
            .OE(N__6635),
            .DIN(N__6634),
            .DOUT(N__6633),
            .PACKAGEPIN(INHC));
    defparam INHC_pad_preio.PIN_TYPE=6'b011001;
    defparam INHC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHC_pad_preio (
            .PADOEN(N__6635),
            .PADOUT(N__6634),
            .PADIN(N__6633),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INLA_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INLA_pad_iopad.PULLUP=1'b0;
    IO_PAD INLA_pad_iopad (
            .OE(N__6626),
            .DIN(N__6625),
            .DOUT(N__6624),
            .PACKAGEPIN(INLA));
    defparam INLA_pad_preio.PIN_TYPE=6'b011001;
    defparam INLA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLA_pad_preio (
            .PADOEN(N__6626),
            .PADOUT(N__6625),
            .PADIN(N__6624),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INLB_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INLB_pad_iopad.PULLUP=1'b0;
    IO_PAD INLB_pad_iopad (
            .OE(N__6617),
            .DIN(N__6616),
            .DOUT(N__6615),
            .PACKAGEPIN(INLB));
    defparam INLB_pad_preio.PIN_TYPE=6'b011001;
    defparam INLB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLB_pad_preio (
            .PADOEN(N__6617),
            .PADOUT(N__6616),
            .PADIN(N__6615),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam INLC_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam INLC_pad_iopad.PULLUP=1'b0;
    IO_PAD INLC_pad_iopad (
            .OE(N__6608),
            .DIN(N__6607),
            .DOUT(N__6606),
            .PACKAGEPIN(INLC));
    defparam INLC_pad_preio.PIN_TYPE=6'b011001;
    defparam INLC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLC_pad_preio (
            .PADOEN(N__6608),
            .PADOUT(N__6607),
            .PADIN(N__6606),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam LED_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam LED_pad_iopad.PULLUP=1'b0;
    IO_PAD LED_pad_iopad (
            .OE(N__6599),
            .DIN(N__6598),
            .DOUT(N__6597),
            .PACKAGEPIN(LED));
    defparam LED_pad_preio.PIN_TYPE=6'b011001;
    defparam LED_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO LED_pad_preio (
            .PADOEN(N__6599),
            .PADOUT(N__6598),
            .PADIN(N__6597),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__2782),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam NEOPXL_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam NEOPXL_pad_iopad.PULLUP=1'b0;
    IO_PAD NEOPXL_pad_iopad (
            .OE(N__6590),
            .DIN(N__6589),
            .DOUT(N__6588),
            .PACKAGEPIN(NEOPXL));
    defparam NEOPXL_pad_preio.PIN_TYPE=6'b011001;
    defparam NEOPXL_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO NEOPXL_pad_preio (
            .PADOEN(N__6590),
            .PADOUT(N__6589),
            .PADIN(N__6588),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam TX_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam TX_pad_iopad.PULLUP=1'b0;
    IO_PAD TX_pad_iopad (
            .OE(N__6581),
            .DIN(N__6580),
            .DOUT(N__6579),
            .PACKAGEPIN(TX));
    defparam TX_pad_preio.PIN_TYPE=6'b011001;
    defparam TX_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO TX_pad_preio (
            .PADOEN(N__6581),
            .PADOUT(N__6580),
            .PADIN(N__6579),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam USBPU_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam USBPU_pad_iopad.PULLUP=1'b0;
    IO_PAD USBPU_pad_iopad (
            .OE(N__6572),
            .DIN(N__6571),
            .DOUT(N__6570),
            .PACKAGEPIN(USBPU));
    defparam USBPU_pad_preio.PIN_TYPE=6'b011001;
    defparam USBPU_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO USBPU_pad_preio (
            .PADOEN(N__6572),
            .PADOUT(N__6571),
            .PADIN(N__6570),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(GNDG0),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam scl_output_iopad.IO_STANDARD="SB_LVCMOS";
    defparam scl_output_iopad.PULLUP=1'b1;
    IO_PAD scl_output_iopad (
            .OE(N__6563),
            .DIN(N__6562),
            .DOUT(N__6561),
            .PACKAGEPIN(SCL));
    defparam scl_output_preio.PIN_TYPE=6'b101001;
    defparam scl_output_preio.NEG_TRIGGER=1'b0;
    PRE_IO scl_output_preio (
            .PADOEN(N__6563),
            .PADOUT(N__6562),
            .PADIN(N__6561),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__5605),
            .DOUT1(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(N__5638));
    defparam sda_output_iopad.IO_STANDARD="SB_LVCMOS";
    defparam sda_output_iopad.PULLUP=1'b1;
    IO_PAD sda_output_iopad (
            .OE(N__6554),
            .DIN(N__6553),
            .DOUT(N__6552),
            .PACKAGEPIN(SDA));
    defparam sda_output_preio.PIN_TYPE=6'b101001;
    defparam sda_output_preio.NEG_TRIGGER=1'b0;
    PRE_IO sda_output_preio (
            .PADOEN(N__6554),
            .PADOUT(N__6553),
            .PADIN(N__6552),
            .CLOCKENABLE(),
            .DIN0(state_7_N_289_3),
            .DIN1(),
            .DOUT0(N__5428),
            .DOUT1(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(N__5410));
    defparam CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CLK_pad_iopad (
            .OE(N__6545),
            .DIN(N__6544),
            .DOUT(N__6543),
            .PACKAGEPIN(CLK));
    defparam CLK_pad_preio.PIN_TYPE=6'b000001;
    defparam CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CLK_pad_preio (
            .PADOEN(N__6545),
            .PADOUT(N__6544),
            .PADIN(N__6543),
            .CLOCKENABLE(),
            .DIN0(CLK_pad_gb_input),
            .DIN1(),
            .DOUT0(),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    InMux I__1503 (
            .O(N__6526),
            .I(N__6523));
    LocalMux I__1502 (
            .O(N__6523),
            .I(\eeprom.i2c.n2963 ));
    CascadeMux I__1501 (
            .O(N__6520),
            .I(N__6517));
    InMux I__1500 (
            .O(N__6517),
            .I(N__6514));
    LocalMux I__1499 (
            .O(N__6514),
            .I(N__6509));
    InMux I__1498 (
            .O(N__6513),
            .I(N__6506));
    CascadeMux I__1497 (
            .O(N__6512),
            .I(N__6503));
    Span4Mux_v I__1496 (
            .O(N__6509),
            .I(N__6500));
    LocalMux I__1495 (
            .O(N__6506),
            .I(N__6497));
    InMux I__1494 (
            .O(N__6503),
            .I(N__6494));
    Odrv4 I__1493 (
            .O(N__6500),
            .I(\eeprom.i2c.n11 ));
    Odrv12 I__1492 (
            .O(N__6497),
            .I(\eeprom.i2c.n11 ));
    LocalMux I__1491 (
            .O(N__6494),
            .I(\eeprom.i2c.n11 ));
    InMux I__1490 (
            .O(N__6487),
            .I(N__6484));
    LocalMux I__1489 (
            .O(N__6484),
            .I(N__6481));
    Odrv12 I__1488 (
            .O(N__6481),
            .I(\eeprom.i2c.sda_out_adj_376 ));
    CEMux I__1487 (
            .O(N__6478),
            .I(N__6475));
    LocalMux I__1486 (
            .O(N__6475),
            .I(N__6472));
    Odrv4 I__1485 (
            .O(N__6472),
            .I(\eeprom.i2c.n2791 ));
    InMux I__1484 (
            .O(N__6469),
            .I(N__6466));
    LocalMux I__1483 (
            .O(N__6466),
            .I(N__6463));
    Odrv4 I__1482 (
            .O(N__6463),
            .I(\eeprom.i2c.n11_adj_380 ));
    CascadeMux I__1481 (
            .O(N__6460),
            .I(N__6456));
    InMux I__1480 (
            .O(N__6459),
            .I(N__6453));
    InMux I__1479 (
            .O(N__6456),
            .I(N__6450));
    LocalMux I__1478 (
            .O(N__6453),
            .I(N__6441));
    LocalMux I__1477 (
            .O(N__6450),
            .I(N__6438));
    InMux I__1476 (
            .O(N__6449),
            .I(N__6434));
    InMux I__1475 (
            .O(N__6448),
            .I(N__6431));
    InMux I__1474 (
            .O(N__6447),
            .I(N__6423));
    InMux I__1473 (
            .O(N__6446),
            .I(N__6423));
    CascadeMux I__1472 (
            .O(N__6445),
            .I(N__6414));
    CascadeMux I__1471 (
            .O(N__6444),
            .I(N__6411));
    Span4Mux_v I__1470 (
            .O(N__6441),
            .I(N__6405));
    Span4Mux_h I__1469 (
            .O(N__6438),
            .I(N__6402));
    InMux I__1468 (
            .O(N__6437),
            .I(N__6399));
    LocalMux I__1467 (
            .O(N__6434),
            .I(N__6394));
    LocalMux I__1466 (
            .O(N__6431),
            .I(N__6394));
    InMux I__1465 (
            .O(N__6430),
            .I(N__6391));
    InMux I__1464 (
            .O(N__6429),
            .I(N__6386));
    InMux I__1463 (
            .O(N__6428),
            .I(N__6386));
    LocalMux I__1462 (
            .O(N__6423),
            .I(N__6383));
    InMux I__1461 (
            .O(N__6422),
            .I(N__6376));
    InMux I__1460 (
            .O(N__6421),
            .I(N__6376));
    InMux I__1459 (
            .O(N__6420),
            .I(N__6376));
    InMux I__1458 (
            .O(N__6419),
            .I(N__6371));
    InMux I__1457 (
            .O(N__6418),
            .I(N__6371));
    InMux I__1456 (
            .O(N__6417),
            .I(N__6368));
    InMux I__1455 (
            .O(N__6414),
            .I(N__6361));
    InMux I__1454 (
            .O(N__6411),
            .I(N__6361));
    InMux I__1453 (
            .O(N__6410),
            .I(N__6361));
    InMux I__1452 (
            .O(N__6409),
            .I(N__6356));
    InMux I__1451 (
            .O(N__6408),
            .I(N__6356));
    Odrv4 I__1450 (
            .O(N__6405),
            .I(state_0_adj_392));
    Odrv4 I__1449 (
            .O(N__6402),
            .I(state_0_adj_392));
    LocalMux I__1448 (
            .O(N__6399),
            .I(state_0_adj_392));
    Odrv4 I__1447 (
            .O(N__6394),
            .I(state_0_adj_392));
    LocalMux I__1446 (
            .O(N__6391),
            .I(state_0_adj_392));
    LocalMux I__1445 (
            .O(N__6386),
            .I(state_0_adj_392));
    Odrv4 I__1444 (
            .O(N__6383),
            .I(state_0_adj_392));
    LocalMux I__1443 (
            .O(N__6376),
            .I(state_0_adj_392));
    LocalMux I__1442 (
            .O(N__6371),
            .I(state_0_adj_392));
    LocalMux I__1441 (
            .O(N__6368),
            .I(state_0_adj_392));
    LocalMux I__1440 (
            .O(N__6361),
            .I(state_0_adj_392));
    LocalMux I__1439 (
            .O(N__6356),
            .I(state_0_adj_392));
    CascadeMux I__1438 (
            .O(N__6331),
            .I(N__6324));
    CascadeMux I__1437 (
            .O(N__6330),
            .I(N__6321));
    CascadeMux I__1436 (
            .O(N__6329),
            .I(N__6313));
    InMux I__1435 (
            .O(N__6328),
            .I(N__6309));
    InMux I__1434 (
            .O(N__6327),
            .I(N__6306));
    InMux I__1433 (
            .O(N__6324),
            .I(N__6302));
    InMux I__1432 (
            .O(N__6321),
            .I(N__6299));
    InMux I__1431 (
            .O(N__6320),
            .I(N__6292));
    InMux I__1430 (
            .O(N__6319),
            .I(N__6292));
    InMux I__1429 (
            .O(N__6318),
            .I(N__6285));
    InMux I__1428 (
            .O(N__6317),
            .I(N__6285));
    InMux I__1427 (
            .O(N__6316),
            .I(N__6285));
    InMux I__1426 (
            .O(N__6313),
            .I(N__6282));
    InMux I__1425 (
            .O(N__6312),
            .I(N__6277));
    LocalMux I__1424 (
            .O(N__6309),
            .I(N__6274));
    LocalMux I__1423 (
            .O(N__6306),
            .I(N__6271));
    InMux I__1422 (
            .O(N__6305),
            .I(N__6268));
    LocalMux I__1421 (
            .O(N__6302),
            .I(N__6264));
    LocalMux I__1420 (
            .O(N__6299),
            .I(N__6261));
    InMux I__1419 (
            .O(N__6298),
            .I(N__6256));
    InMux I__1418 (
            .O(N__6297),
            .I(N__6256));
    LocalMux I__1417 (
            .O(N__6292),
            .I(N__6250));
    LocalMux I__1416 (
            .O(N__6285),
            .I(N__6250));
    LocalMux I__1415 (
            .O(N__6282),
            .I(N__6245));
    InMux I__1414 (
            .O(N__6281),
            .I(N__6242));
    InMux I__1413 (
            .O(N__6280),
            .I(N__6239));
    LocalMux I__1412 (
            .O(N__6277),
            .I(N__6230));
    Span4Mux_v I__1411 (
            .O(N__6274),
            .I(N__6230));
    Span4Mux_h I__1410 (
            .O(N__6271),
            .I(N__6230));
    LocalMux I__1409 (
            .O(N__6268),
            .I(N__6230));
    InMux I__1408 (
            .O(N__6267),
            .I(N__6227));
    Span4Mux_h I__1407 (
            .O(N__6264),
            .I(N__6220));
    Span4Mux_h I__1406 (
            .O(N__6261),
            .I(N__6220));
    LocalMux I__1405 (
            .O(N__6256),
            .I(N__6220));
    InMux I__1404 (
            .O(N__6255),
            .I(N__6217));
    Span4Mux_h I__1403 (
            .O(N__6250),
            .I(N__6214));
    InMux I__1402 (
            .O(N__6249),
            .I(N__6209));
    InMux I__1401 (
            .O(N__6248),
            .I(N__6209));
    Odrv12 I__1400 (
            .O(N__6245),
            .I(\eeprom.state_3 ));
    LocalMux I__1399 (
            .O(N__6242),
            .I(\eeprom.state_3 ));
    LocalMux I__1398 (
            .O(N__6239),
            .I(\eeprom.state_3 ));
    Odrv4 I__1397 (
            .O(N__6230),
            .I(\eeprom.state_3 ));
    LocalMux I__1396 (
            .O(N__6227),
            .I(\eeprom.state_3 ));
    Odrv4 I__1395 (
            .O(N__6220),
            .I(\eeprom.state_3 ));
    LocalMux I__1394 (
            .O(N__6217),
            .I(\eeprom.state_3 ));
    Odrv4 I__1393 (
            .O(N__6214),
            .I(\eeprom.state_3 ));
    LocalMux I__1392 (
            .O(N__6209),
            .I(\eeprom.state_3 ));
    InMux I__1391 (
            .O(N__6190),
            .I(N__6185));
    CascadeMux I__1390 (
            .O(N__6189),
            .I(N__6181));
    CascadeMux I__1389 (
            .O(N__6188),
            .I(N__6175));
    LocalMux I__1388 (
            .O(N__6185),
            .I(N__6167));
    InMux I__1387 (
            .O(N__6184),
            .I(N__6164));
    InMux I__1386 (
            .O(N__6181),
            .I(N__6161));
    CascadeMux I__1385 (
            .O(N__6180),
            .I(N__6158));
    CascadeMux I__1384 (
            .O(N__6179),
            .I(N__6150));
    InMux I__1383 (
            .O(N__6178),
            .I(N__6141));
    InMux I__1382 (
            .O(N__6175),
            .I(N__6141));
    InMux I__1381 (
            .O(N__6174),
            .I(N__6141));
    InMux I__1380 (
            .O(N__6173),
            .I(N__6141));
    InMux I__1379 (
            .O(N__6172),
            .I(N__6136));
    InMux I__1378 (
            .O(N__6171),
            .I(N__6136));
    CascadeMux I__1377 (
            .O(N__6170),
            .I(N__6131));
    Span4Mux_v I__1376 (
            .O(N__6167),
            .I(N__6126));
    LocalMux I__1375 (
            .O(N__6164),
            .I(N__6126));
    LocalMux I__1374 (
            .O(N__6161),
            .I(N__6123));
    InMux I__1373 (
            .O(N__6158),
            .I(N__6120));
    InMux I__1372 (
            .O(N__6157),
            .I(N__6117));
    InMux I__1371 (
            .O(N__6156),
            .I(N__6112));
    InMux I__1370 (
            .O(N__6155),
            .I(N__6112));
    InMux I__1369 (
            .O(N__6154),
            .I(N__6107));
    InMux I__1368 (
            .O(N__6153),
            .I(N__6107));
    InMux I__1367 (
            .O(N__6150),
            .I(N__6104));
    LocalMux I__1366 (
            .O(N__6141),
            .I(N__6099));
    LocalMux I__1365 (
            .O(N__6136),
            .I(N__6099));
    InMux I__1364 (
            .O(N__6135),
            .I(N__6092));
    InMux I__1363 (
            .O(N__6134),
            .I(N__6092));
    InMux I__1362 (
            .O(N__6131),
            .I(N__6092));
    Odrv4 I__1361 (
            .O(N__6126),
            .I(\eeprom.i2c.state_1_adj_375 ));
    Odrv4 I__1360 (
            .O(N__6123),
            .I(\eeprom.i2c.state_1_adj_375 ));
    LocalMux I__1359 (
            .O(N__6120),
            .I(\eeprom.i2c.state_1_adj_375 ));
    LocalMux I__1358 (
            .O(N__6117),
            .I(\eeprom.i2c.state_1_adj_375 ));
    LocalMux I__1357 (
            .O(N__6112),
            .I(\eeprom.i2c.state_1_adj_375 ));
    LocalMux I__1356 (
            .O(N__6107),
            .I(\eeprom.i2c.state_1_adj_375 ));
    LocalMux I__1355 (
            .O(N__6104),
            .I(\eeprom.i2c.state_1_adj_375 ));
    Odrv4 I__1354 (
            .O(N__6099),
            .I(\eeprom.i2c.state_1_adj_375 ));
    LocalMux I__1353 (
            .O(N__6092),
            .I(\eeprom.i2c.state_1_adj_375 ));
    CascadeMux I__1352 (
            .O(N__6073),
            .I(N__6064));
    InMux I__1351 (
            .O(N__6072),
            .I(N__6061));
    InMux I__1350 (
            .O(N__6071),
            .I(N__6058));
    InMux I__1349 (
            .O(N__6070),
            .I(N__6051));
    InMux I__1348 (
            .O(N__6069),
            .I(N__6046));
    InMux I__1347 (
            .O(N__6068),
            .I(N__6046));
    InMux I__1346 (
            .O(N__6067),
            .I(N__6043));
    InMux I__1345 (
            .O(N__6064),
            .I(N__6033));
    LocalMux I__1344 (
            .O(N__6061),
            .I(N__6030));
    LocalMux I__1343 (
            .O(N__6058),
            .I(N__6027));
    InMux I__1342 (
            .O(N__6057),
            .I(N__6022));
    InMux I__1341 (
            .O(N__6056),
            .I(N__6022));
    InMux I__1340 (
            .O(N__6055),
            .I(N__6017));
    InMux I__1339 (
            .O(N__6054),
            .I(N__6017));
    LocalMux I__1338 (
            .O(N__6051),
            .I(N__6012));
    LocalMux I__1337 (
            .O(N__6046),
            .I(N__6012));
    LocalMux I__1336 (
            .O(N__6043),
            .I(N__6005));
    InMux I__1335 (
            .O(N__6042),
            .I(N__6000));
    InMux I__1334 (
            .O(N__6041),
            .I(N__6000));
    InMux I__1333 (
            .O(N__6040),
            .I(N__5995));
    InMux I__1332 (
            .O(N__6039),
            .I(N__5995));
    InMux I__1331 (
            .O(N__6038),
            .I(N__5988));
    InMux I__1330 (
            .O(N__6037),
            .I(N__5988));
    InMux I__1329 (
            .O(N__6036),
            .I(N__5988));
    LocalMux I__1328 (
            .O(N__6033),
            .I(N__5985));
    Span4Mux_v I__1327 (
            .O(N__6030),
            .I(N__5974));
    Span4Mux_v I__1326 (
            .O(N__6027),
            .I(N__5974));
    LocalMux I__1325 (
            .O(N__6022),
            .I(N__5974));
    LocalMux I__1324 (
            .O(N__6017),
            .I(N__5974));
    Span4Mux_v I__1323 (
            .O(N__6012),
            .I(N__5974));
    InMux I__1322 (
            .O(N__6011),
            .I(N__5971));
    InMux I__1321 (
            .O(N__6010),
            .I(N__5964));
    InMux I__1320 (
            .O(N__6009),
            .I(N__5964));
    InMux I__1319 (
            .O(N__6008),
            .I(N__5964));
    Odrv4 I__1318 (
            .O(N__6005),
            .I(\eeprom.i2c.state_2 ));
    LocalMux I__1317 (
            .O(N__6000),
            .I(\eeprom.i2c.state_2 ));
    LocalMux I__1316 (
            .O(N__5995),
            .I(\eeprom.i2c.state_2 ));
    LocalMux I__1315 (
            .O(N__5988),
            .I(\eeprom.i2c.state_2 ));
    Odrv4 I__1314 (
            .O(N__5985),
            .I(\eeprom.i2c.state_2 ));
    Odrv4 I__1313 (
            .O(N__5974),
            .I(\eeprom.i2c.state_2 ));
    LocalMux I__1312 (
            .O(N__5971),
            .I(\eeprom.i2c.state_2 ));
    LocalMux I__1311 (
            .O(N__5964),
            .I(\eeprom.i2c.state_2 ));
    CascadeMux I__1310 (
            .O(N__5947),
            .I(N__5943));
    InMux I__1309 (
            .O(N__5946),
            .I(N__5935));
    InMux I__1308 (
            .O(N__5943),
            .I(N__5935));
    InMux I__1307 (
            .O(N__5942),
            .I(N__5932));
    InMux I__1306 (
            .O(N__5941),
            .I(N__5929));
    InMux I__1305 (
            .O(N__5940),
            .I(N__5926));
    LocalMux I__1304 (
            .O(N__5935),
            .I(N__5920));
    LocalMux I__1303 (
            .O(N__5932),
            .I(N__5920));
    LocalMux I__1302 (
            .O(N__5929),
            .I(N__5915));
    LocalMux I__1301 (
            .O(N__5926),
            .I(N__5915));
    InMux I__1300 (
            .O(N__5925),
            .I(N__5912));
    Span4Mux_v I__1299 (
            .O(N__5920),
            .I(N__5906));
    Span4Mux_v I__1298 (
            .O(N__5915),
            .I(N__5903));
    LocalMux I__1297 (
            .O(N__5912),
            .I(N__5900));
    InMux I__1296 (
            .O(N__5911),
            .I(N__5897));
    InMux I__1295 (
            .O(N__5910),
            .I(N__5892));
    InMux I__1294 (
            .O(N__5909),
            .I(N__5892));
    Odrv4 I__1293 (
            .O(N__5906),
            .I(n47));
    Odrv4 I__1292 (
            .O(N__5903),
            .I(n47));
    Odrv4 I__1291 (
            .O(N__5900),
            .I(n47));
    LocalMux I__1290 (
            .O(N__5897),
            .I(n47));
    LocalMux I__1289 (
            .O(N__5892),
            .I(n47));
    CascadeMux I__1288 (
            .O(N__5881),
            .I(N__5877));
    InMux I__1287 (
            .O(N__5880),
            .I(N__5872));
    InMux I__1286 (
            .O(N__5877),
            .I(N__5872));
    LocalMux I__1285 (
            .O(N__5872),
            .I(N__5869));
    Span4Mux_v I__1284 (
            .O(N__5869),
            .I(N__5864));
    InMux I__1283 (
            .O(N__5868),
            .I(N__5861));
    InMux I__1282 (
            .O(N__5867),
            .I(N__5858));
    Odrv4 I__1281 (
            .O(N__5864),
            .I(state_7_N_273_0));
    LocalMux I__1280 (
            .O(N__5861),
            .I(state_7_N_273_0));
    LocalMux I__1279 (
            .O(N__5858),
            .I(state_7_N_273_0));
    ClkMux I__1278 (
            .O(N__5851),
            .I(N__5800));
    ClkMux I__1277 (
            .O(N__5850),
            .I(N__5800));
    ClkMux I__1276 (
            .O(N__5849),
            .I(N__5800));
    ClkMux I__1275 (
            .O(N__5848),
            .I(N__5800));
    ClkMux I__1274 (
            .O(N__5847),
            .I(N__5800));
    ClkMux I__1273 (
            .O(N__5846),
            .I(N__5800));
    ClkMux I__1272 (
            .O(N__5845),
            .I(N__5800));
    ClkMux I__1271 (
            .O(N__5844),
            .I(N__5800));
    ClkMux I__1270 (
            .O(N__5843),
            .I(N__5800));
    ClkMux I__1269 (
            .O(N__5842),
            .I(N__5800));
    ClkMux I__1268 (
            .O(N__5841),
            .I(N__5800));
    ClkMux I__1267 (
            .O(N__5840),
            .I(N__5800));
    ClkMux I__1266 (
            .O(N__5839),
            .I(N__5800));
    ClkMux I__1265 (
            .O(N__5838),
            .I(N__5800));
    ClkMux I__1264 (
            .O(N__5837),
            .I(N__5800));
    ClkMux I__1263 (
            .O(N__5836),
            .I(N__5800));
    ClkMux I__1262 (
            .O(N__5835),
            .I(N__5800));
    GlobalMux I__1261 (
            .O(N__5800),
            .I(N__5797));
    gio2CtrlBuf I__1260 (
            .O(N__5797),
            .I(CLK_c));
    CEMux I__1259 (
            .O(N__5794),
            .I(N__5791));
    LocalMux I__1258 (
            .O(N__5791),
            .I(N__5788));
    Span4Mux_h I__1257 (
            .O(N__5788),
            .I(N__5785));
    Odrv4 I__1256 (
            .O(N__5785),
            .I(\eeprom.i2c.n1766 ));
    InMux I__1255 (
            .O(N__5782),
            .I(N__5779));
    LocalMux I__1254 (
            .O(N__5779),
            .I(N__5776));
    Span4Mux_v I__1253 (
            .O(N__5776),
            .I(N__5772));
    ClkMux I__1252 (
            .O(N__5775),
            .I(N__5768));
    Span4Mux_h I__1251 (
            .O(N__5772),
            .I(N__5761));
    ClkMux I__1250 (
            .O(N__5771),
            .I(N__5758));
    LocalMux I__1249 (
            .O(N__5768),
            .I(N__5753));
    ClkMux I__1248 (
            .O(N__5767),
            .I(N__5750));
    ClkMux I__1247 (
            .O(N__5766),
            .I(N__5746));
    ClkMux I__1246 (
            .O(N__5765),
            .I(N__5743));
    ClkMux I__1245 (
            .O(N__5764),
            .I(N__5738));
    Span4Mux_v I__1244 (
            .O(N__5761),
            .I(N__5732));
    LocalMux I__1243 (
            .O(N__5758),
            .I(N__5732));
    ClkMux I__1242 (
            .O(N__5757),
            .I(N__5729));
    ClkMux I__1241 (
            .O(N__5756),
            .I(N__5725));
    Span4Mux_v I__1240 (
            .O(N__5753),
            .I(N__5720));
    LocalMux I__1239 (
            .O(N__5750),
            .I(N__5720));
    ClkMux I__1238 (
            .O(N__5749),
            .I(N__5717));
    LocalMux I__1237 (
            .O(N__5746),
            .I(N__5712));
    LocalMux I__1236 (
            .O(N__5743),
            .I(N__5712));
    ClkMux I__1235 (
            .O(N__5742),
            .I(N__5709));
    ClkMux I__1234 (
            .O(N__5741),
            .I(N__5706));
    LocalMux I__1233 (
            .O(N__5738),
            .I(N__5703));
    ClkMux I__1232 (
            .O(N__5737),
            .I(N__5700));
    Span4Mux_v I__1231 (
            .O(N__5732),
            .I(N__5695));
    LocalMux I__1230 (
            .O(N__5729),
            .I(N__5695));
    ClkMux I__1229 (
            .O(N__5728),
            .I(N__5692));
    LocalMux I__1228 (
            .O(N__5725),
            .I(N__5689));
    Span4Mux_v I__1227 (
            .O(N__5720),
            .I(N__5686));
    LocalMux I__1226 (
            .O(N__5717),
            .I(N__5683));
    Span4Mux_v I__1225 (
            .O(N__5712),
            .I(N__5680));
    LocalMux I__1224 (
            .O(N__5709),
            .I(N__5677));
    LocalMux I__1223 (
            .O(N__5706),
            .I(N__5666));
    Span4Mux_v I__1222 (
            .O(N__5703),
            .I(N__5666));
    LocalMux I__1221 (
            .O(N__5700),
            .I(N__5666));
    Span4Mux_v I__1220 (
            .O(N__5695),
            .I(N__5666));
    LocalMux I__1219 (
            .O(N__5692),
            .I(N__5666));
    Span4Mux_h I__1218 (
            .O(N__5689),
            .I(N__5662));
    Span4Mux_v I__1217 (
            .O(N__5686),
            .I(N__5655));
    Span4Mux_v I__1216 (
            .O(N__5683),
            .I(N__5655));
    Span4Mux_h I__1215 (
            .O(N__5680),
            .I(N__5655));
    Span4Mux_v I__1214 (
            .O(N__5677),
            .I(N__5650));
    Span4Mux_v I__1213 (
            .O(N__5666),
            .I(N__5650));
    InMux I__1212 (
            .O(N__5665),
            .I(N__5647));
    Odrv4 I__1211 (
            .O(N__5662),
            .I(\eeprom.i2c.i2c_clk ));
    Odrv4 I__1210 (
            .O(N__5655),
            .I(\eeprom.i2c.i2c_clk ));
    Odrv4 I__1209 (
            .O(N__5650),
            .I(\eeprom.i2c.i2c_clk ));
    LocalMux I__1208 (
            .O(N__5647),
            .I(\eeprom.i2c.i2c_clk ));
    IoInMux I__1207 (
            .O(N__5638),
            .I(N__5635));
    LocalMux I__1206 (
            .O(N__5635),
            .I(N__5632));
    IoSpan4Mux I__1205 (
            .O(N__5632),
            .I(N__5629));
    Span4Mux_s1_h I__1204 (
            .O(N__5629),
            .I(N__5625));
    InMux I__1203 (
            .O(N__5628),
            .I(N__5622));
    Span4Mux_h I__1202 (
            .O(N__5625),
            .I(N__5619));
    LocalMux I__1201 (
            .O(N__5622),
            .I(N__5616));
    Span4Mux_v I__1200 (
            .O(N__5619),
            .I(N__5611));
    Span4Mux_v I__1199 (
            .O(N__5616),
            .I(N__5611));
    Span4Mux_v I__1198 (
            .O(N__5611),
            .I(N__5608));
    Odrv4 I__1197 (
            .O(N__5608),
            .I(scl_enable));
    IoInMux I__1196 (
            .O(N__5605),
            .I(N__5602));
    LocalMux I__1195 (
            .O(N__5602),
            .I(N__5599));
    IoSpan4Mux I__1194 (
            .O(N__5599),
            .I(N__5596));
    Span4Mux_s2_h I__1193 (
            .O(N__5596),
            .I(N__5593));
    Odrv4 I__1192 (
            .O(N__5593),
            .I(scl_c));
    InMux I__1191 (
            .O(N__5590),
            .I(N__5586));
    InMux I__1190 (
            .O(N__5589),
            .I(N__5583));
    LocalMux I__1189 (
            .O(N__5586),
            .I(delay_counter_28));
    LocalMux I__1188 (
            .O(N__5583),
            .I(delay_counter_28));
    InMux I__1187 (
            .O(N__5578),
            .I(n2660));
    CascadeMux I__1186 (
            .O(N__5575),
            .I(N__5571));
    InMux I__1185 (
            .O(N__5574),
            .I(N__5568));
    InMux I__1184 (
            .O(N__5571),
            .I(N__5565));
    LocalMux I__1183 (
            .O(N__5568),
            .I(delay_counter_29));
    LocalMux I__1182 (
            .O(N__5565),
            .I(delay_counter_29));
    InMux I__1181 (
            .O(N__5560),
            .I(n2661));
    InMux I__1180 (
            .O(N__5557),
            .I(N__5553));
    InMux I__1179 (
            .O(N__5556),
            .I(N__5550));
    LocalMux I__1178 (
            .O(N__5553),
            .I(delay_counter_30));
    LocalMux I__1177 (
            .O(N__5550),
            .I(delay_counter_30));
    InMux I__1176 (
            .O(N__5545),
            .I(n2662));
    InMux I__1175 (
            .O(N__5542),
            .I(n2663));
    InMux I__1174 (
            .O(N__5539),
            .I(N__5536));
    LocalMux I__1173 (
            .O(N__5536),
            .I(N__5532));
    InMux I__1172 (
            .O(N__5535),
            .I(N__5529));
    Span4Mux_h I__1171 (
            .O(N__5532),
            .I(N__5526));
    LocalMux I__1170 (
            .O(N__5529),
            .I(delay_counter_31));
    Odrv4 I__1169 (
            .O(N__5526),
            .I(delay_counter_31));
    CEMux I__1168 (
            .O(N__5521),
            .I(N__5518));
    LocalMux I__1167 (
            .O(N__5518),
            .I(N__5513));
    CEMux I__1166 (
            .O(N__5517),
            .I(N__5510));
    CEMux I__1165 (
            .O(N__5516),
            .I(N__5506));
    Span4Mux_v I__1164 (
            .O(N__5513),
            .I(N__5501));
    LocalMux I__1163 (
            .O(N__5510),
            .I(N__5501));
    CEMux I__1162 (
            .O(N__5509),
            .I(N__5498));
    LocalMux I__1161 (
            .O(N__5506),
            .I(N__5493));
    Span4Mux_v I__1160 (
            .O(N__5501),
            .I(N__5493));
    LocalMux I__1159 (
            .O(N__5498),
            .I(N__5490));
    Span4Mux_v I__1158 (
            .O(N__5493),
            .I(N__5486));
    Span4Mux_h I__1157 (
            .O(N__5490),
            .I(N__5483));
    InMux I__1156 (
            .O(N__5489),
            .I(N__5480));
    Odrv4 I__1155 (
            .O(N__5486),
            .I(n1740));
    Odrv4 I__1154 (
            .O(N__5483),
            .I(n1740));
    LocalMux I__1153 (
            .O(N__5480),
            .I(n1740));
    SRMux I__1152 (
            .O(N__5473),
            .I(N__5468));
    SRMux I__1151 (
            .O(N__5472),
            .I(N__5465));
    SRMux I__1150 (
            .O(N__5471),
            .I(N__5462));
    LocalMux I__1149 (
            .O(N__5468),
            .I(N__5459));
    LocalMux I__1148 (
            .O(N__5465),
            .I(N__5456));
    LocalMux I__1147 (
            .O(N__5462),
            .I(N__5452));
    Span4Mux_v I__1146 (
            .O(N__5459),
            .I(N__5447));
    Span4Mux_v I__1145 (
            .O(N__5456),
            .I(N__5447));
    SRMux I__1144 (
            .O(N__5455),
            .I(N__5444));
    Span4Mux_h I__1143 (
            .O(N__5452),
            .I(N__5441));
    Span4Mux_h I__1142 (
            .O(N__5447),
            .I(N__5438));
    LocalMux I__1141 (
            .O(N__5444),
            .I(N__5435));
    Odrv4 I__1140 (
            .O(N__5441),
            .I(n1895));
    Odrv4 I__1139 (
            .O(N__5438),
            .I(n1895));
    Odrv12 I__1138 (
            .O(N__5435),
            .I(n1895));
    IoInMux I__1137 (
            .O(N__5428),
            .I(N__5425));
    LocalMux I__1136 (
            .O(N__5425),
            .I(N__5422));
    IoSpan4Mux I__1135 (
            .O(N__5422),
            .I(N__5419));
    Span4Mux_s3_h I__1134 (
            .O(N__5419),
            .I(N__5416));
    Sp12to4 I__1133 (
            .O(N__5416),
            .I(N__5413));
    Odrv12 I__1132 (
            .O(N__5413),
            .I(sda_out));
    IoInMux I__1131 (
            .O(N__5410),
            .I(N__5407));
    LocalMux I__1130 (
            .O(N__5407),
            .I(N__5404));
    Span4Mux_s3_h I__1129 (
            .O(N__5404),
            .I(N__5401));
    Span4Mux_h I__1128 (
            .O(N__5401),
            .I(N__5397));
    InMux I__1127 (
            .O(N__5400),
            .I(N__5394));
    Odrv4 I__1126 (
            .O(N__5397),
            .I(sda_enable));
    LocalMux I__1125 (
            .O(N__5394),
            .I(sda_enable));
    CEMux I__1124 (
            .O(N__5389),
            .I(N__5386));
    LocalMux I__1123 (
            .O(N__5386),
            .I(\eeprom.i2c.n1152 ));
    SRMux I__1122 (
            .O(N__5383),
            .I(N__5380));
    LocalMux I__1121 (
            .O(N__5380),
            .I(N__5377));
    Span4Mux_v I__1120 (
            .O(N__5377),
            .I(N__5374));
    Span4Mux_h I__1119 (
            .O(N__5374),
            .I(N__5371));
    Odrv4 I__1118 (
            .O(N__5371),
            .I(\eeprom.i2c.n1932 ));
    InMux I__1117 (
            .O(N__5368),
            .I(N__5365));
    LocalMux I__1116 (
            .O(N__5365),
            .I(N__5362));
    Span4Mux_h I__1115 (
            .O(N__5362),
            .I(N__5358));
    InMux I__1114 (
            .O(N__5361),
            .I(N__5355));
    Odrv4 I__1113 (
            .O(N__5358),
            .I(\eeprom.i2c.n11_adj_378 ));
    LocalMux I__1112 (
            .O(N__5355),
            .I(\eeprom.i2c.n11_adj_378 ));
    InMux I__1111 (
            .O(N__5350),
            .I(N__5347));
    LocalMux I__1110 (
            .O(N__5347),
            .I(\eeprom.i2c.n13 ));
    InMux I__1109 (
            .O(N__5344),
            .I(N__5341));
    LocalMux I__1108 (
            .O(N__5341),
            .I(\eeprom.i2c.n11_adj_381 ));
    InMux I__1107 (
            .O(N__5338),
            .I(N__5334));
    InMux I__1106 (
            .O(N__5337),
            .I(N__5331));
    LocalMux I__1105 (
            .O(N__5334),
            .I(delay_counter_20));
    LocalMux I__1104 (
            .O(N__5331),
            .I(delay_counter_20));
    InMux I__1103 (
            .O(N__5326),
            .I(n2652));
    InMux I__1102 (
            .O(N__5323),
            .I(N__5319));
    InMux I__1101 (
            .O(N__5322),
            .I(N__5316));
    LocalMux I__1100 (
            .O(N__5319),
            .I(delay_counter_21));
    LocalMux I__1099 (
            .O(N__5316),
            .I(delay_counter_21));
    InMux I__1098 (
            .O(N__5311),
            .I(n2653));
    InMux I__1097 (
            .O(N__5308),
            .I(N__5304));
    InMux I__1096 (
            .O(N__5307),
            .I(N__5301));
    LocalMux I__1095 (
            .O(N__5304),
            .I(delay_counter_22));
    LocalMux I__1094 (
            .O(N__5301),
            .I(delay_counter_22));
    InMux I__1093 (
            .O(N__5296),
            .I(n2654));
    InMux I__1092 (
            .O(N__5293),
            .I(N__5289));
    InMux I__1091 (
            .O(N__5292),
            .I(N__5286));
    LocalMux I__1090 (
            .O(N__5289),
            .I(delay_counter_23));
    LocalMux I__1089 (
            .O(N__5286),
            .I(delay_counter_23));
    InMux I__1088 (
            .O(N__5281),
            .I(n2655));
    InMux I__1087 (
            .O(N__5278),
            .I(N__5274));
    InMux I__1086 (
            .O(N__5277),
            .I(N__5271));
    LocalMux I__1085 (
            .O(N__5274),
            .I(N__5268));
    LocalMux I__1084 (
            .O(N__5271),
            .I(delay_counter_24));
    Odrv4 I__1083 (
            .O(N__5268),
            .I(delay_counter_24));
    InMux I__1082 (
            .O(N__5263),
            .I(bfn_23_16_0_));
    CascadeMux I__1081 (
            .O(N__5260),
            .I(N__5256));
    InMux I__1080 (
            .O(N__5259),
            .I(N__5253));
    InMux I__1079 (
            .O(N__5256),
            .I(N__5250));
    LocalMux I__1078 (
            .O(N__5253),
            .I(delay_counter_25));
    LocalMux I__1077 (
            .O(N__5250),
            .I(delay_counter_25));
    InMux I__1076 (
            .O(N__5245),
            .I(n2657));
    InMux I__1075 (
            .O(N__5242),
            .I(N__5238));
    InMux I__1074 (
            .O(N__5241),
            .I(N__5235));
    LocalMux I__1073 (
            .O(N__5238),
            .I(N__5232));
    LocalMux I__1072 (
            .O(N__5235),
            .I(delay_counter_26));
    Odrv4 I__1071 (
            .O(N__5232),
            .I(delay_counter_26));
    InMux I__1070 (
            .O(N__5227),
            .I(n2658));
    InMux I__1069 (
            .O(N__5224),
            .I(N__5220));
    InMux I__1068 (
            .O(N__5223),
            .I(N__5217));
    LocalMux I__1067 (
            .O(N__5220),
            .I(delay_counter_27));
    LocalMux I__1066 (
            .O(N__5217),
            .I(delay_counter_27));
    InMux I__1065 (
            .O(N__5212),
            .I(n2659));
    InMux I__1064 (
            .O(N__5209),
            .I(N__5205));
    InMux I__1063 (
            .O(N__5208),
            .I(N__5202));
    LocalMux I__1062 (
            .O(N__5205),
            .I(delay_counter_11));
    LocalMux I__1061 (
            .O(N__5202),
            .I(delay_counter_11));
    InMux I__1060 (
            .O(N__5197),
            .I(n2643));
    InMux I__1059 (
            .O(N__5194),
            .I(N__5190));
    InMux I__1058 (
            .O(N__5193),
            .I(N__5187));
    LocalMux I__1057 (
            .O(N__5190),
            .I(delay_counter_12));
    LocalMux I__1056 (
            .O(N__5187),
            .I(delay_counter_12));
    InMux I__1055 (
            .O(N__5182),
            .I(n2644));
    InMux I__1054 (
            .O(N__5179),
            .I(N__5175));
    InMux I__1053 (
            .O(N__5178),
            .I(N__5172));
    LocalMux I__1052 (
            .O(N__5175),
            .I(delay_counter_13));
    LocalMux I__1051 (
            .O(N__5172),
            .I(delay_counter_13));
    InMux I__1050 (
            .O(N__5167),
            .I(n2645));
    InMux I__1049 (
            .O(N__5164),
            .I(N__5160));
    InMux I__1048 (
            .O(N__5163),
            .I(N__5157));
    LocalMux I__1047 (
            .O(N__5160),
            .I(delay_counter_14));
    LocalMux I__1046 (
            .O(N__5157),
            .I(delay_counter_14));
    InMux I__1045 (
            .O(N__5152),
            .I(n2646));
    CascadeMux I__1044 (
            .O(N__5149),
            .I(N__5145));
    InMux I__1043 (
            .O(N__5148),
            .I(N__5142));
    InMux I__1042 (
            .O(N__5145),
            .I(N__5139));
    LocalMux I__1041 (
            .O(N__5142),
            .I(delay_counter_15));
    LocalMux I__1040 (
            .O(N__5139),
            .I(delay_counter_15));
    InMux I__1039 (
            .O(N__5134),
            .I(n2647));
    InMux I__1038 (
            .O(N__5131),
            .I(N__5127));
    InMux I__1037 (
            .O(N__5130),
            .I(N__5124));
    LocalMux I__1036 (
            .O(N__5127),
            .I(delay_counter_16));
    LocalMux I__1035 (
            .O(N__5124),
            .I(delay_counter_16));
    InMux I__1034 (
            .O(N__5119),
            .I(bfn_23_15_0_));
    InMux I__1033 (
            .O(N__5116),
            .I(N__5112));
    InMux I__1032 (
            .O(N__5115),
            .I(N__5109));
    LocalMux I__1031 (
            .O(N__5112),
            .I(delay_counter_17));
    LocalMux I__1030 (
            .O(N__5109),
            .I(delay_counter_17));
    InMux I__1029 (
            .O(N__5104),
            .I(n2649));
    InMux I__1028 (
            .O(N__5101),
            .I(N__5097));
    InMux I__1027 (
            .O(N__5100),
            .I(N__5094));
    LocalMux I__1026 (
            .O(N__5097),
            .I(delay_counter_18));
    LocalMux I__1025 (
            .O(N__5094),
            .I(delay_counter_18));
    InMux I__1024 (
            .O(N__5089),
            .I(n2650));
    InMux I__1023 (
            .O(N__5086),
            .I(N__5082));
    InMux I__1022 (
            .O(N__5085),
            .I(N__5079));
    LocalMux I__1021 (
            .O(N__5082),
            .I(delay_counter_19));
    LocalMux I__1020 (
            .O(N__5079),
            .I(delay_counter_19));
    InMux I__1019 (
            .O(N__5074),
            .I(n2651));
    CascadeMux I__1018 (
            .O(N__5071),
            .I(N__5067));
    InMux I__1017 (
            .O(N__5070),
            .I(N__5064));
    InMux I__1016 (
            .O(N__5067),
            .I(N__5061));
    LocalMux I__1015 (
            .O(N__5064),
            .I(delay_counter_3));
    LocalMux I__1014 (
            .O(N__5061),
            .I(delay_counter_3));
    InMux I__1013 (
            .O(N__5056),
            .I(n2635));
    CascadeMux I__1012 (
            .O(N__5053),
            .I(N__5049));
    InMux I__1011 (
            .O(N__5052),
            .I(N__5046));
    InMux I__1010 (
            .O(N__5049),
            .I(N__5043));
    LocalMux I__1009 (
            .O(N__5046),
            .I(delay_counter_4));
    LocalMux I__1008 (
            .O(N__5043),
            .I(delay_counter_4));
    InMux I__1007 (
            .O(N__5038),
            .I(n2636));
    InMux I__1006 (
            .O(N__5035),
            .I(N__5031));
    InMux I__1005 (
            .O(N__5034),
            .I(N__5028));
    LocalMux I__1004 (
            .O(N__5031),
            .I(N__5025));
    LocalMux I__1003 (
            .O(N__5028),
            .I(delay_counter_5));
    Odrv4 I__1002 (
            .O(N__5025),
            .I(delay_counter_5));
    InMux I__1001 (
            .O(N__5020),
            .I(n2637));
    InMux I__1000 (
            .O(N__5017),
            .I(N__5013));
    InMux I__999 (
            .O(N__5016),
            .I(N__5010));
    LocalMux I__998 (
            .O(N__5013),
            .I(delay_counter_6));
    LocalMux I__997 (
            .O(N__5010),
            .I(delay_counter_6));
    InMux I__996 (
            .O(N__5005),
            .I(n2638));
    InMux I__995 (
            .O(N__5002),
            .I(N__4998));
    InMux I__994 (
            .O(N__5001),
            .I(N__4995));
    LocalMux I__993 (
            .O(N__4998),
            .I(delay_counter_7));
    LocalMux I__992 (
            .O(N__4995),
            .I(delay_counter_7));
    InMux I__991 (
            .O(N__4990),
            .I(n2639));
    InMux I__990 (
            .O(N__4987),
            .I(N__4983));
    InMux I__989 (
            .O(N__4986),
            .I(N__4980));
    LocalMux I__988 (
            .O(N__4983),
            .I(delay_counter_8));
    LocalMux I__987 (
            .O(N__4980),
            .I(delay_counter_8));
    InMux I__986 (
            .O(N__4975),
            .I(bfn_23_14_0_));
    InMux I__985 (
            .O(N__4972),
            .I(N__4968));
    InMux I__984 (
            .O(N__4971),
            .I(N__4965));
    LocalMux I__983 (
            .O(N__4968),
            .I(delay_counter_9));
    LocalMux I__982 (
            .O(N__4965),
            .I(delay_counter_9));
    InMux I__981 (
            .O(N__4960),
            .I(n2641));
    InMux I__980 (
            .O(N__4957),
            .I(N__4953));
    InMux I__979 (
            .O(N__4956),
            .I(N__4950));
    LocalMux I__978 (
            .O(N__4953),
            .I(delay_counter_10));
    LocalMux I__977 (
            .O(N__4950),
            .I(delay_counter_10));
    InMux I__976 (
            .O(N__4945),
            .I(n2642));
    CascadeMux I__975 (
            .O(N__4942),
            .I(N__4939));
    InMux I__974 (
            .O(N__4939),
            .I(N__4936));
    LocalMux I__973 (
            .O(N__4936),
            .I(N__4933));
    Odrv4 I__972 (
            .O(N__4933),
            .I(n2434));
    CascadeMux I__971 (
            .O(N__4930),
            .I(n2434_cascade_));
    InMux I__970 (
            .O(N__4927),
            .I(N__4924));
    LocalMux I__969 (
            .O(N__4924),
            .I(N__4921));
    Odrv4 I__968 (
            .O(N__4921),
            .I(n2958));
    InMux I__967 (
            .O(N__4918),
            .I(N__4911));
    InMux I__966 (
            .O(N__4917),
            .I(N__4907));
    InMux I__965 (
            .O(N__4916),
            .I(N__4900));
    InMux I__964 (
            .O(N__4915),
            .I(N__4900));
    InMux I__963 (
            .O(N__4914),
            .I(N__4900));
    LocalMux I__962 (
            .O(N__4911),
            .I(N__4897));
    InMux I__961 (
            .O(N__4910),
            .I(N__4894));
    LocalMux I__960 (
            .O(N__4907),
            .I(\eeprom.i2c.counter_1 ));
    LocalMux I__959 (
            .O(N__4900),
            .I(\eeprom.i2c.counter_1 ));
    Odrv4 I__958 (
            .O(N__4897),
            .I(\eeprom.i2c.counter_1 ));
    LocalMux I__957 (
            .O(N__4894),
            .I(\eeprom.i2c.counter_1 ));
    InMux I__956 (
            .O(N__4885),
            .I(N__4881));
    InMux I__955 (
            .O(N__4884),
            .I(N__4878));
    LocalMux I__954 (
            .O(N__4881),
            .I(N__4872));
    LocalMux I__953 (
            .O(N__4878),
            .I(N__4869));
    InMux I__952 (
            .O(N__4877),
            .I(N__4866));
    InMux I__951 (
            .O(N__4876),
            .I(N__4863));
    InMux I__950 (
            .O(N__4875),
            .I(N__4860));
    Sp12to4 I__949 (
            .O(N__4872),
            .I(N__4853));
    Sp12to4 I__948 (
            .O(N__4869),
            .I(N__4853));
    LocalMux I__947 (
            .O(N__4866),
            .I(N__4853));
    LocalMux I__946 (
            .O(N__4863),
            .I(\eeprom.i2c.counter_0 ));
    LocalMux I__945 (
            .O(N__4860),
            .I(\eeprom.i2c.counter_0 ));
    Odrv12 I__944 (
            .O(N__4853),
            .I(\eeprom.i2c.counter_0 ));
    CascadeMux I__943 (
            .O(N__4846),
            .I(N__4841));
    CascadeMux I__942 (
            .O(N__4845),
            .I(N__4837));
    InMux I__941 (
            .O(N__4844),
            .I(N__4832));
    InMux I__940 (
            .O(N__4841),
            .I(N__4829));
    InMux I__939 (
            .O(N__4840),
            .I(N__4822));
    InMux I__938 (
            .O(N__4837),
            .I(N__4822));
    InMux I__937 (
            .O(N__4836),
            .I(N__4822));
    InMux I__936 (
            .O(N__4835),
            .I(N__4819));
    LocalMux I__935 (
            .O(N__4832),
            .I(N__4816));
    LocalMux I__934 (
            .O(N__4829),
            .I(\eeprom.i2c.counter_2 ));
    LocalMux I__933 (
            .O(N__4822),
            .I(\eeprom.i2c.counter_2 ));
    LocalMux I__932 (
            .O(N__4819),
            .I(\eeprom.i2c.counter_2 ));
    Odrv4 I__931 (
            .O(N__4816),
            .I(\eeprom.i2c.counter_2 ));
    CascadeMux I__930 (
            .O(N__4807),
            .I(\eeprom.i2c.n2967_cascade_ ));
    InMux I__929 (
            .O(N__4804),
            .I(N__4801));
    LocalMux I__928 (
            .O(N__4801),
            .I(N__4798));
    Span4Mux_v I__927 (
            .O(N__4798),
            .I(N__4794));
    InMux I__926 (
            .O(N__4797),
            .I(N__4791));
    Odrv4 I__925 (
            .O(N__4794),
            .I(rw));
    LocalMux I__924 (
            .O(N__4791),
            .I(rw));
    InMux I__923 (
            .O(N__4786),
            .I(N__4781));
    InMux I__922 (
            .O(N__4785),
            .I(N__4776));
    InMux I__921 (
            .O(N__4784),
            .I(N__4776));
    LocalMux I__920 (
            .O(N__4781),
            .I(saved_addr_0));
    LocalMux I__919 (
            .O(N__4776),
            .I(saved_addr_0));
    InMux I__918 (
            .O(N__4771),
            .I(N__4767));
    InMux I__917 (
            .O(N__4770),
            .I(N__4764));
    LocalMux I__916 (
            .O(N__4767),
            .I(N__4761));
    LocalMux I__915 (
            .O(N__4764),
            .I(N__4758));
    Odrv4 I__914 (
            .O(N__4761),
            .I(\eeprom.enable ));
    Odrv12 I__913 (
            .O(N__4758),
            .I(\eeprom.enable ));
    InMux I__912 (
            .O(N__4753),
            .I(N__4749));
    InMux I__911 (
            .O(N__4752),
            .I(N__4746));
    LocalMux I__910 (
            .O(N__4749),
            .I(delay_counter_0));
    LocalMux I__909 (
            .O(N__4746),
            .I(delay_counter_0));
    InMux I__908 (
            .O(N__4741),
            .I(bfn_23_13_0_));
    InMux I__907 (
            .O(N__4738),
            .I(N__4734));
    InMux I__906 (
            .O(N__4737),
            .I(N__4731));
    LocalMux I__905 (
            .O(N__4734),
            .I(delay_counter_1));
    LocalMux I__904 (
            .O(N__4731),
            .I(delay_counter_1));
    InMux I__903 (
            .O(N__4726),
            .I(n2633));
    InMux I__902 (
            .O(N__4723),
            .I(N__4719));
    InMux I__901 (
            .O(N__4722),
            .I(N__4716));
    LocalMux I__900 (
            .O(N__4719),
            .I(N__4713));
    LocalMux I__899 (
            .O(N__4716),
            .I(delay_counter_2));
    Odrv4 I__898 (
            .O(N__4713),
            .I(delay_counter_2));
    InMux I__897 (
            .O(N__4708),
            .I(n2634));
    CascadeMux I__896 (
            .O(N__4705),
            .I(\eeprom.i2c.n1739_cascade_ ));
    InMux I__895 (
            .O(N__4702),
            .I(N__4698));
    InMux I__894 (
            .O(N__4701),
            .I(N__4695));
    LocalMux I__893 (
            .O(N__4698),
            .I(\eeprom.i2c.n1054 ));
    LocalMux I__892 (
            .O(N__4695),
            .I(\eeprom.i2c.n1054 ));
    InMux I__891 (
            .O(N__4690),
            .I(N__4684));
    InMux I__890 (
            .O(N__4689),
            .I(N__4684));
    LocalMux I__889 (
            .O(N__4684),
            .I(n2414));
    CascadeMux I__888 (
            .O(N__4681),
            .I(n1061_cascade_));
    InMux I__887 (
            .O(N__4678),
            .I(N__4672));
    InMux I__886 (
            .O(N__4677),
            .I(N__4672));
    LocalMux I__885 (
            .O(N__4672),
            .I(N__4669));
    Odrv12 I__884 (
            .O(N__4669),
            .I(\eeprom.i2c.n2869 ));
    CascadeMux I__883 (
            .O(N__4666),
            .I(N__4660));
    InMux I__882 (
            .O(N__4665),
            .I(N__4653));
    InMux I__881 (
            .O(N__4664),
            .I(N__4644));
    InMux I__880 (
            .O(N__4663),
            .I(N__4644));
    InMux I__879 (
            .O(N__4660),
            .I(N__4644));
    InMux I__878 (
            .O(N__4659),
            .I(N__4644));
    CascadeMux I__877 (
            .O(N__4658),
            .I(N__4640));
    CascadeMux I__876 (
            .O(N__4657),
            .I(N__4636));
    CascadeMux I__875 (
            .O(N__4656),
            .I(N__4632));
    LocalMux I__874 (
            .O(N__4653),
            .I(N__4626));
    LocalMux I__873 (
            .O(N__4644),
            .I(N__4626));
    InMux I__872 (
            .O(N__4643),
            .I(N__4623));
    InMux I__871 (
            .O(N__4640),
            .I(N__4620));
    CascadeMux I__870 (
            .O(N__4639),
            .I(N__4616));
    InMux I__869 (
            .O(N__4636),
            .I(N__4613));
    InMux I__868 (
            .O(N__4635),
            .I(N__4608));
    InMux I__867 (
            .O(N__4632),
            .I(N__4608));
    InMux I__866 (
            .O(N__4631),
            .I(N__4605));
    Span4Mux_h I__865 (
            .O(N__4626),
            .I(N__4598));
    LocalMux I__864 (
            .O(N__4623),
            .I(N__4598));
    LocalMux I__863 (
            .O(N__4620),
            .I(N__4598));
    InMux I__862 (
            .O(N__4619),
            .I(N__4593));
    InMux I__861 (
            .O(N__4616),
            .I(N__4593));
    LocalMux I__860 (
            .O(N__4613),
            .I(N__4586));
    LocalMux I__859 (
            .O(N__4608),
            .I(N__4586));
    LocalMux I__858 (
            .O(N__4605),
            .I(N__4586));
    Span4Mux_v I__857 (
            .O(N__4598),
            .I(N__4581));
    LocalMux I__856 (
            .O(N__4593),
            .I(N__4581));
    Span4Mux_v I__855 (
            .O(N__4586),
            .I(N__4578));
    Span4Mux_v I__854 (
            .O(N__4581),
            .I(N__4575));
    Span4Mux_v I__853 (
            .O(N__4578),
            .I(N__4572));
    Span4Mux_h I__852 (
            .O(N__4575),
            .I(N__4569));
    Sp12to4 I__851 (
            .O(N__4572),
            .I(N__4566));
    Span4Mux_h I__850 (
            .O(N__4569),
            .I(N__4563));
    Odrv12 I__849 (
            .O(N__4566),
            .I(state_7_N_289_3));
    Odrv4 I__848 (
            .O(N__4563),
            .I(state_7_N_289_3));
    CEMux I__847 (
            .O(N__4558),
            .I(N__4555));
    LocalMux I__846 (
            .O(N__4555),
            .I(N__4550));
    CEMux I__845 (
            .O(N__4554),
            .I(N__4547));
    CEMux I__844 (
            .O(N__4553),
            .I(N__4544));
    Span4Mux_v I__843 (
            .O(N__4550),
            .I(N__4540));
    LocalMux I__842 (
            .O(N__4547),
            .I(N__4535));
    LocalMux I__841 (
            .O(N__4544),
            .I(N__4535));
    CascadeMux I__840 (
            .O(N__4543),
            .I(N__4531));
    Span4Mux_h I__839 (
            .O(N__4540),
            .I(N__4527));
    Span4Mux_v I__838 (
            .O(N__4535),
            .I(N__4524));
    InMux I__837 (
            .O(N__4534),
            .I(N__4521));
    InMux I__836 (
            .O(N__4531),
            .I(N__4518));
    InMux I__835 (
            .O(N__4530),
            .I(N__4515));
    Odrv4 I__834 (
            .O(N__4527),
            .I(n1061));
    Odrv4 I__833 (
            .O(N__4524),
            .I(n1061));
    LocalMux I__832 (
            .O(N__4521),
            .I(n1061));
    LocalMux I__831 (
            .O(N__4518),
            .I(n1061));
    LocalMux I__830 (
            .O(N__4515),
            .I(n1061));
    SRMux I__829 (
            .O(N__4504),
            .I(N__4501));
    LocalMux I__828 (
            .O(N__4501),
            .I(N__4498));
    Span4Mux_h I__827 (
            .O(N__4498),
            .I(N__4495));
    Odrv4 I__826 (
            .O(N__4495),
            .I(\eeprom.i2c.n2479 ));
    CascadeMux I__825 (
            .O(N__4492),
            .I(N__4489));
    InMux I__824 (
            .O(N__4489),
            .I(N__4486));
    LocalMux I__823 (
            .O(N__4486),
            .I(\eeprom.i2c.n10 ));
    InMux I__822 (
            .O(N__4483),
            .I(N__4480));
    LocalMux I__821 (
            .O(N__4480),
            .I(N__4477));
    Odrv4 I__820 (
            .O(N__4477),
            .I(\eeprom.i2c.n7 ));
    InMux I__819 (
            .O(N__4474),
            .I(N__4468));
    CascadeMux I__818 (
            .O(N__4473),
            .I(N__4463));
    CascadeMux I__817 (
            .O(N__4472),
            .I(N__4459));
    CascadeMux I__816 (
            .O(N__4471),
            .I(N__4455));
    LocalMux I__815 (
            .O(N__4468),
            .I(N__4452));
    InMux I__814 (
            .O(N__4467),
            .I(N__4437));
    InMux I__813 (
            .O(N__4466),
            .I(N__4437));
    InMux I__812 (
            .O(N__4463),
            .I(N__4437));
    InMux I__811 (
            .O(N__4462),
            .I(N__4437));
    InMux I__810 (
            .O(N__4459),
            .I(N__4437));
    InMux I__809 (
            .O(N__4458),
            .I(N__4437));
    InMux I__808 (
            .O(N__4455),
            .I(N__4437));
    Odrv4 I__807 (
            .O(N__4452),
            .I(CONSTANT_ONE_NET));
    LocalMux I__806 (
            .O(N__4437),
            .I(CONSTANT_ONE_NET));
    CascadeMux I__805 (
            .O(N__4432),
            .I(n22_cascade_));
    CascadeMux I__804 (
            .O(N__4429),
            .I(n25_cascade_));
    InMux I__803 (
            .O(N__4426),
            .I(N__4421));
    InMux I__802 (
            .O(N__4425),
            .I(N__4416));
    InMux I__801 (
            .O(N__4424),
            .I(N__4416));
    LocalMux I__800 (
            .O(N__4421),
            .I(n104));
    LocalMux I__799 (
            .O(N__4416),
            .I(n104));
    InMux I__798 (
            .O(N__4411),
            .I(N__4408));
    LocalMux I__797 (
            .O(N__4408),
            .I(n24));
    InMux I__796 (
            .O(N__4405),
            .I(N__4402));
    LocalMux I__795 (
            .O(N__4402),
            .I(N__4399));
    Odrv4 I__794 (
            .O(N__4399),
            .I(n23));
    CEMux I__793 (
            .O(N__4396),
            .I(N__4392));
    CEMux I__792 (
            .O(N__4395),
            .I(N__4389));
    LocalMux I__791 (
            .O(N__4392),
            .I(N__4386));
    LocalMux I__790 (
            .O(N__4389),
            .I(N__4383));
    Odrv12 I__789 (
            .O(N__4386),
            .I(\eeprom.i2c.n1837 ));
    Odrv12 I__788 (
            .O(N__4383),
            .I(\eeprom.i2c.n1837 ));
    SRMux I__787 (
            .O(N__4378),
            .I(N__4374));
    SRMux I__786 (
            .O(N__4377),
            .I(N__4371));
    LocalMux I__785 (
            .O(N__4374),
            .I(N__4368));
    LocalMux I__784 (
            .O(N__4371),
            .I(N__4365));
    Odrv12 I__783 (
            .O(N__4368),
            .I(\eeprom.i2c.n1928 ));
    Odrv12 I__782 (
            .O(N__4365),
            .I(\eeprom.i2c.n1928 ));
    InMux I__781 (
            .O(N__4360),
            .I(N__4356));
    InMux I__780 (
            .O(N__4359),
            .I(N__4353));
    LocalMux I__779 (
            .O(N__4356),
            .I(\eeprom.i2c.n37 ));
    LocalMux I__778 (
            .O(N__4353),
            .I(\eeprom.i2c.n37 ));
    InMux I__777 (
            .O(N__4348),
            .I(N__4344));
    InMux I__776 (
            .O(N__4347),
            .I(N__4341));
    LocalMux I__775 (
            .O(N__4344),
            .I(\eeprom.i2c.n33 ));
    LocalMux I__774 (
            .O(N__4341),
            .I(\eeprom.i2c.n33 ));
    InMux I__773 (
            .O(N__4336),
            .I(N__4331));
    InMux I__772 (
            .O(N__4335),
            .I(N__4328));
    InMux I__771 (
            .O(N__4334),
            .I(N__4325));
    LocalMux I__770 (
            .O(N__4331),
            .I(N__4322));
    LocalMux I__769 (
            .O(N__4328),
            .I(\eeprom.i2c.n9 ));
    LocalMux I__768 (
            .O(N__4325),
            .I(\eeprom.i2c.n9 ));
    Odrv12 I__767 (
            .O(N__4322),
            .I(\eeprom.i2c.n9 ));
    InMux I__766 (
            .O(N__4315),
            .I(N__4312));
    LocalMux I__765 (
            .O(N__4312),
            .I(N__4307));
    InMux I__764 (
            .O(N__4311),
            .I(N__4302));
    InMux I__763 (
            .O(N__4310),
            .I(N__4302));
    Odrv4 I__762 (
            .O(N__4307),
            .I(\eeprom.i2c.n10_adj_384 ));
    LocalMux I__761 (
            .O(N__4302),
            .I(\eeprom.i2c.n10_adj_384 ));
    InMux I__760 (
            .O(N__4297),
            .I(N__4291));
    InMux I__759 (
            .O(N__4296),
            .I(N__4291));
    LocalMux I__758 (
            .O(N__4291),
            .I(n4_adj_393));
    InMux I__757 (
            .O(N__4288),
            .I(N__4285));
    LocalMux I__756 (
            .O(N__4285),
            .I(n14));
    CascadeMux I__755 (
            .O(N__4282),
            .I(n13_cascade_));
    CascadeMux I__754 (
            .O(N__4279),
            .I(n18_cascade_));
    CascadeMux I__753 (
            .O(N__4276),
            .I(n2935_cascade_));
    InMux I__752 (
            .O(N__4273),
            .I(N__4270));
    LocalMux I__751 (
            .O(N__4270),
            .I(n2939));
    CascadeMux I__750 (
            .O(N__4267),
            .I(n36_cascade_));
    InMux I__749 (
            .O(N__4264),
            .I(\eeprom.i2c.n2669 ));
    InMux I__748 (
            .O(N__4261),
            .I(\eeprom.i2c.n2670 ));
    InMux I__747 (
            .O(N__4258),
            .I(N__4254));
    InMux I__746 (
            .O(N__4257),
            .I(N__4251));
    LocalMux I__745 (
            .O(N__4254),
            .I(N__4248));
    LocalMux I__744 (
            .O(N__4251),
            .I(\eeprom.i2c.counter_7 ));
    Odrv4 I__743 (
            .O(N__4248),
            .I(\eeprom.i2c.counter_7 ));
    InMux I__742 (
            .O(N__4243),
            .I(N__4240));
    LocalMux I__741 (
            .O(N__4240),
            .I(n14_adj_395));
    CascadeMux I__740 (
            .O(N__4237),
            .I(n4_adj_394_cascade_));
    InMux I__739 (
            .O(N__4234),
            .I(N__4228));
    InMux I__738 (
            .O(N__4233),
            .I(N__4228));
    LocalMux I__737 (
            .O(N__4228),
            .I(data_4));
    InMux I__736 (
            .O(N__4225),
            .I(N__4219));
    InMux I__735 (
            .O(N__4224),
            .I(N__4214));
    InMux I__734 (
            .O(N__4223),
            .I(N__4214));
    InMux I__733 (
            .O(N__4222),
            .I(N__4211));
    LocalMux I__732 (
            .O(N__4219),
            .I(N__4206));
    LocalMux I__731 (
            .O(N__4214),
            .I(N__4206));
    LocalMux I__730 (
            .O(N__4211),
            .I(n1717));
    Odrv4 I__729 (
            .O(N__4206),
            .I(n1717));
    CascadeMux I__728 (
            .O(N__4201),
            .I(N__4197));
    InMux I__727 (
            .O(N__4200),
            .I(N__4192));
    InMux I__726 (
            .O(N__4197),
            .I(N__4192));
    LocalMux I__725 (
            .O(N__4192),
            .I(data_6));
    InMux I__724 (
            .O(N__4189),
            .I(N__4186));
    LocalMux I__723 (
            .O(N__4186),
            .I(n2424));
    CascadeMux I__722 (
            .O(N__4183),
            .I(n2424_cascade_));
    InMux I__721 (
            .O(N__4180),
            .I(N__4174));
    InMux I__720 (
            .O(N__4179),
            .I(N__4174));
    LocalMux I__719 (
            .O(N__4174),
            .I(data_7));
    InMux I__718 (
            .O(N__4171),
            .I(N__4168));
    LocalMux I__717 (
            .O(N__4168),
            .I(n4_adj_394));
    InMux I__716 (
            .O(N__4165),
            .I(N__4159));
    InMux I__715 (
            .O(N__4164),
            .I(N__4154));
    InMux I__714 (
            .O(N__4163),
            .I(N__4154));
    InMux I__713 (
            .O(N__4162),
            .I(N__4151));
    LocalMux I__712 (
            .O(N__4159),
            .I(n1722));
    LocalMux I__711 (
            .O(N__4154),
            .I(n1722));
    LocalMux I__710 (
            .O(N__4151),
            .I(n1722));
    CascadeMux I__709 (
            .O(N__4144),
            .I(N__4141));
    InMux I__708 (
            .O(N__4141),
            .I(N__4135));
    InMux I__707 (
            .O(N__4140),
            .I(N__4135));
    LocalMux I__706 (
            .O(N__4135),
            .I(data_5));
    CascadeMux I__705 (
            .O(N__4132),
            .I(\eeprom.i2c.n15_cascade_ ));
    SRMux I__704 (
            .O(N__4129),
            .I(N__4126));
    LocalMux I__703 (
            .O(N__4126),
            .I(N__4123));
    Span4Mux_v I__702 (
            .O(N__4123),
            .I(N__4120));
    Odrv4 I__701 (
            .O(N__4120),
            .I(\eeprom.i2c.n2454 ));
    InMux I__700 (
            .O(N__4117),
            .I(N__4113));
    InMux I__699 (
            .O(N__4116),
            .I(N__4110));
    LocalMux I__698 (
            .O(N__4113),
            .I(\eeprom.i2c.n15 ));
    LocalMux I__697 (
            .O(N__4110),
            .I(\eeprom.i2c.n15 ));
    InMux I__696 (
            .O(N__4105),
            .I(\eeprom.i2c.n2664 ));
    InMux I__695 (
            .O(N__4102),
            .I(\eeprom.i2c.n2665 ));
    InMux I__694 (
            .O(N__4099),
            .I(N__4095));
    InMux I__693 (
            .O(N__4098),
            .I(N__4092));
    LocalMux I__692 (
            .O(N__4095),
            .I(N__4089));
    LocalMux I__691 (
            .O(N__4092),
            .I(\eeprom.i2c.counter_3 ));
    Odrv4 I__690 (
            .O(N__4089),
            .I(\eeprom.i2c.counter_3 ));
    InMux I__689 (
            .O(N__4084),
            .I(\eeprom.i2c.n2666 ));
    CascadeMux I__688 (
            .O(N__4081),
            .I(N__4077));
    InMux I__687 (
            .O(N__4080),
            .I(N__4074));
    InMux I__686 (
            .O(N__4077),
            .I(N__4071));
    LocalMux I__685 (
            .O(N__4074),
            .I(N__4068));
    LocalMux I__684 (
            .O(N__4071),
            .I(\eeprom.i2c.counter_4 ));
    Odrv4 I__683 (
            .O(N__4068),
            .I(\eeprom.i2c.counter_4 ));
    InMux I__682 (
            .O(N__4063),
            .I(\eeprom.i2c.n2667 ));
    InMux I__681 (
            .O(N__4060),
            .I(N__4056));
    InMux I__680 (
            .O(N__4059),
            .I(N__4053));
    LocalMux I__679 (
            .O(N__4056),
            .I(N__4050));
    LocalMux I__678 (
            .O(N__4053),
            .I(\eeprom.i2c.counter_5 ));
    Odrv4 I__677 (
            .O(N__4050),
            .I(\eeprom.i2c.counter_5 ));
    InMux I__676 (
            .O(N__4045),
            .I(\eeprom.i2c.n2668 ));
    CascadeMux I__675 (
            .O(N__4042),
            .I(N__4038));
    InMux I__674 (
            .O(N__4041),
            .I(N__4035));
    InMux I__673 (
            .O(N__4038),
            .I(N__4032));
    LocalMux I__672 (
            .O(N__4035),
            .I(N__4029));
    LocalMux I__671 (
            .O(N__4032),
            .I(\eeprom.i2c.counter_6 ));
    Odrv12 I__670 (
            .O(N__4029),
            .I(\eeprom.i2c.counter_6 ));
    SRMux I__669 (
            .O(N__4024),
            .I(N__4021));
    LocalMux I__668 (
            .O(N__4021),
            .I(N__4018));
    Odrv4 I__667 (
            .O(N__4018),
            .I(\eeprom.i2c.n2927 ));
    InMux I__666 (
            .O(N__4015),
            .I(N__4009));
    InMux I__665 (
            .O(N__4014),
            .I(N__4009));
    LocalMux I__664 (
            .O(N__4009),
            .I(N__4006));
    Odrv4 I__663 (
            .O(N__4006),
            .I(n4));
    CascadeMux I__662 (
            .O(N__4003),
            .I(n4_cascade_));
    CascadeMux I__661 (
            .O(N__4000),
            .I(\eeprom.i2c.n2951_cascade_ ));
    CascadeMux I__660 (
            .O(N__3997),
            .I(\eeprom.i2c.n37_cascade_ ));
    SRMux I__659 (
            .O(N__3994),
            .I(N__3991));
    LocalMux I__658 (
            .O(N__3991),
            .I(N__3987));
    InMux I__657 (
            .O(N__3990),
            .I(N__3984));
    Odrv4 I__656 (
            .O(N__3987),
            .I(\eeprom.i2c.n1935 ));
    LocalMux I__655 (
            .O(N__3984),
            .I(\eeprom.i2c.n1935 ));
    CascadeMux I__654 (
            .O(N__3979),
            .I(N__3975));
    InMux I__653 (
            .O(N__3978),
            .I(N__3962));
    InMux I__652 (
            .O(N__3975),
            .I(N__3962));
    InMux I__651 (
            .O(N__3974),
            .I(N__3962));
    InMux I__650 (
            .O(N__3973),
            .I(N__3962));
    InMux I__649 (
            .O(N__3972),
            .I(N__3957));
    InMux I__648 (
            .O(N__3971),
            .I(N__3957));
    LocalMux I__647 (
            .O(N__3962),
            .I(ID_READOUT_FSM_state_0));
    LocalMux I__646 (
            .O(N__3957),
            .I(ID_READOUT_FSM_state_0));
    CascadeMux I__645 (
            .O(N__3952),
            .I(n20_cascade_));
    InMux I__644 (
            .O(N__3949),
            .I(N__3943));
    InMux I__643 (
            .O(N__3948),
            .I(N__3943));
    LocalMux I__642 (
            .O(N__3943),
            .I(n6));
    InMux I__641 (
            .O(N__3940),
            .I(N__3937));
    LocalMux I__640 (
            .O(N__3937),
            .I(n1841));
    CascadeMux I__639 (
            .O(N__3934),
            .I(\eeprom.i2c.n9_cascade_ ));
    InMux I__638 (
            .O(N__3931),
            .I(N__3928));
    LocalMux I__637 (
            .O(N__3928),
            .I(\eeprom.i2c.n2873 ));
    InMux I__636 (
            .O(N__3925),
            .I(N__3921));
    InMux I__635 (
            .O(N__3924),
            .I(N__3918));
    LocalMux I__634 (
            .O(N__3921),
            .I(\eeprom.i2c.counter2_2 ));
    LocalMux I__633 (
            .O(N__3918),
            .I(\eeprom.i2c.counter2_2 ));
    InMux I__632 (
            .O(N__3913),
            .I(N__3909));
    InMux I__631 (
            .O(N__3912),
            .I(N__3906));
    LocalMux I__630 (
            .O(N__3909),
            .I(\eeprom.i2c.counter2_5 ));
    LocalMux I__629 (
            .O(N__3906),
            .I(\eeprom.i2c.counter2_5 ));
    CascadeMux I__628 (
            .O(N__3901),
            .I(N__3898));
    InMux I__627 (
            .O(N__3898),
            .I(N__3894));
    InMux I__626 (
            .O(N__3897),
            .I(N__3891));
    LocalMux I__625 (
            .O(N__3894),
            .I(N__3888));
    LocalMux I__624 (
            .O(N__3891),
            .I(\eeprom.i2c.counter2_4 ));
    Odrv4 I__623 (
            .O(N__3888),
            .I(\eeprom.i2c.counter2_4 ));
    InMux I__622 (
            .O(N__3883),
            .I(N__3879));
    InMux I__621 (
            .O(N__3882),
            .I(N__3876));
    LocalMux I__620 (
            .O(N__3879),
            .I(\eeprom.i2c.counter2_3 ));
    LocalMux I__619 (
            .O(N__3876),
            .I(\eeprom.i2c.counter2_3 ));
    InMux I__618 (
            .O(N__3871),
            .I(N__3867));
    InMux I__617 (
            .O(N__3870),
            .I(N__3864));
    LocalMux I__616 (
            .O(N__3867),
            .I(\eeprom.i2c.counter2_1 ));
    LocalMux I__615 (
            .O(N__3864),
            .I(\eeprom.i2c.counter2_1 ));
    CascadeMux I__614 (
            .O(N__3859),
            .I(\eeprom.i2c.n10_adj_379_cascade_ ));
    InMux I__613 (
            .O(N__3856),
            .I(N__3852));
    InMux I__612 (
            .O(N__3855),
            .I(N__3849));
    LocalMux I__611 (
            .O(N__3852),
            .I(\eeprom.i2c.counter2_0 ));
    LocalMux I__610 (
            .O(N__3849),
            .I(\eeprom.i2c.counter2_0 ));
    CascadeMux I__609 (
            .O(N__3844),
            .I(N__3841));
    InMux I__608 (
            .O(N__3841),
            .I(N__3838));
    LocalMux I__607 (
            .O(N__3838),
            .I(\eeprom.i2c.n1171 ));
    InMux I__606 (
            .O(N__3835),
            .I(N__3832));
    LocalMux I__605 (
            .O(N__3832),
            .I(N__3825));
    InMux I__604 (
            .O(N__3831),
            .I(N__3820));
    InMux I__603 (
            .O(N__3830),
            .I(N__3820));
    InMux I__602 (
            .O(N__3829),
            .I(N__3817));
    InMux I__601 (
            .O(N__3828),
            .I(N__3814));
    Odrv4 I__600 (
            .O(N__3825),
            .I(read));
    LocalMux I__599 (
            .O(N__3820),
            .I(read));
    LocalMux I__598 (
            .O(N__3817),
            .I(read));
    LocalMux I__597 (
            .O(N__3814),
            .I(read));
    InMux I__596 (
            .O(N__3805),
            .I(N__3802));
    LocalMux I__595 (
            .O(N__3802),
            .I(N__3797));
    InMux I__594 (
            .O(N__3801),
            .I(N__3794));
    InMux I__593 (
            .O(N__3800),
            .I(N__3791));
    Odrv4 I__592 (
            .O(N__3797),
            .I(\eeprom.n1703 ));
    LocalMux I__591 (
            .O(N__3794),
            .I(\eeprom.n1703 ));
    LocalMux I__590 (
            .O(N__3791),
            .I(\eeprom.n1703 ));
    CascadeMux I__589 (
            .O(N__3784),
            .I(n805_cascade_));
    SRMux I__588 (
            .O(N__3781),
            .I(N__3778));
    LocalMux I__587 (
            .O(N__3778),
            .I(N__3768));
    InMux I__586 (
            .O(N__3777),
            .I(N__3763));
    InMux I__585 (
            .O(N__3776),
            .I(N__3763));
    InMux I__584 (
            .O(N__3775),
            .I(N__3760));
    InMux I__583 (
            .O(N__3774),
            .I(N__3753));
    InMux I__582 (
            .O(N__3773),
            .I(N__3753));
    InMux I__581 (
            .O(N__3772),
            .I(N__3753));
    InMux I__580 (
            .O(N__3771),
            .I(N__3750));
    Odrv4 I__579 (
            .O(N__3768),
            .I(state_1));
    LocalMux I__578 (
            .O(N__3763),
            .I(state_1));
    LocalMux I__577 (
            .O(N__3760),
            .I(state_1));
    LocalMux I__576 (
            .O(N__3753),
            .I(state_1));
    LocalMux I__575 (
            .O(N__3750),
            .I(state_1));
    CascadeMux I__574 (
            .O(N__3739),
            .I(N__3732));
    CascadeMux I__573 (
            .O(N__3738),
            .I(N__3728));
    CascadeMux I__572 (
            .O(N__3737),
            .I(N__3725));
    CascadeMux I__571 (
            .O(N__3736),
            .I(N__3721));
    InMux I__570 (
            .O(N__3735),
            .I(N__3715));
    InMux I__569 (
            .O(N__3732),
            .I(N__3712));
    InMux I__568 (
            .O(N__3731),
            .I(N__3707));
    InMux I__567 (
            .O(N__3728),
            .I(N__3707));
    InMux I__566 (
            .O(N__3725),
            .I(N__3702));
    InMux I__565 (
            .O(N__3724),
            .I(N__3702));
    InMux I__564 (
            .O(N__3721),
            .I(N__3697));
    InMux I__563 (
            .O(N__3720),
            .I(N__3697));
    InMux I__562 (
            .O(N__3719),
            .I(N__3694));
    InMux I__561 (
            .O(N__3718),
            .I(N__3691));
    LocalMux I__560 (
            .O(N__3715),
            .I(state_0));
    LocalMux I__559 (
            .O(N__3712),
            .I(state_0));
    LocalMux I__558 (
            .O(N__3707),
            .I(state_0));
    LocalMux I__557 (
            .O(N__3702),
            .I(state_0));
    LocalMux I__556 (
            .O(N__3697),
            .I(state_0));
    LocalMux I__555 (
            .O(N__3694),
            .I(state_0));
    LocalMux I__554 (
            .O(N__3691),
            .I(state_0));
    InMux I__553 (
            .O(N__3676),
            .I(N__3670));
    InMux I__552 (
            .O(N__3675),
            .I(N__3670));
    LocalMux I__551 (
            .O(N__3670),
            .I(data_ready));
    InMux I__550 (
            .O(N__3667),
            .I(N__3664));
    LocalMux I__549 (
            .O(N__3664),
            .I(n2476));
    CascadeMux I__548 (
            .O(N__3661),
            .I(n2476_cascade_));
    InMux I__547 (
            .O(N__3658),
            .I(N__3651));
    InMux I__546 (
            .O(N__3657),
            .I(N__3651));
    InMux I__545 (
            .O(N__3656),
            .I(N__3648));
    LocalMux I__544 (
            .O(N__3651),
            .I(N__3645));
    LocalMux I__543 (
            .O(N__3648),
            .I(N__3642));
    Odrv4 I__542 (
            .O(N__3645),
            .I(n15));
    Odrv4 I__541 (
            .O(N__3642),
            .I(n15));
    CascadeMux I__540 (
            .O(N__3637),
            .I(N__3633));
    InMux I__539 (
            .O(N__3636),
            .I(N__3622));
    InMux I__538 (
            .O(N__3633),
            .I(N__3622));
    InMux I__537 (
            .O(N__3632),
            .I(N__3622));
    InMux I__536 (
            .O(N__3631),
            .I(N__3615));
    InMux I__535 (
            .O(N__3630),
            .I(N__3615));
    InMux I__534 (
            .O(N__3629),
            .I(N__3615));
    LocalMux I__533 (
            .O(N__3622),
            .I(ID_READOUT_FSM_state_1));
    LocalMux I__532 (
            .O(N__3615),
            .I(ID_READOUT_FSM_state_1));
    InMux I__531 (
            .O(N__3610),
            .I(N__3607));
    LocalMux I__530 (
            .O(N__3607),
            .I(n20));
    CascadeMux I__529 (
            .O(N__3604),
            .I(N__3600));
    InMux I__528 (
            .O(N__3603),
            .I(N__3595));
    InMux I__527 (
            .O(N__3600),
            .I(N__3595));
    LocalMux I__526 (
            .O(N__3595),
            .I(data_2));
    CascadeMux I__525 (
            .O(N__3592),
            .I(N__3588));
    InMux I__524 (
            .O(N__3591),
            .I(N__3585));
    InMux I__523 (
            .O(N__3588),
            .I(N__3582));
    LocalMux I__522 (
            .O(N__3585),
            .I(data_1));
    LocalMux I__521 (
            .O(N__3582),
            .I(data_1));
    InMux I__520 (
            .O(N__3577),
            .I(N__3571));
    InMux I__519 (
            .O(N__3576),
            .I(N__3571));
    LocalMux I__518 (
            .O(N__3571),
            .I(data_3));
    InMux I__517 (
            .O(N__3568),
            .I(N__3565));
    LocalMux I__516 (
            .O(N__3565),
            .I(N__3561));
    InMux I__515 (
            .O(N__3564),
            .I(N__3558));
    Odrv4 I__514 (
            .O(N__3561),
            .I(data_0));
    LocalMux I__513 (
            .O(N__3558),
            .I(data_0));
    CascadeMux I__512 (
            .O(N__3553),
            .I(n10_cascade_));
    CascadeMux I__511 (
            .O(N__3550),
            .I(N__3547));
    InMux I__510 (
            .O(N__3547),
            .I(N__3544));
    LocalMux I__509 (
            .O(N__3544),
            .I(\eeprom.n4 ));
    InMux I__508 (
            .O(N__3541),
            .I(N__3538));
    LocalMux I__507 (
            .O(N__3538),
            .I(\eeprom.n22 ));
    InMux I__506 (
            .O(N__3535),
            .I(N__3532));
    LocalMux I__505 (
            .O(N__3532),
            .I(\eeprom.n26 ));
    InMux I__504 (
            .O(N__3529),
            .I(N__3523));
    InMux I__503 (
            .O(N__3528),
            .I(N__3523));
    LocalMux I__502 (
            .O(N__3523),
            .I(\eeprom.n2727 ));
    CascadeMux I__501 (
            .O(N__3520),
            .I(\eeprom.n2727_cascade_ ));
    InMux I__500 (
            .O(N__3517),
            .I(N__3514));
    LocalMux I__499 (
            .O(N__3514),
            .I(\eeprom.i2c.n2881 ));
    CascadeMux I__498 (
            .O(N__3511),
            .I(\eeprom.i2c.n10_adj_384_cascade_ ));
    InMux I__497 (
            .O(N__3508),
            .I(N__3505));
    LocalMux I__496 (
            .O(N__3505),
            .I(\eeprom.i2c.n10_adj_377 ));
    InMux I__495 (
            .O(N__3502),
            .I(N__3499));
    LocalMux I__494 (
            .O(N__3499),
            .I(\eeprom.i2c.n2972 ));
    CascadeMux I__493 (
            .O(N__3496),
            .I(N__3493));
    InMux I__492 (
            .O(N__3493),
            .I(N__3489));
    InMux I__491 (
            .O(N__3492),
            .I(N__3486));
    LocalMux I__490 (
            .O(N__3489),
            .I(\eeprom.delay_counter_12 ));
    LocalMux I__489 (
            .O(N__3486),
            .I(\eeprom.delay_counter_12 ));
    CascadeMux I__488 (
            .O(N__3481),
            .I(N__3478));
    InMux I__487 (
            .O(N__3478),
            .I(N__3474));
    InMux I__486 (
            .O(N__3477),
            .I(N__3471));
    LocalMux I__485 (
            .O(N__3474),
            .I(\eeprom.delay_counter_10 ));
    LocalMux I__484 (
            .O(N__3471),
            .I(\eeprom.delay_counter_10 ));
    CascadeMux I__483 (
            .O(N__3466),
            .I(N__3462));
    CascadeMux I__482 (
            .O(N__3465),
            .I(N__3459));
    InMux I__481 (
            .O(N__3462),
            .I(N__3456));
    InMux I__480 (
            .O(N__3459),
            .I(N__3453));
    LocalMux I__479 (
            .O(N__3456),
            .I(\eeprom.delay_counter_8 ));
    LocalMux I__478 (
            .O(N__3453),
            .I(\eeprom.delay_counter_8 ));
    CascadeMux I__477 (
            .O(N__3448),
            .I(N__3445));
    InMux I__476 (
            .O(N__3445),
            .I(N__3441));
    InMux I__475 (
            .O(N__3444),
            .I(N__3438));
    LocalMux I__474 (
            .O(N__3441),
            .I(\eeprom.delay_counter_6 ));
    LocalMux I__473 (
            .O(N__3438),
            .I(\eeprom.delay_counter_6 ));
    InMux I__472 (
            .O(N__3433),
            .I(N__3430));
    LocalMux I__471 (
            .O(N__3430),
            .I(\eeprom.n26_adj_388 ));
    InMux I__470 (
            .O(N__3427),
            .I(N__3424));
    LocalMux I__469 (
            .O(N__3424),
            .I(\eeprom.n27 ));
    CascadeMux I__468 (
            .O(N__3421),
            .I(\eeprom.n28_cascade_ ));
    InMux I__467 (
            .O(N__3418),
            .I(N__3415));
    LocalMux I__466 (
            .O(N__3415),
            .I(\eeprom.n25 ));
    CascadeMux I__465 (
            .O(N__3412),
            .I(\eeprom.n1703_cascade_ ));
    CascadeMux I__464 (
            .O(N__3409),
            .I(N__3398));
    CascadeMux I__463 (
            .O(N__3408),
            .I(N__3394));
    CascadeMux I__462 (
            .O(N__3407),
            .I(N__3390));
    CascadeMux I__461 (
            .O(N__3406),
            .I(N__3386));
    CascadeMux I__460 (
            .O(N__3405),
            .I(N__3382));
    CascadeMux I__459 (
            .O(N__3404),
            .I(N__3378));
    CascadeMux I__458 (
            .O(N__3403),
            .I(N__3374));
    InMux I__457 (
            .O(N__3402),
            .I(N__3356));
    InMux I__456 (
            .O(N__3401),
            .I(N__3356));
    InMux I__455 (
            .O(N__3398),
            .I(N__3356));
    InMux I__454 (
            .O(N__3397),
            .I(N__3356));
    InMux I__453 (
            .O(N__3394),
            .I(N__3356));
    InMux I__452 (
            .O(N__3393),
            .I(N__3356));
    InMux I__451 (
            .O(N__3390),
            .I(N__3356));
    InMux I__450 (
            .O(N__3389),
            .I(N__3356));
    InMux I__449 (
            .O(N__3386),
            .I(N__3339));
    InMux I__448 (
            .O(N__3385),
            .I(N__3339));
    InMux I__447 (
            .O(N__3382),
            .I(N__3339));
    InMux I__446 (
            .O(N__3381),
            .I(N__3339));
    InMux I__445 (
            .O(N__3378),
            .I(N__3339));
    InMux I__444 (
            .O(N__3377),
            .I(N__3339));
    InMux I__443 (
            .O(N__3374),
            .I(N__3339));
    InMux I__442 (
            .O(N__3373),
            .I(N__3339));
    LocalMux I__441 (
            .O(N__3356),
            .I(\eeprom.n730 ));
    LocalMux I__440 (
            .O(N__3339),
            .I(\eeprom.n730 ));
    InMux I__439 (
            .O(N__3334),
            .I(bfn_21_8_0_));
    InMux I__438 (
            .O(N__3331),
            .I(\eeprom.i2c.n2686 ));
    InMux I__437 (
            .O(N__3328),
            .I(\eeprom.i2c.n2687 ));
    InMux I__436 (
            .O(N__3325),
            .I(\eeprom.i2c.n2688 ));
    InMux I__435 (
            .O(N__3322),
            .I(\eeprom.i2c.n2689 ));
    InMux I__434 (
            .O(N__3319),
            .I(\eeprom.i2c.n2690 ));
    InMux I__433 (
            .O(N__3316),
            .I(N__3309));
    InMux I__432 (
            .O(N__3315),
            .I(N__3309));
    InMux I__431 (
            .O(N__3314),
            .I(N__3306));
    LocalMux I__430 (
            .O(N__3309),
            .I(blink_counter_24));
    LocalMux I__429 (
            .O(N__3306),
            .I(blink_counter_24));
    InMux I__428 (
            .O(N__3301),
            .I(bfn_19_20_0_));
    InMux I__427 (
            .O(N__3298),
            .I(n2715));
    InMux I__426 (
            .O(N__3295),
            .I(N__3291));
    InMux I__425 (
            .O(N__3294),
            .I(N__3288));
    LocalMux I__424 (
            .O(N__3291),
            .I(blink_counter_25));
    LocalMux I__423 (
            .O(N__3288),
            .I(blink_counter_25));
    InMux I__422 (
            .O(N__3283),
            .I(N__3279));
    InMux I__421 (
            .O(N__3282),
            .I(N__3276));
    LocalMux I__420 (
            .O(N__3279),
            .I(\eeprom.delay_counter_7 ));
    LocalMux I__419 (
            .O(N__3276),
            .I(\eeprom.delay_counter_7 ));
    CascadeMux I__418 (
            .O(N__3271),
            .I(N__3268));
    InMux I__417 (
            .O(N__3268),
            .I(N__3264));
    InMux I__416 (
            .O(N__3267),
            .I(N__3261));
    LocalMux I__415 (
            .O(N__3264),
            .I(\eeprom.delay_counter_2 ));
    LocalMux I__414 (
            .O(N__3261),
            .I(\eeprom.delay_counter_2 ));
    CascadeMux I__413 (
            .O(N__3256),
            .I(N__3252));
    InMux I__412 (
            .O(N__3255),
            .I(N__3249));
    InMux I__411 (
            .O(N__3252),
            .I(N__3246));
    LocalMux I__410 (
            .O(N__3249),
            .I(\eeprom.delay_counter_5 ));
    LocalMux I__409 (
            .O(N__3246),
            .I(\eeprom.delay_counter_5 ));
    InMux I__408 (
            .O(N__3241),
            .I(N__3237));
    InMux I__407 (
            .O(N__3240),
            .I(N__3234));
    LocalMux I__406 (
            .O(N__3237),
            .I(\eeprom.delay_counter_11 ));
    LocalMux I__405 (
            .O(N__3234),
            .I(\eeprom.delay_counter_11 ));
    SRMux I__404 (
            .O(N__3229),
            .I(N__3226));
    LocalMux I__403 (
            .O(N__3226),
            .I(N__3223));
    Span4Mux_v I__402 (
            .O(N__3223),
            .I(N__3219));
    SRMux I__401 (
            .O(N__3222),
            .I(N__3216));
    Span4Mux_h I__400 (
            .O(N__3219),
            .I(N__3213));
    LocalMux I__399 (
            .O(N__3216),
            .I(N__3210));
    Odrv4 I__398 (
            .O(N__3213),
            .I(\eeprom.n1934 ));
    Odrv12 I__397 (
            .O(N__3210),
            .I(\eeprom.n1934 ));
    InMux I__396 (
            .O(N__3205),
            .I(N__3201));
    InMux I__395 (
            .O(N__3204),
            .I(N__3198));
    LocalMux I__394 (
            .O(N__3201),
            .I(\eeprom.delay_counter_13 ));
    LocalMux I__393 (
            .O(N__3198),
            .I(\eeprom.delay_counter_13 ));
    InMux I__392 (
            .O(N__3193),
            .I(N__3189));
    InMux I__391 (
            .O(N__3192),
            .I(N__3186));
    LocalMux I__390 (
            .O(N__3189),
            .I(\eeprom.delay_counter_9 ));
    LocalMux I__389 (
            .O(N__3186),
            .I(\eeprom.delay_counter_9 ));
    CascadeMux I__388 (
            .O(N__3181),
            .I(N__3177));
    CascadeMux I__387 (
            .O(N__3180),
            .I(N__3174));
    InMux I__386 (
            .O(N__3177),
            .I(N__3171));
    InMux I__385 (
            .O(N__3174),
            .I(N__3168));
    LocalMux I__384 (
            .O(N__3171),
            .I(\eeprom.delay_counter_0 ));
    LocalMux I__383 (
            .O(N__3168),
            .I(\eeprom.delay_counter_0 ));
    CascadeMux I__382 (
            .O(N__3163),
            .I(N__3160));
    InMux I__381 (
            .O(N__3160),
            .I(N__3156));
    InMux I__380 (
            .O(N__3159),
            .I(N__3153));
    LocalMux I__379 (
            .O(N__3156),
            .I(\eeprom.delay_counter_4 ));
    LocalMux I__378 (
            .O(N__3153),
            .I(\eeprom.delay_counter_4 ));
    CascadeMux I__377 (
            .O(N__3148),
            .I(N__3145));
    InMux I__376 (
            .O(N__3145),
            .I(N__3141));
    InMux I__375 (
            .O(N__3144),
            .I(N__3138));
    LocalMux I__374 (
            .O(N__3141),
            .I(\eeprom.delay_counter_14 ));
    LocalMux I__373 (
            .O(N__3138),
            .I(\eeprom.delay_counter_14 ));
    InMux I__372 (
            .O(N__3133),
            .I(N__3129));
    InMux I__371 (
            .O(N__3132),
            .I(N__3126));
    LocalMux I__370 (
            .O(N__3129),
            .I(\eeprom.delay_counter_3 ));
    LocalMux I__369 (
            .O(N__3126),
            .I(\eeprom.delay_counter_3 ));
    CascadeMux I__368 (
            .O(N__3121),
            .I(N__3117));
    InMux I__367 (
            .O(N__3120),
            .I(N__3114));
    InMux I__366 (
            .O(N__3117),
            .I(N__3111));
    LocalMux I__365 (
            .O(N__3114),
            .I(\eeprom.delay_counter_1 ));
    LocalMux I__364 (
            .O(N__3111),
            .I(\eeprom.delay_counter_1 ));
    InMux I__363 (
            .O(N__3106),
            .I(N__3102));
    InMux I__362 (
            .O(N__3105),
            .I(N__3099));
    LocalMux I__361 (
            .O(N__3102),
            .I(\eeprom.delay_counter_15 ));
    LocalMux I__360 (
            .O(N__3099),
            .I(\eeprom.delay_counter_15 ));
    CEMux I__359 (
            .O(N__3094),
            .I(N__3090));
    CEMux I__358 (
            .O(N__3093),
            .I(N__3087));
    LocalMux I__357 (
            .O(N__3090),
            .I(N__3084));
    LocalMux I__356 (
            .O(N__3087),
            .I(N__3081));
    Span4Mux_h I__355 (
            .O(N__3084),
            .I(N__3077));
    Span4Mux_h I__354 (
            .O(N__3081),
            .I(N__3074));
    InMux I__353 (
            .O(N__3080),
            .I(N__3071));
    Odrv4 I__352 (
            .O(N__3077),
            .I(\eeprom.n1799 ));
    Odrv4 I__351 (
            .O(N__3074),
            .I(\eeprom.n1799 ));
    LocalMux I__350 (
            .O(N__3071),
            .I(\eeprom.n1799 ));
    InMux I__349 (
            .O(N__3064),
            .I(N__3061));
    LocalMux I__348 (
            .O(N__3061),
            .I(n10_adj_398));
    InMux I__347 (
            .O(N__3058),
            .I(bfn_19_19_0_));
    InMux I__346 (
            .O(N__3055),
            .I(N__3052));
    LocalMux I__345 (
            .O(N__3052),
            .I(n9));
    InMux I__344 (
            .O(N__3049),
            .I(n2707));
    InMux I__343 (
            .O(N__3046),
            .I(N__3043));
    LocalMux I__342 (
            .O(N__3043),
            .I(n8_adj_397));
    InMux I__341 (
            .O(N__3040),
            .I(n2708));
    InMux I__340 (
            .O(N__3037),
            .I(N__3034));
    LocalMux I__339 (
            .O(N__3034),
            .I(n7));
    InMux I__338 (
            .O(N__3031),
            .I(n2709));
    InMux I__337 (
            .O(N__3028),
            .I(N__3025));
    LocalMux I__336 (
            .O(N__3025),
            .I(n6_adj_396));
    InMux I__335 (
            .O(N__3022),
            .I(n2710));
    InMux I__334 (
            .O(N__3019),
            .I(N__3012));
    InMux I__333 (
            .O(N__3018),
            .I(N__3012));
    InMux I__332 (
            .O(N__3017),
            .I(N__3009));
    LocalMux I__331 (
            .O(N__3012),
            .I(blink_counter_21));
    LocalMux I__330 (
            .O(N__3009),
            .I(blink_counter_21));
    InMux I__329 (
            .O(N__3004),
            .I(n2711));
    InMux I__328 (
            .O(N__3001),
            .I(N__2994));
    InMux I__327 (
            .O(N__3000),
            .I(N__2994));
    InMux I__326 (
            .O(N__2999),
            .I(N__2991));
    LocalMux I__325 (
            .O(N__2994),
            .I(blink_counter_22));
    LocalMux I__324 (
            .O(N__2991),
            .I(blink_counter_22));
    InMux I__323 (
            .O(N__2986),
            .I(n2712));
    CascadeMux I__322 (
            .O(N__2983),
            .I(N__2979));
    CascadeMux I__321 (
            .O(N__2982),
            .I(N__2976));
    InMux I__320 (
            .O(N__2979),
            .I(N__2970));
    InMux I__319 (
            .O(N__2976),
            .I(N__2970));
    InMux I__318 (
            .O(N__2975),
            .I(N__2967));
    LocalMux I__317 (
            .O(N__2970),
            .I(blink_counter_23));
    LocalMux I__316 (
            .O(N__2967),
            .I(blink_counter_23));
    InMux I__315 (
            .O(N__2962),
            .I(n2713));
    InMux I__314 (
            .O(N__2959),
            .I(N__2956));
    LocalMux I__313 (
            .O(N__2956),
            .I(n19));
    InMux I__312 (
            .O(N__2953),
            .I(n2697));
    InMux I__311 (
            .O(N__2950),
            .I(N__2947));
    LocalMux I__310 (
            .O(N__2947),
            .I(n18_adj_402));
    InMux I__309 (
            .O(N__2944),
            .I(bfn_19_18_0_));
    InMux I__308 (
            .O(N__2941),
            .I(N__2938));
    LocalMux I__307 (
            .O(N__2938),
            .I(n17));
    InMux I__306 (
            .O(N__2935),
            .I(n2699));
    InMux I__305 (
            .O(N__2932),
            .I(N__2929));
    LocalMux I__304 (
            .O(N__2929),
            .I(n16));
    InMux I__303 (
            .O(N__2926),
            .I(n2700));
    InMux I__302 (
            .O(N__2923),
            .I(N__2920));
    LocalMux I__301 (
            .O(N__2920),
            .I(n15_adj_401));
    InMux I__300 (
            .O(N__2917),
            .I(n2701));
    InMux I__299 (
            .O(N__2914),
            .I(N__2911));
    LocalMux I__298 (
            .O(N__2911),
            .I(n14_adj_400));
    InMux I__297 (
            .O(N__2908),
            .I(n2702));
    InMux I__296 (
            .O(N__2905),
            .I(N__2902));
    LocalMux I__295 (
            .O(N__2902),
            .I(n13_adj_399));
    InMux I__294 (
            .O(N__2899),
            .I(n2703));
    InMux I__293 (
            .O(N__2896),
            .I(N__2893));
    LocalMux I__292 (
            .O(N__2893),
            .I(n12));
    InMux I__291 (
            .O(N__2890),
            .I(n2704));
    InMux I__290 (
            .O(N__2887),
            .I(N__2884));
    LocalMux I__289 (
            .O(N__2884),
            .I(n11));
    InMux I__288 (
            .O(N__2881),
            .I(n2705));
    InMux I__287 (
            .O(N__2878),
            .I(\eeprom.n2685 ));
    InMux I__286 (
            .O(N__2875),
            .I(N__2872));
    LocalMux I__285 (
            .O(N__2872),
            .I(n26));
    InMux I__284 (
            .O(N__2869),
            .I(bfn_19_17_0_));
    InMux I__283 (
            .O(N__2866),
            .I(N__2863));
    LocalMux I__282 (
            .O(N__2863),
            .I(n25_adj_407));
    InMux I__281 (
            .O(N__2860),
            .I(n2691));
    InMux I__280 (
            .O(N__2857),
            .I(N__2854));
    LocalMux I__279 (
            .O(N__2854),
            .I(n24_adj_406));
    InMux I__278 (
            .O(N__2851),
            .I(n2692));
    InMux I__277 (
            .O(N__2848),
            .I(N__2845));
    LocalMux I__276 (
            .O(N__2845),
            .I(n23_adj_405));
    InMux I__275 (
            .O(N__2842),
            .I(n2693));
    InMux I__274 (
            .O(N__2839),
            .I(N__2836));
    LocalMux I__273 (
            .O(N__2836),
            .I(n22_adj_404));
    InMux I__272 (
            .O(N__2833),
            .I(n2694));
    InMux I__271 (
            .O(N__2830),
            .I(N__2827));
    LocalMux I__270 (
            .O(N__2827),
            .I(n21));
    InMux I__269 (
            .O(N__2824),
            .I(n2695));
    InMux I__268 (
            .O(N__2821),
            .I(N__2818));
    LocalMux I__267 (
            .O(N__2818),
            .I(n20_adj_403));
    InMux I__266 (
            .O(N__2815),
            .I(n2696));
    InMux I__265 (
            .O(N__2812),
            .I(\eeprom.n2676 ));
    InMux I__264 (
            .O(N__2809),
            .I(\eeprom.n2677 ));
    InMux I__263 (
            .O(N__2806),
            .I(bfn_19_14_0_));
    InMux I__262 (
            .O(N__2803),
            .I(\eeprom.n2679 ));
    InMux I__261 (
            .O(N__2800),
            .I(\eeprom.n2680 ));
    InMux I__260 (
            .O(N__2797),
            .I(\eeprom.n2681 ));
    InMux I__259 (
            .O(N__2794),
            .I(\eeprom.n2682 ));
    InMux I__258 (
            .O(N__2791),
            .I(\eeprom.n2683 ));
    InMux I__257 (
            .O(N__2788),
            .I(\eeprom.n2684 ));
    CascadeMux I__256 (
            .O(N__2785),
            .I(n2955_cascade_));
    IoInMux I__255 (
            .O(N__2782),
            .I(N__2779));
    LocalMux I__254 (
            .O(N__2779),
            .I(N__2776));
    Span4Mux_s1_v I__253 (
            .O(N__2776),
            .I(N__2773));
    Sp12to4 I__252 (
            .O(N__2773),
            .I(N__2770));
    Span12Mux_h I__251 (
            .O(N__2770),
            .I(N__2767));
    Span12Mux_v I__250 (
            .O(N__2767),
            .I(N__2764));
    Odrv12 I__249 (
            .O(N__2764),
            .I(LED_c));
    InMux I__248 (
            .O(N__2761),
            .I(N__2758));
    LocalMux I__247 (
            .O(N__2758),
            .I(n2954));
    InMux I__246 (
            .O(N__2755),
            .I(\eeprom.n2671 ));
    InMux I__245 (
            .O(N__2752),
            .I(\eeprom.n2672 ));
    InMux I__244 (
            .O(N__2749),
            .I(\eeprom.n2673 ));
    InMux I__243 (
            .O(N__2746),
            .I(\eeprom.n2674 ));
    InMux I__242 (
            .O(N__2743),
            .I(\eeprom.n2675 ));
    IoInMux I__241 (
            .O(N__2740),
            .I(N__2737));
    LocalMux I__240 (
            .O(N__2737),
            .I(N__2734));
    IoSpan4Mux I__239 (
            .O(N__2734),
            .I(N__2731));
    IoSpan4Mux I__238 (
            .O(N__2731),
            .I(N__2728));
    IoSpan4Mux I__237 (
            .O(N__2728),
            .I(N__2725));
    Odrv4 I__236 (
            .O(N__2725),
            .I(CLK_pad_gb_input));
    INV \INVeeprom.i2c.i2c_scl_enable_123C  (
            .O(\INVeeprom.i2c.i2c_scl_enable_123C_net ),
            .I(N__5775));
    INV \INVeeprom.i2c.sda_out_131C  (
            .O(\INVeeprom.i2c.sda_out_131C_net ),
            .I(N__5756));
    INV \INVeeprom.i2c.write_enable_130C  (
            .O(\INVeeprom.i2c.write_enable_130C_net ),
            .I(N__5767));
    INV \INVeeprom.i2c.data_out_i0_i4C  (
            .O(\INVeeprom.i2c.data_out_i0_i4C_net ),
            .I(N__5741));
    INV \INVeeprom.i2c.data_out_i0_i3C  (
            .O(\INVeeprom.i2c.data_out_i0_i3C_net ),
            .I(N__5766));
    INV \INVeeprom.i2c.data_out_i0_i1C  (
            .O(\INVeeprom.i2c.data_out_i0_i1C_net ),
            .I(N__5749));
    defparam IN_MUX_bfv_22_11_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_22_11_0_ (
            .carryinitin(),
            .carryinitout(bfn_22_11_0_));
    defparam IN_MUX_bfv_21_8_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_21_8_0_ (
            .carryinitin(),
            .carryinitout(bfn_21_8_0_));
    defparam IN_MUX_bfv_19_13_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_19_13_0_ (
            .carryinitin(),
            .carryinitout(bfn_19_13_0_));
    defparam IN_MUX_bfv_19_14_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_19_14_0_ (
            .carryinitin(\eeprom.n2678 ),
            .carryinitout(bfn_19_14_0_));
    defparam IN_MUX_bfv_19_17_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_19_17_0_ (
            .carryinitin(),
            .carryinitout(bfn_19_17_0_));
    defparam IN_MUX_bfv_19_18_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_19_18_0_ (
            .carryinitin(n2698),
            .carryinitout(bfn_19_18_0_));
    defparam IN_MUX_bfv_19_19_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_19_19_0_ (
            .carryinitin(n2706),
            .carryinitout(bfn_19_19_0_));
    defparam IN_MUX_bfv_19_20_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_19_20_0_ (
            .carryinitin(n2714),
            .carryinitout(bfn_19_20_0_));
    defparam IN_MUX_bfv_23_13_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_23_13_0_ (
            .carryinitin(),
            .carryinitout(bfn_23_13_0_));
    defparam IN_MUX_bfv_23_14_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_23_14_0_ (
            .carryinitin(n2640),
            .carryinitout(bfn_23_14_0_));
    defparam IN_MUX_bfv_23_15_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_23_15_0_ (
            .carryinitin(n2648),
            .carryinitout(bfn_23_15_0_));
    defparam IN_MUX_bfv_23_16_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_23_16_0_ (
            .carryinitin(n2656),
            .carryinitout(bfn_23_16_0_));
    ICE_GB CLK_pad_gb (
            .USERSIGNALTOGLOBALBUFFER(N__2740),
            .GLOBALBUFFEROUTPUT(CLK_c));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam i1941_4_lut_LC_18_19_3.C_ON=1'b0;
    defparam i1941_4_lut_LC_18_19_3.SEQ_MODE=4'b0000;
    defparam i1941_4_lut_LC_18_19_3.LUT_INIT=16'b1111111010110000;
    LogicCell40 i1941_4_lut_LC_18_19_3 (
            .in0(N__3316),
            .in1(N__3001),
            .in2(N__2983),
            .in3(N__3019),
            .lcout(),
            .ltout(n2955_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1942_3_lut_LC_18_19_4.C_ON=1'b0;
    defparam i1942_3_lut_LC_18_19_4.SEQ_MODE=4'b0000;
    defparam i1942_3_lut_LC_18_19_4.LUT_INIT=16'b0000111101010101;
    LogicCell40 i1942_3_lut_LC_18_19_4 (
            .in0(N__2761),
            .in1(_gnd_net_),
            .in2(N__2785),
            .in3(N__3295),
            .lcout(LED_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1940_4_lut_LC_18_19_5.C_ON=1'b0;
    defparam i1940_4_lut_LC_18_19_5.SEQ_MODE=4'b0000;
    defparam i1940_4_lut_LC_18_19_5.LUT_INIT=16'b1101110101000000;
    LogicCell40 i1940_4_lut_LC_18_19_5 (
            .in0(N__3315),
            .in1(N__3000),
            .in2(N__2982),
            .in3(N__3018),
            .lcout(n2954),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.delay_counter_i0_i0_LC_19_13_0 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i0_LC_19_13_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i0_LC_19_13_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i0_LC_19_13_0  (
            .in0(_gnd_net_),
            .in1(N__3373),
            .in2(N__3181),
            .in3(_gnd_net_),
            .lcout(\eeprom.delay_counter_0 ),
            .ltout(),
            .carryin(bfn_19_13_0_),
            .carryout(\eeprom.n2671 ),
            .clk(N__5840),
            .ce(N__3094),
            .sr(N__3222));
    defparam \eeprom.delay_counter_i0_i1_LC_19_13_1 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i1_LC_19_13_1 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i1_LC_19_13_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i1_LC_19_13_1  (
            .in0(_gnd_net_),
            .in1(N__3120),
            .in2(N__3403),
            .in3(N__2755),
            .lcout(\eeprom.delay_counter_1 ),
            .ltout(),
            .carryin(\eeprom.n2671 ),
            .carryout(\eeprom.n2672 ),
            .clk(N__5840),
            .ce(N__3094),
            .sr(N__3222));
    defparam \eeprom.delay_counter_i0_i2_LC_19_13_2 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i2_LC_19_13_2 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i2_LC_19_13_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i2_LC_19_13_2  (
            .in0(_gnd_net_),
            .in1(N__3377),
            .in2(N__3271),
            .in3(N__2752),
            .lcout(\eeprom.delay_counter_2 ),
            .ltout(),
            .carryin(\eeprom.n2672 ),
            .carryout(\eeprom.n2673 ),
            .clk(N__5840),
            .ce(N__3094),
            .sr(N__3222));
    defparam \eeprom.delay_counter_i0_i3_LC_19_13_3 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i3_LC_19_13_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i3_LC_19_13_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i3_LC_19_13_3  (
            .in0(_gnd_net_),
            .in1(N__3133),
            .in2(N__3404),
            .in3(N__2749),
            .lcout(\eeprom.delay_counter_3 ),
            .ltout(),
            .carryin(\eeprom.n2673 ),
            .carryout(\eeprom.n2674 ),
            .clk(N__5840),
            .ce(N__3094),
            .sr(N__3222));
    defparam \eeprom.delay_counter_i0_i4_LC_19_13_4 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i4_LC_19_13_4 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i4_LC_19_13_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i4_LC_19_13_4  (
            .in0(_gnd_net_),
            .in1(N__3381),
            .in2(N__3163),
            .in3(N__2746),
            .lcout(\eeprom.delay_counter_4 ),
            .ltout(),
            .carryin(\eeprom.n2674 ),
            .carryout(\eeprom.n2675 ),
            .clk(N__5840),
            .ce(N__3094),
            .sr(N__3222));
    defparam \eeprom.delay_counter_i0_i5_LC_19_13_5 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i5_LC_19_13_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i5_LC_19_13_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i5_LC_19_13_5  (
            .in0(_gnd_net_),
            .in1(N__3255),
            .in2(N__3405),
            .in3(N__2743),
            .lcout(\eeprom.delay_counter_5 ),
            .ltout(),
            .carryin(\eeprom.n2675 ),
            .carryout(\eeprom.n2676 ),
            .clk(N__5840),
            .ce(N__3094),
            .sr(N__3222));
    defparam \eeprom.delay_counter_i0_i6_LC_19_13_6 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i6_LC_19_13_6 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i6_LC_19_13_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i6_LC_19_13_6  (
            .in0(_gnd_net_),
            .in1(N__3385),
            .in2(N__3448),
            .in3(N__2812),
            .lcout(\eeprom.delay_counter_6 ),
            .ltout(),
            .carryin(\eeprom.n2676 ),
            .carryout(\eeprom.n2677 ),
            .clk(N__5840),
            .ce(N__3094),
            .sr(N__3222));
    defparam \eeprom.delay_counter_i0_i7_LC_19_13_7 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i7_LC_19_13_7 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i7_LC_19_13_7 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i7_LC_19_13_7  (
            .in0(_gnd_net_),
            .in1(N__3283),
            .in2(N__3406),
            .in3(N__2809),
            .lcout(\eeprom.delay_counter_7 ),
            .ltout(),
            .carryin(\eeprom.n2677 ),
            .carryout(\eeprom.n2678 ),
            .clk(N__5840),
            .ce(N__3094),
            .sr(N__3222));
    defparam \eeprom.delay_counter_i0_i8_LC_19_14_0 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i8_LC_19_14_0 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i8_LC_19_14_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i8_LC_19_14_0  (
            .in0(_gnd_net_),
            .in1(N__3389),
            .in2(N__3466),
            .in3(N__2806),
            .lcout(\eeprom.delay_counter_8 ),
            .ltout(),
            .carryin(bfn_19_14_0_),
            .carryout(\eeprom.n2679 ),
            .clk(N__5838),
            .ce(N__3093),
            .sr(N__3229));
    defparam \eeprom.delay_counter_i0_i9_LC_19_14_1 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i9_LC_19_14_1 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i9_LC_19_14_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i9_LC_19_14_1  (
            .in0(_gnd_net_),
            .in1(N__3193),
            .in2(N__3407),
            .in3(N__2803),
            .lcout(\eeprom.delay_counter_9 ),
            .ltout(),
            .carryin(\eeprom.n2679 ),
            .carryout(\eeprom.n2680 ),
            .clk(N__5838),
            .ce(N__3093),
            .sr(N__3229));
    defparam \eeprom.delay_counter_i0_i10_LC_19_14_2 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i10_LC_19_14_2 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i10_LC_19_14_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i10_LC_19_14_2  (
            .in0(_gnd_net_),
            .in1(N__3393),
            .in2(N__3481),
            .in3(N__2800),
            .lcout(\eeprom.delay_counter_10 ),
            .ltout(),
            .carryin(\eeprom.n2680 ),
            .carryout(\eeprom.n2681 ),
            .clk(N__5838),
            .ce(N__3093),
            .sr(N__3229));
    defparam \eeprom.delay_counter_i0_i11_LC_19_14_3 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i11_LC_19_14_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i11_LC_19_14_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i11_LC_19_14_3  (
            .in0(_gnd_net_),
            .in1(N__3241),
            .in2(N__3408),
            .in3(N__2797),
            .lcout(\eeprom.delay_counter_11 ),
            .ltout(),
            .carryin(\eeprom.n2681 ),
            .carryout(\eeprom.n2682 ),
            .clk(N__5838),
            .ce(N__3093),
            .sr(N__3229));
    defparam \eeprom.delay_counter_i0_i12_LC_19_14_4 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i12_LC_19_14_4 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i12_LC_19_14_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i12_LC_19_14_4  (
            .in0(_gnd_net_),
            .in1(N__3397),
            .in2(N__3496),
            .in3(N__2794),
            .lcout(\eeprom.delay_counter_12 ),
            .ltout(),
            .carryin(\eeprom.n2682 ),
            .carryout(\eeprom.n2683 ),
            .clk(N__5838),
            .ce(N__3093),
            .sr(N__3229));
    defparam \eeprom.delay_counter_i0_i13_LC_19_14_5 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i13_LC_19_14_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i13_LC_19_14_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i13_LC_19_14_5  (
            .in0(_gnd_net_),
            .in1(N__3205),
            .in2(N__3409),
            .in3(N__2791),
            .lcout(\eeprom.delay_counter_13 ),
            .ltout(),
            .carryin(\eeprom.n2683 ),
            .carryout(\eeprom.n2684 ),
            .clk(N__5838),
            .ce(N__3093),
            .sr(N__3229));
    defparam \eeprom.delay_counter_i0_i14_LC_19_14_6 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i14_LC_19_14_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i14_LC_19_14_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i14_LC_19_14_6  (
            .in0(_gnd_net_),
            .in1(N__3401),
            .in2(N__3148),
            .in3(N__2788),
            .lcout(\eeprom.delay_counter_14 ),
            .ltout(),
            .carryin(\eeprom.n2684 ),
            .carryout(\eeprom.n2685 ),
            .clk(N__5838),
            .ce(N__3093),
            .sr(N__3229));
    defparam \eeprom.delay_counter_i0_i15_LC_19_14_7 .C_ON=1'b0;
    defparam \eeprom.delay_counter_i0_i15_LC_19_14_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i15_LC_19_14_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \eeprom.delay_counter_i0_i15_LC_19_14_7  (
            .in0(N__3402),
            .in1(N__3106),
            .in2(_gnd_net_),
            .in3(N__2878),
            .lcout(\eeprom.delay_counter_15 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5838),
            .ce(N__3093),
            .sr(N__3229));
    defparam blink_counter_409__i0_LC_19_17_0.C_ON=1'b1;
    defparam blink_counter_409__i0_LC_19_17_0.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i0_LC_19_17_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i0_LC_19_17_0 (
            .in0(_gnd_net_),
            .in1(N__2875),
            .in2(_gnd_net_),
            .in3(N__2869),
            .lcout(n26),
            .ltout(),
            .carryin(bfn_19_17_0_),
            .carryout(n2691),
            .clk(N__5835),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i1_LC_19_17_1.C_ON=1'b1;
    defparam blink_counter_409__i1_LC_19_17_1.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i1_LC_19_17_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i1_LC_19_17_1 (
            .in0(_gnd_net_),
            .in1(N__2866),
            .in2(_gnd_net_),
            .in3(N__2860),
            .lcout(n25_adj_407),
            .ltout(),
            .carryin(n2691),
            .carryout(n2692),
            .clk(N__5835),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i2_LC_19_17_2.C_ON=1'b1;
    defparam blink_counter_409__i2_LC_19_17_2.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i2_LC_19_17_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i2_LC_19_17_2 (
            .in0(_gnd_net_),
            .in1(N__2857),
            .in2(_gnd_net_),
            .in3(N__2851),
            .lcout(n24_adj_406),
            .ltout(),
            .carryin(n2692),
            .carryout(n2693),
            .clk(N__5835),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i3_LC_19_17_3.C_ON=1'b1;
    defparam blink_counter_409__i3_LC_19_17_3.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i3_LC_19_17_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i3_LC_19_17_3 (
            .in0(_gnd_net_),
            .in1(N__2848),
            .in2(_gnd_net_),
            .in3(N__2842),
            .lcout(n23_adj_405),
            .ltout(),
            .carryin(n2693),
            .carryout(n2694),
            .clk(N__5835),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i4_LC_19_17_4.C_ON=1'b1;
    defparam blink_counter_409__i4_LC_19_17_4.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i4_LC_19_17_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i4_LC_19_17_4 (
            .in0(_gnd_net_),
            .in1(N__2839),
            .in2(_gnd_net_),
            .in3(N__2833),
            .lcout(n22_adj_404),
            .ltout(),
            .carryin(n2694),
            .carryout(n2695),
            .clk(N__5835),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i5_LC_19_17_5.C_ON=1'b1;
    defparam blink_counter_409__i5_LC_19_17_5.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i5_LC_19_17_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i5_LC_19_17_5 (
            .in0(_gnd_net_),
            .in1(N__2830),
            .in2(_gnd_net_),
            .in3(N__2824),
            .lcout(n21),
            .ltout(),
            .carryin(n2695),
            .carryout(n2696),
            .clk(N__5835),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i6_LC_19_17_6.C_ON=1'b1;
    defparam blink_counter_409__i6_LC_19_17_6.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i6_LC_19_17_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i6_LC_19_17_6 (
            .in0(_gnd_net_),
            .in1(N__2821),
            .in2(_gnd_net_),
            .in3(N__2815),
            .lcout(n20_adj_403),
            .ltout(),
            .carryin(n2696),
            .carryout(n2697),
            .clk(N__5835),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i7_LC_19_17_7.C_ON=1'b1;
    defparam blink_counter_409__i7_LC_19_17_7.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i7_LC_19_17_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i7_LC_19_17_7 (
            .in0(_gnd_net_),
            .in1(N__2959),
            .in2(_gnd_net_),
            .in3(N__2953),
            .lcout(n19),
            .ltout(),
            .carryin(n2697),
            .carryout(n2698),
            .clk(N__5835),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i8_LC_19_18_0.C_ON=1'b1;
    defparam blink_counter_409__i8_LC_19_18_0.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i8_LC_19_18_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i8_LC_19_18_0 (
            .in0(_gnd_net_),
            .in1(N__2950),
            .in2(_gnd_net_),
            .in3(N__2944),
            .lcout(n18_adj_402),
            .ltout(),
            .carryin(bfn_19_18_0_),
            .carryout(n2699),
            .clk(N__5836),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i9_LC_19_18_1.C_ON=1'b1;
    defparam blink_counter_409__i9_LC_19_18_1.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i9_LC_19_18_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i9_LC_19_18_1 (
            .in0(_gnd_net_),
            .in1(N__2941),
            .in2(_gnd_net_),
            .in3(N__2935),
            .lcout(n17),
            .ltout(),
            .carryin(n2699),
            .carryout(n2700),
            .clk(N__5836),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i10_LC_19_18_2.C_ON=1'b1;
    defparam blink_counter_409__i10_LC_19_18_2.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i10_LC_19_18_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i10_LC_19_18_2 (
            .in0(_gnd_net_),
            .in1(N__2932),
            .in2(_gnd_net_),
            .in3(N__2926),
            .lcout(n16),
            .ltout(),
            .carryin(n2700),
            .carryout(n2701),
            .clk(N__5836),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i11_LC_19_18_3.C_ON=1'b1;
    defparam blink_counter_409__i11_LC_19_18_3.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i11_LC_19_18_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i11_LC_19_18_3 (
            .in0(_gnd_net_),
            .in1(N__2923),
            .in2(_gnd_net_),
            .in3(N__2917),
            .lcout(n15_adj_401),
            .ltout(),
            .carryin(n2701),
            .carryout(n2702),
            .clk(N__5836),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i12_LC_19_18_4.C_ON=1'b1;
    defparam blink_counter_409__i12_LC_19_18_4.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i12_LC_19_18_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i12_LC_19_18_4 (
            .in0(_gnd_net_),
            .in1(N__2914),
            .in2(_gnd_net_),
            .in3(N__2908),
            .lcout(n14_adj_400),
            .ltout(),
            .carryin(n2702),
            .carryout(n2703),
            .clk(N__5836),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i13_LC_19_18_5.C_ON=1'b1;
    defparam blink_counter_409__i13_LC_19_18_5.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i13_LC_19_18_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i13_LC_19_18_5 (
            .in0(_gnd_net_),
            .in1(N__2905),
            .in2(_gnd_net_),
            .in3(N__2899),
            .lcout(n13_adj_399),
            .ltout(),
            .carryin(n2703),
            .carryout(n2704),
            .clk(N__5836),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i14_LC_19_18_6.C_ON=1'b1;
    defparam blink_counter_409__i14_LC_19_18_6.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i14_LC_19_18_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i14_LC_19_18_6 (
            .in0(_gnd_net_),
            .in1(N__2896),
            .in2(_gnd_net_),
            .in3(N__2890),
            .lcout(n12),
            .ltout(),
            .carryin(n2704),
            .carryout(n2705),
            .clk(N__5836),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i15_LC_19_18_7.C_ON=1'b1;
    defparam blink_counter_409__i15_LC_19_18_7.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i15_LC_19_18_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i15_LC_19_18_7 (
            .in0(_gnd_net_),
            .in1(N__2887),
            .in2(_gnd_net_),
            .in3(N__2881),
            .lcout(n11),
            .ltout(),
            .carryin(n2705),
            .carryout(n2706),
            .clk(N__5836),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i16_LC_19_19_0.C_ON=1'b1;
    defparam blink_counter_409__i16_LC_19_19_0.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i16_LC_19_19_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i16_LC_19_19_0 (
            .in0(_gnd_net_),
            .in1(N__3064),
            .in2(_gnd_net_),
            .in3(N__3058),
            .lcout(n10_adj_398),
            .ltout(),
            .carryin(bfn_19_19_0_),
            .carryout(n2707),
            .clk(N__5837),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i17_LC_19_19_1.C_ON=1'b1;
    defparam blink_counter_409__i17_LC_19_19_1.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i17_LC_19_19_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i17_LC_19_19_1 (
            .in0(_gnd_net_),
            .in1(N__3055),
            .in2(_gnd_net_),
            .in3(N__3049),
            .lcout(n9),
            .ltout(),
            .carryin(n2707),
            .carryout(n2708),
            .clk(N__5837),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i18_LC_19_19_2.C_ON=1'b1;
    defparam blink_counter_409__i18_LC_19_19_2.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i18_LC_19_19_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i18_LC_19_19_2 (
            .in0(_gnd_net_),
            .in1(N__3046),
            .in2(_gnd_net_),
            .in3(N__3040),
            .lcout(n8_adj_397),
            .ltout(),
            .carryin(n2708),
            .carryout(n2709),
            .clk(N__5837),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i19_LC_19_19_3.C_ON=1'b1;
    defparam blink_counter_409__i19_LC_19_19_3.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i19_LC_19_19_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i19_LC_19_19_3 (
            .in0(_gnd_net_),
            .in1(N__3037),
            .in2(_gnd_net_),
            .in3(N__3031),
            .lcout(n7),
            .ltout(),
            .carryin(n2709),
            .carryout(n2710),
            .clk(N__5837),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i20_LC_19_19_4.C_ON=1'b1;
    defparam blink_counter_409__i20_LC_19_19_4.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i20_LC_19_19_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i20_LC_19_19_4 (
            .in0(_gnd_net_),
            .in1(N__3028),
            .in2(_gnd_net_),
            .in3(N__3022),
            .lcout(n6_adj_396),
            .ltout(),
            .carryin(n2710),
            .carryout(n2711),
            .clk(N__5837),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i21_LC_19_19_5.C_ON=1'b1;
    defparam blink_counter_409__i21_LC_19_19_5.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i21_LC_19_19_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i21_LC_19_19_5 (
            .in0(_gnd_net_),
            .in1(N__3017),
            .in2(_gnd_net_),
            .in3(N__3004),
            .lcout(blink_counter_21),
            .ltout(),
            .carryin(n2711),
            .carryout(n2712),
            .clk(N__5837),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i22_LC_19_19_6.C_ON=1'b1;
    defparam blink_counter_409__i22_LC_19_19_6.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i22_LC_19_19_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i22_LC_19_19_6 (
            .in0(_gnd_net_),
            .in1(N__2999),
            .in2(_gnd_net_),
            .in3(N__2986),
            .lcout(blink_counter_22),
            .ltout(),
            .carryin(n2712),
            .carryout(n2713),
            .clk(N__5837),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i23_LC_19_19_7.C_ON=1'b1;
    defparam blink_counter_409__i23_LC_19_19_7.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i23_LC_19_19_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i23_LC_19_19_7 (
            .in0(_gnd_net_),
            .in1(N__2975),
            .in2(_gnd_net_),
            .in3(N__2962),
            .lcout(blink_counter_23),
            .ltout(),
            .carryin(n2713),
            .carryout(n2714),
            .clk(N__5837),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i24_LC_19_20_0.C_ON=1'b1;
    defparam blink_counter_409__i24_LC_19_20_0.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i24_LC_19_20_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i24_LC_19_20_0 (
            .in0(_gnd_net_),
            .in1(N__3314),
            .in2(_gnd_net_),
            .in3(N__3301),
            .lcout(blink_counter_24),
            .ltout(),
            .carryin(bfn_19_20_0_),
            .carryout(n2715),
            .clk(N__5839),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_409__i25_LC_19_20_1.C_ON=1'b0;
    defparam blink_counter_409__i25_LC_19_20_1.SEQ_MODE=4'b1000;
    defparam blink_counter_409__i25_LC_19_20_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_409__i25_LC_19_20_1 (
            .in0(_gnd_net_),
            .in1(N__3294),
            .in2(_gnd_net_),
            .in3(N__3298),
            .lcout(blink_counter_25),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5839),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.enable_39_LC_20_12_2 .C_ON=1'b0;
    defparam \eeprom.enable_39_LC_20_12_2 .SEQ_MODE=4'b1000;
    defparam \eeprom.enable_39_LC_20_12_2 .LUT_INIT=16'b0000110001011100;
    LogicCell40 \eeprom.enable_39_LC_20_12_2  (
            .in0(N__5940),
            .in1(N__3835),
            .in2(N__3739),
            .in3(N__3805),
            .lcout(\eeprom.enable ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5844),
            .ce(),
            .sr(N__3781));
    defparam \eeprom.i10_4_lut_LC_20_13_4 .C_ON=1'b0;
    defparam \eeprom.i10_4_lut_LC_20_13_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i10_4_lut_LC_20_13_4 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i10_4_lut_LC_20_13_4  (
            .in0(N__3282),
            .in1(N__3267),
            .in2(N__3256),
            .in3(N__3240),
            .lcout(\eeprom.n26_adj_388 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i1007_2_lut_LC_20_13_7 .C_ON=1'b0;
    defparam \eeprom.i1007_2_lut_LC_20_13_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i1007_2_lut_LC_20_13_7 .LUT_INIT=16'b0011001100000000;
    LogicCell40 \eeprom.i1007_2_lut_LC_20_13_7  (
            .in0(_gnd_net_),
            .in1(N__3719),
            .in2(_gnd_net_),
            .in3(N__3080),
            .lcout(\eeprom.n1934 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i9_4_lut_LC_20_14_1 .C_ON=1'b0;
    defparam \eeprom.i9_4_lut_LC_20_14_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i9_4_lut_LC_20_14_1 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i9_4_lut_LC_20_14_1  (
            .in0(N__3204),
            .in1(N__3192),
            .in2(N__3180),
            .in3(N__3159),
            .lcout(\eeprom.n25 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i11_4_lut_LC_20_14_2 .C_ON=1'b0;
    defparam \eeprom.i11_4_lut_LC_20_14_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i11_4_lut_LC_20_14_2 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i11_4_lut_LC_20_14_2  (
            .in0(N__3144),
            .in1(N__3132),
            .in2(N__3121),
            .in3(N__3105),
            .lcout(\eeprom.n27 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i1_3_lut_LC_20_14_4 .C_ON=1'b0;
    defparam \eeprom.i1_3_lut_LC_20_14_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i1_3_lut_LC_20_14_4 .LUT_INIT=16'b0101010101000100;
    LogicCell40 \eeprom.i1_3_lut_LC_20_14_4  (
            .in0(N__3771),
            .in1(N__3718),
            .in2(_gnd_net_),
            .in3(N__3828),
            .lcout(\eeprom.n1799 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i12_4_lut_LC_20_14_5 .C_ON=1'b0;
    defparam \eeprom.i12_4_lut_LC_20_14_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i12_4_lut_LC_20_14_5 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i12_4_lut_LC_20_14_5  (
            .in0(N__3492),
            .in1(N__3477),
            .in2(N__3465),
            .in3(N__3444),
            .lcout(),
            .ltout(\eeprom.n28_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i15_4_lut_LC_20_14_6 .C_ON=1'b0;
    defparam \eeprom.i15_4_lut_LC_20_14_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i15_4_lut_LC_20_14_6 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i15_4_lut_LC_20_14_6  (
            .in0(N__3433),
            .in1(N__3427),
            .in2(N__3421),
            .in3(N__3418),
            .lcout(\eeprom.n1703 ),
            .ltout(\eeprom.n1703_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_adj_4_LC_20_14_7 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_adj_4_LC_20_14_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_adj_4_LC_20_14_7 .LUT_INIT=16'b0101000001010000;
    LogicCell40 \eeprom.i2c.i1_2_lut_adj_4_LC_20_14_7  (
            .in0(N__5941),
            .in1(_gnd_net_),
            .in2(N__3412),
            .in3(_gnd_net_),
            .lcout(\eeprom.n730 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.counter2_410_411__i1_LC_21_8_0 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_410_411__i1_LC_21_8_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_410_411__i1_LC_21_8_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_410_411__i1_LC_21_8_0  (
            .in0(_gnd_net_),
            .in1(N__3855),
            .in2(_gnd_net_),
            .in3(N__3334),
            .lcout(\eeprom.i2c.counter2_0 ),
            .ltout(),
            .carryin(bfn_21_8_0_),
            .carryout(\eeprom.i2c.n2686 ),
            .clk(N__5850),
            .ce(),
            .sr(N__3994));
    defparam \eeprom.i2c.counter2_410_411__i2_LC_21_8_1 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_410_411__i2_LC_21_8_1 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_410_411__i2_LC_21_8_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_410_411__i2_LC_21_8_1  (
            .in0(_gnd_net_),
            .in1(N__3870),
            .in2(_gnd_net_),
            .in3(N__3331),
            .lcout(\eeprom.i2c.counter2_1 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2686 ),
            .carryout(\eeprom.i2c.n2687 ),
            .clk(N__5850),
            .ce(),
            .sr(N__3994));
    defparam \eeprom.i2c.counter2_410_411__i3_LC_21_8_2 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_410_411__i3_LC_21_8_2 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_410_411__i3_LC_21_8_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_410_411__i3_LC_21_8_2  (
            .in0(_gnd_net_),
            .in1(N__3925),
            .in2(_gnd_net_),
            .in3(N__3328),
            .lcout(\eeprom.i2c.counter2_2 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2687 ),
            .carryout(\eeprom.i2c.n2688 ),
            .clk(N__5850),
            .ce(),
            .sr(N__3994));
    defparam \eeprom.i2c.counter2_410_411__i4_LC_21_8_3 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_410_411__i4_LC_21_8_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_410_411__i4_LC_21_8_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_410_411__i4_LC_21_8_3  (
            .in0(_gnd_net_),
            .in1(N__3883),
            .in2(_gnd_net_),
            .in3(N__3325),
            .lcout(\eeprom.i2c.counter2_3 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2688 ),
            .carryout(\eeprom.i2c.n2689 ),
            .clk(N__5850),
            .ce(),
            .sr(N__3994));
    defparam \eeprom.i2c.counter2_410_411__i5_LC_21_8_4 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_410_411__i5_LC_21_8_4 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_410_411__i5_LC_21_8_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_410_411__i5_LC_21_8_4  (
            .in0(_gnd_net_),
            .in1(N__3897),
            .in2(_gnd_net_),
            .in3(N__3322),
            .lcout(\eeprom.i2c.counter2_4 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2689 ),
            .carryout(\eeprom.i2c.n2690 ),
            .clk(N__5850),
            .ce(),
            .sr(N__3994));
    defparam \eeprom.i2c.counter2_410_411__i6_LC_21_8_5 .C_ON=1'b0;
    defparam \eeprom.i2c.counter2_410_411__i6_LC_21_8_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_410_411__i6_LC_21_8_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_410_411__i6_LC_21_8_5  (
            .in0(_gnd_net_),
            .in1(N__3913),
            .in2(_gnd_net_),
            .in3(N__3319),
            .lcout(\eeprom.i2c.counter2_5 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5850),
            .ce(),
            .sr(N__3994));
    defparam \eeprom.i2c.state_7__I_0_140_i10_2_lut_LC_21_9_1 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_140_i10_2_lut_LC_21_9_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_140_i10_2_lut_LC_21_9_1 .LUT_INIT=16'b1111111101010101;
    LogicCell40 \eeprom.i2c.state_7__I_0_140_i10_2_lut_LC_21_9_1  (
            .in0(N__6040),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__6280),
            .lcout(\eeprom.i2c.n10_adj_377 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_43_i10_2_lut_LC_21_9_4 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_43_i10_2_lut_LC_21_9_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_43_i10_2_lut_LC_21_9_4 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \eeprom.i2c.equal_43_i10_2_lut_LC_21_9_4  (
            .in0(_gnd_net_),
            .in1(N__6267),
            .in2(_gnd_net_),
            .in3(N__6039),
            .lcout(\eeprom.i2c.n10_adj_384 ),
            .ltout(\eeprom.i2c.n10_adj_384_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1964_4_lut_LC_21_9_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1964_4_lut_LC_21_9_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1964_4_lut_LC_21_9_5 .LUT_INIT=16'b0000110011011101;
    LogicCell40 \eeprom.i2c.i1964_4_lut_LC_21_9_5  (
            .in0(N__4771),
            .in1(N__4631),
            .in2(N__3511),
            .in3(N__3508),
            .lcout(\eeprom.i2c.n2972 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_i0_i3_LC_21_10_2 .C_ON=1'b0;
    defparam \eeprom.i2c.state_i0_i3_LC_21_10_2 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.state_i0_i3_LC_21_10_2 .LUT_INIT=16'b1100100000001000;
    LogicCell40 \eeprom.i2c.state_i0_i3_LC_21_10_2  (
            .in0(N__4483),
            .in1(N__6184),
            .in2(N__6460),
            .in3(N__3502),
            .lcout(\eeprom.state_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5765),
            .ce(N__4558),
            .sr(N__4024));
    defparam \eeprom.i2c.data_out_i0_i1_LC_21_11_0 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i1_LC_21_11_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i1_LC_21_11_0 .LUT_INIT=16'b1111000011100100;
    LogicCell40 \eeprom.i2c.data_out_i0_i1_LC_21_11_0  (
            .in0(N__4015),
            .in1(N__4635),
            .in2(N__3592),
            .in3(N__4162),
            .lcout(data_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.data_out_i0_i1C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i0_LC_21_11_1 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i0_LC_21_11_1 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i0_LC_21_11_1 .LUT_INIT=16'b1010101010111000;
    LogicCell40 \eeprom.i2c.data_out_i0_i0_LC_21_11_1  (
            .in0(N__3564),
            .in1(N__4014),
            .in2(N__4656),
            .in3(N__4222),
            .lcout(data_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.data_out_i0_i1C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i3_LC_21_12_1 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i3_LC_21_12_1 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i3_LC_21_12_1 .LUT_INIT=16'b1010101010111000;
    LogicCell40 \eeprom.i2c.data_out_i0_i3_LC_21_12_1  (
            .in0(N__3576),
            .in1(N__4165),
            .in2(N__4657),
            .in3(N__4297),
            .lcout(data_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.data_out_i0_i3C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_adj_7_LC_21_12_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_adj_7_LC_21_12_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_adj_7_LC_21_12_2 .LUT_INIT=16'b1111111110101010;
    LogicCell40 \eeprom.i2c.i1_2_lut_adj_7_LC_21_12_2  (
            .in0(N__6190),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__6072),
            .lcout(\eeprom.n26 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i2_LC_21_12_5 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i2_LC_21_12_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i2_LC_21_12_5 .LUT_INIT=16'b1111000011100100;
    LogicCell40 \eeprom.i2c.data_out_i0_i2_LC_21_12_5  (
            .in0(N__4225),
            .in1(N__4665),
            .in2(N__3604),
            .in3(N__4296),
            .lcout(data_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.data_out_i0_i3C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam i2_2_lut_LC_21_12_6.C_ON=1'b0;
    defparam i2_2_lut_LC_21_12_6.SEQ_MODE=4'b0000;
    defparam i2_2_lut_LC_21_12_6.LUT_INIT=16'b1111111111001100;
    LogicCell40 i2_2_lut_LC_21_12_6 (
            .in0(_gnd_net_),
            .in1(N__3603),
            .in2(_gnd_net_),
            .in3(N__3591),
            .lcout(),
            .ltout(n10_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i7_4_lut_LC_21_12_7.C_ON=1'b0;
    defparam i7_4_lut_LC_21_12_7.SEQ_MODE=4'b0000;
    defparam i7_4_lut_LC_21_12_7.LUT_INIT=16'b1111111111111110;
    LogicCell40 i7_4_lut_LC_21_12_7 (
            .in0(N__3577),
            .in1(N__3568),
            .in2(N__3553),
            .in3(N__4243),
            .lcout(n15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.state__i1_LC_21_13_0 .C_ON=1'b0;
    defparam \eeprom.state__i1_LC_21_13_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.state__i1_LC_21_13_0 .LUT_INIT=16'b1111111111010000;
    LogicCell40 \eeprom.state__i1_LC_21_13_0  (
            .in0(N__3830),
            .in1(N__3517),
            .in2(N__3550),
            .in3(N__3541),
            .lcout(state_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5845),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i1_2_lut_3_lut_LC_21_13_2 .C_ON=1'b0;
    defparam \eeprom.i1_2_lut_3_lut_LC_21_13_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i1_2_lut_3_lut_LC_21_13_2 .LUT_INIT=16'b1010101010100000;
    LogicCell40 \eeprom.i1_2_lut_3_lut_LC_21_13_2  (
            .in0(N__3773),
            .in1(_gnd_net_),
            .in2(N__3736),
            .in3(N__5942),
            .lcout(\eeprom.n4 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.state__i0_LC_21_13_3 .C_ON=1'b0;
    defparam \eeprom.state__i0_LC_21_13_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.state__i0_LC_21_13_3 .LUT_INIT=16'b1111010010100100;
    LogicCell40 \eeprom.state__i0_LC_21_13_3  (
            .in0(N__3775),
            .in1(N__3831),
            .in2(N__3737),
            .in3(N__3529),
            .lcout(state_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5845),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i1_4_lut_2_lut_4_lut_LC_21_13_5 .C_ON=1'b0;
    defparam \eeprom.i1_4_lut_2_lut_4_lut_LC_21_13_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i1_4_lut_2_lut_4_lut_LC_21_13_5 .LUT_INIT=16'b0000000000100010;
    LogicCell40 \eeprom.i1_4_lut_2_lut_4_lut_LC_21_13_5  (
            .in0(N__3724),
            .in1(N__3772),
            .in2(_gnd_net_),
            .in3(N__3528),
            .lcout(\eeprom.n22 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i3_4_lut_LC_21_13_6 .C_ON=1'b0;
    defparam \eeprom.i3_4_lut_LC_21_13_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i3_4_lut_LC_21_13_6 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i3_4_lut_LC_21_13_6  (
            .in0(N__6459),
            .in1(N__3535),
            .in2(N__6329),
            .in3(N__3800),
            .lcout(\eeprom.n2727 ),
            .ltout(\eeprom.n2727_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1867_3_lut_LC_21_13_7 .C_ON=1'b0;
    defparam \eeprom.i2c.i1867_3_lut_LC_21_13_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1867_3_lut_LC_21_13_7 .LUT_INIT=16'b1111110011001100;
    LogicCell40 \eeprom.i2c.i1867_3_lut_LC_21_13_7  (
            .in0(_gnd_net_),
            .in1(N__3774),
            .in2(N__3520),
            .in3(N__3720),
            .lcout(\eeprom.i2c.n2881 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i2009_2_lut_3_lut_LC_21_14_0.C_ON=1'b0;
    defparam i2009_2_lut_3_lut_LC_21_14_0.SEQ_MODE=4'b0000;
    defparam i2009_2_lut_3_lut_LC_21_14_0.LUT_INIT=16'b0001000100000000;
    LogicCell40 i2009_2_lut_3_lut_LC_21_14_0 (
            .in0(N__3656),
            .in1(N__3971),
            .in2(_gnd_net_),
            .in3(N__3630),
            .lcout(n1740),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_2_lut_LC_21_14_2.C_ON=1'b0;
    defparam i1_2_lut_LC_21_14_2.SEQ_MODE=4'b0000;
    defparam i1_2_lut_LC_21_14_2.LUT_INIT=16'b0011001100000000;
    LogicCell40 i1_2_lut_LC_21_14_2 (
            .in0(_gnd_net_),
            .in1(N__3629),
            .in2(_gnd_net_),
            .in3(N__3675),
            .lcout(n6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam read_26_LC_21_14_4.C_ON=1'b0;
    defparam read_26_LC_21_14_4.SEQ_MODE=4'b1000;
    defparam read_26_LC_21_14_4.LUT_INIT=16'b0000000000110011;
    LogicCell40 read_26_LC_21_14_4 (
            .in0(_gnd_net_),
            .in1(N__3972),
            .in2(_gnd_net_),
            .in3(N__3631),
            .lcout(read),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5842),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1197_4_lut_LC_21_14_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1197_4_lut_LC_21_14_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1197_4_lut_LC_21_14_5 .LUT_INIT=16'b0000110001011100;
    LogicCell40 \eeprom.i2c.i1197_4_lut_LC_21_14_5  (
            .in0(N__5946),
            .in1(N__3829),
            .in2(N__3738),
            .in3(N__3801),
            .lcout(),
            .ltout(n805_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.rw_43_LC_21_14_6 .C_ON=1'b0;
    defparam \eeprom.rw_43_LC_21_14_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.rw_43_LC_21_14_6 .LUT_INIT=16'b1101110010001100;
    LogicCell40 \eeprom.rw_43_LC_21_14_6  (
            .in0(N__3777),
            .in1(N__4797),
            .in2(N__3784),
            .in3(N__3731),
            .lcout(rw),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5842),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.data_ready_42_LC_21_14_7 .C_ON=1'b0;
    defparam \eeprom.data_ready_42_LC_21_14_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.data_ready_42_LC_21_14_7 .LUT_INIT=16'b1010101010001100;
    LogicCell40 \eeprom.data_ready_42_LC_21_14_7  (
            .in0(N__3676),
            .in1(N__3776),
            .in2(N__5947),
            .in3(N__3735),
            .lcout(data_ready),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5842),
            .ce(),
            .sr(_gnd_net_));
    defparam ID_READOUT_FSM_state__i0_LC_21_15_2.C_ON=1'b0;
    defparam ID_READOUT_FSM_state__i0_LC_21_15_2.SEQ_MODE=4'b1000;
    defparam ID_READOUT_FSM_state__i0_LC_21_15_2.LUT_INIT=16'b0101000001011100;
    LogicCell40 ID_READOUT_FSM_state__i0_LC_21_15_2 (
            .in0(N__3949),
            .in1(N__3667),
            .in2(N__3979),
            .in3(N__3610),
            .lcout(ID_READOUT_FSM_state_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5841),
            .ce(),
            .sr(_gnd_net_));
    defparam i1547_2_lut_3_lut_4_lut_LC_21_15_3.C_ON=1'b0;
    defparam i1547_2_lut_3_lut_4_lut_LC_21_15_3.SEQ_MODE=4'b0000;
    defparam i1547_2_lut_3_lut_4_lut_LC_21_15_3.LUT_INIT=16'b1111111111011111;
    LogicCell40 i1547_2_lut_3_lut_4_lut_LC_21_15_3 (
            .in0(N__4425),
            .in1(N__3657),
            .in2(N__3637),
            .in3(N__3974),
            .lcout(n2476),
            .ltout(n2476_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam ID_READOUT_FSM_state__i1_LC_21_15_4.C_ON=1'b0;
    defparam ID_READOUT_FSM_state__i1_LC_21_15_4.SEQ_MODE=4'b1000;
    defparam ID_READOUT_FSM_state__i1_LC_21_15_4.LUT_INIT=16'b1010000011001100;
    LogicCell40 ID_READOUT_FSM_state__i1_LC_21_15_4 (
            .in0(N__3978),
            .in1(N__3636),
            .in2(N__3661),
            .in3(N__3940),
            .lcout(ID_READOUT_FSM_state_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5841),
            .ce(),
            .sr(_gnd_net_));
    defparam i1844_2_lut_3_lut_LC_21_15_6.C_ON=1'b0;
    defparam i1844_2_lut_3_lut_LC_21_15_6.SEQ_MODE=4'b0000;
    defparam i1844_2_lut_3_lut_LC_21_15_6.LUT_INIT=16'b1000100011001100;
    LogicCell40 i1844_2_lut_3_lut_LC_21_15_6 (
            .in0(N__3658),
            .in1(N__3632),
            .in2(_gnd_net_),
            .in3(N__4424),
            .lcout(n20),
            .ltout(n20_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i24_3_lut_LC_21_15_7.C_ON=1'b0;
    defparam i24_3_lut_LC_21_15_7.SEQ_MODE=4'b0000;
    defparam i24_3_lut_LC_21_15_7.LUT_INIT=16'b1100111100000011;
    LogicCell40 i24_3_lut_LC_21_15_7 (
            .in0(_gnd_net_),
            .in1(N__3973),
            .in2(N__3952),
            .in3(N__3948),
            .lcout(n1841),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i17_4_lut_LC_22_8_0 .C_ON=1'b0;
    defparam \eeprom.i2c.i17_4_lut_LC_22_8_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i17_4_lut_LC_22_8_0 .LUT_INIT=16'b0101110001010000;
    LogicCell40 \eeprom.i2c.i17_4_lut_LC_22_8_0  (
            .in0(N__3931),
            .in1(N__4702),
            .in2(N__3844),
            .in3(N__4360),
            .lcout(\eeprom.i2c.n1837 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1849_2_lut_4_lut_LC_22_8_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i1849_2_lut_4_lut_LC_22_8_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1849_2_lut_4_lut_LC_22_8_1 .LUT_INIT=16'b0001010100000000;
    LogicCell40 \eeprom.i2c.i1849_2_lut_4_lut_LC_22_8_1  (
            .in0(N__4311),
            .in1(N__4335),
            .in2(N__4639),
            .in3(N__6429),
            .lcout(\eeprom.i2c.n1928 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i22_3_lut_3_lut_LC_22_8_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i22_3_lut_3_lut_LC_22_8_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i22_3_lut_3_lut_LC_22_8_2 .LUT_INIT=16'b0001000111001100;
    LogicCell40 \eeprom.i2c.i22_3_lut_3_lut_LC_22_8_2  (
            .in0(N__6171),
            .in1(N__6418),
            .in2(_gnd_net_),
            .in3(N__6297),
            .lcout(\eeprom.i2c.n11 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_43_i9_2_lut_LC_22_8_3 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_43_i9_2_lut_LC_22_8_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_43_i9_2_lut_LC_22_8_3 .LUT_INIT=16'b1101110111011101;
    LogicCell40 \eeprom.i2c.equal_43_i9_2_lut_LC_22_8_3  (
            .in0(N__6419),
            .in1(N__6172),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(\eeprom.i2c.n9 ),
            .ltout(\eeprom.i2c.n9_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1860_2_lut_3_lut_LC_22_8_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i1860_2_lut_3_lut_LC_22_8_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1860_2_lut_3_lut_LC_22_8_4 .LUT_INIT=16'b1100110011000000;
    LogicCell40 \eeprom.i2c.i1860_2_lut_3_lut_LC_22_8_4  (
            .in0(_gnd_net_),
            .in1(N__4619),
            .in2(N__3934),
            .in3(N__4310),
            .lcout(\eeprom.i2c.n2873 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i4_4_lut_LC_22_8_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i4_4_lut_LC_22_8_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i4_4_lut_LC_22_8_5 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \eeprom.i2c.i4_4_lut_LC_22_8_5  (
            .in0(N__3924),
            .in1(N__3912),
            .in2(N__3901),
            .in3(N__3882),
            .lcout(),
            .ltout(\eeprom.i2c.n10_adj_379_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i5_3_lut_LC_22_8_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i5_3_lut_LC_22_8_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i5_3_lut_LC_22_8_6 .LUT_INIT=16'b1100000000000000;
    LogicCell40 \eeprom.i2c.i5_3_lut_LC_22_8_6  (
            .in0(_gnd_net_),
            .in1(N__3871),
            .in2(N__3859),
            .in3(N__3856),
            .lcout(\eeprom.i2c.n1935 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_3_lut_LC_22_8_7 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_3_lut_LC_22_8_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_3_lut_LC_22_8_7 .LUT_INIT=16'b0000000001000100;
    LogicCell40 \eeprom.i2c.i1_2_lut_3_lut_LC_22_8_7  (
            .in0(N__6298),
            .in1(N__6428),
            .in2(_gnd_net_),
            .in3(N__6067),
            .lcout(\eeprom.i2c.n1171 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2006_3_lut_4_lut_LC_22_9_0 .C_ON=1'b0;
    defparam \eeprom.i2c.i2006_3_lut_4_lut_LC_22_9_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2006_3_lut_4_lut_LC_22_9_0 .LUT_INIT=16'b0000000000100000;
    LogicCell40 \eeprom.i2c.i2006_3_lut_4_lut_LC_22_9_0  (
            .in0(N__6010),
            .in1(N__6135),
            .in2(N__4543),
            .in3(N__6281),
            .lcout(\eeprom.i2c.n2927 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i56_3_lut_3_lut_LC_22_9_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i56_3_lut_3_lut_LC_22_9_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i56_3_lut_3_lut_LC_22_9_1 .LUT_INIT=16'b0010001001100110;
    LogicCell40 \eeprom.i2c.i56_3_lut_3_lut_LC_22_9_1  (
            .in0(N__6408),
            .in1(N__6248),
            .in2(_gnd_net_),
            .in3(N__6008),
            .lcout(\eeprom.i2c.n33 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_60_i4_2_lut_LC_22_9_2 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_60_i4_2_lut_LC_22_9_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_60_i4_2_lut_LC_22_9_2 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \eeprom.i2c.equal_60_i4_2_lut_LC_22_9_2  (
            .in0(_gnd_net_),
            .in1(N__4844),
            .in2(_gnd_net_),
            .in3(N__4918),
            .lcout(n4),
            .ltout(n4_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i3_4_lut_LC_22_9_3 .C_ON=1'b0;
    defparam \eeprom.i2c.i3_4_lut_LC_22_9_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i3_4_lut_LC_22_9_3 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i2c.i3_4_lut_LC_22_9_3  (
            .in0(N__4060),
            .in1(N__4099),
            .in2(N__4003),
            .in3(N__4080),
            .lcout(),
            .ltout(\eeprom.i2c.n2951_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i3_4_lut_adj_8_LC_22_9_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i3_4_lut_adj_8_LC_22_9_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i3_4_lut_adj_8_LC_22_9_4 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i2c.i3_4_lut_adj_8_LC_22_9_4  (
            .in0(N__4041),
            .in1(N__4258),
            .in2(N__4000),
            .in3(N__4875),
            .lcout(\eeprom.i2c.n1054 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_4_lut_4_lut_LC_22_9_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_4_lut_4_lut_LC_22_9_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_4_lut_4_lut_LC_22_9_5 .LUT_INIT=16'b0001000100110010;
    LogicCell40 \eeprom.i2c.i1_4_lut_4_lut_LC_22_9_5  (
            .in0(N__6409),
            .in1(N__6249),
            .in2(N__6170),
            .in3(N__6009),
            .lcout(\eeprom.i2c.n37 ),
            .ltout(\eeprom.i2c.n37_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1856_3_lut_LC_22_9_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i1856_3_lut_LC_22_9_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1856_3_lut_LC_22_9_6 .LUT_INIT=16'b1111001111110000;
    LogicCell40 \eeprom.i2c.i1856_3_lut_LC_22_9_6  (
            .in0(_gnd_net_),
            .in1(N__6134),
            .in2(N__3997),
            .in3(N__4347),
            .lcout(\eeprom.i2c.n2869 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2c_clk_121_LC_22_9_7 .C_ON=1'b0;
    defparam \eeprom.i2c.i2c_clk_121_LC_22_9_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.i2c_clk_121_LC_22_9_7 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \eeprom.i2c.i2c_clk_121_LC_22_9_7  (
            .in0(_gnd_net_),
            .in1(N__5665),
            .in2(_gnd_net_),
            .in3(N__3990),
            .lcout(\eeprom.i2c.i2c_clk ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5851),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_i0_i2_LC_22_10_1 .C_ON=1'b0;
    defparam \eeprom.i2c.state_i0_i2_LC_22_10_1 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.state_i0_i2_LC_22_10_1 .LUT_INIT=16'b0000000001010101;
    LogicCell40 \eeprom.i2c.state_i0_i2_LC_22_10_1  (
            .in0(N__4643),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__5368),
            .lcout(\eeprom.i2c.state_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5728),
            .ce(N__4554),
            .sr(N__4129));
    defparam \eeprom.i2c.state_7__I_0_143_i11_2_lut_3_lut_4_lut_LC_22_10_4 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_143_i11_2_lut_3_lut_4_lut_LC_22_10_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_143_i11_2_lut_3_lut_4_lut_LC_22_10_4 .LUT_INIT=16'b1110111111111111;
    LogicCell40 \eeprom.i2c.state_7__I_0_143_i11_2_lut_3_lut_4_lut_LC_22_10_4  (
            .in0(N__6417),
            .in1(N__6255),
            .in2(N__6179),
            .in3(N__6011),
            .lcout(\eeprom.i2c.n15 ),
            .ltout(\eeprom.i2c.n15_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_adj_11_LC_22_10_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_adj_11_LC_22_10_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_adj_11_LC_22_10_5 .LUT_INIT=16'b1111101011111010;
    LogicCell40 \eeprom.i2c.i1_2_lut_adj_11_LC_22_10_5  (
            .in0(N__4884),
            .in1(_gnd_net_),
            .in2(N__4132),
            .in3(_gnd_net_),
            .lcout(n1717),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2011_3_lut_4_lut_LC_22_10_7 .C_ON=1'b0;
    defparam \eeprom.i2c.i2011_3_lut_4_lut_LC_22_10_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2011_3_lut_4_lut_LC_22_10_7 .LUT_INIT=16'b0000001010101010;
    LogicCell40 \eeprom.i2c.i2011_3_lut_4_lut_LC_22_10_7  (
            .in0(N__4534),
            .in1(N__4336),
            .in2(N__4492),
            .in3(N__4117),
            .lcout(\eeprom.i2c.n2454 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_adj_12_LC_22_11_0 .C_ON=1'b1;
    defparam \eeprom.i2c.i1_2_lut_adj_12_LC_22_11_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_adj_12_LC_22_11_0 .LUT_INIT=16'b1111111100110011;
    LogicCell40 \eeprom.i2c.i1_2_lut_adj_12_LC_22_11_0  (
            .in0(_gnd_net_),
            .in1(N__4885),
            .in2(_gnd_net_),
            .in3(N__4116),
            .lcout(n1722),
            .ltout(),
            .carryin(bfn_22_11_0_),
            .carryout(\eeprom.i2c.n2664 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.counter_i1_LC_22_11_1 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i1_LC_22_11_1 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.counter_i1_LC_22_11_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i1_LC_22_11_1  (
            .in0(_gnd_net_),
            .in1(N__4917),
            .in2(N__4471),
            .in3(N__4105),
            .lcout(\eeprom.i2c.counter_1 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2664 ),
            .carryout(\eeprom.i2c.n2665 ),
            .clk(N__5742),
            .ce(N__4396),
            .sr(N__4378));
    defparam \eeprom.i2c.counter_i2_LC_22_11_2 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i2_LC_22_11_2 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.counter_i2_LC_22_11_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i2_LC_22_11_2  (
            .in0(_gnd_net_),
            .in1(N__4458),
            .in2(N__4846),
            .in3(N__4102),
            .lcout(\eeprom.i2c.counter_2 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2665 ),
            .carryout(\eeprom.i2c.n2666 ),
            .clk(N__5742),
            .ce(N__4396),
            .sr(N__4378));
    defparam \eeprom.i2c.counter_i3_LC_22_11_3 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i3_LC_22_11_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i3_LC_22_11_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i3_LC_22_11_3  (
            .in0(_gnd_net_),
            .in1(N__4098),
            .in2(N__4472),
            .in3(N__4084),
            .lcout(\eeprom.i2c.counter_3 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2666 ),
            .carryout(\eeprom.i2c.n2667 ),
            .clk(N__5742),
            .ce(N__4396),
            .sr(N__4378));
    defparam \eeprom.i2c.counter_i4_LC_22_11_4 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i4_LC_22_11_4 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i4_LC_22_11_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i4_LC_22_11_4  (
            .in0(_gnd_net_),
            .in1(N__4462),
            .in2(N__4081),
            .in3(N__4063),
            .lcout(\eeprom.i2c.counter_4 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2667 ),
            .carryout(\eeprom.i2c.n2668 ),
            .clk(N__5742),
            .ce(N__4396),
            .sr(N__4378));
    defparam \eeprom.i2c.counter_i5_LC_22_11_5 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i5_LC_22_11_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i5_LC_22_11_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i5_LC_22_11_5  (
            .in0(_gnd_net_),
            .in1(N__4059),
            .in2(N__4473),
            .in3(N__4045),
            .lcout(\eeprom.i2c.counter_5 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2668 ),
            .carryout(\eeprom.i2c.n2669 ),
            .clk(N__5742),
            .ce(N__4396),
            .sr(N__4378));
    defparam \eeprom.i2c.counter_i6_LC_22_11_6 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i6_LC_22_11_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i6_LC_22_11_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i6_LC_22_11_6  (
            .in0(_gnd_net_),
            .in1(N__4466),
            .in2(N__4042),
            .in3(N__4264),
            .lcout(\eeprom.i2c.counter_6 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2669 ),
            .carryout(\eeprom.i2c.n2670 ),
            .clk(N__5742),
            .ce(N__4396),
            .sr(N__4378));
    defparam \eeprom.i2c.counter_i7_LC_22_11_7 .C_ON=1'b0;
    defparam \eeprom.i2c.counter_i7_LC_22_11_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i7_LC_22_11_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \eeprom.i2c.counter_i7_LC_22_11_7  (
            .in0(N__4467),
            .in1(N__4257),
            .in2(_gnd_net_),
            .in3(N__4261),
            .lcout(\eeprom.i2c.counter_7 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5742),
            .ce(N__4396),
            .sr(N__4378));
    defparam i6_4_lut_LC_22_12_0.C_ON=1'b0;
    defparam i6_4_lut_LC_22_12_0.SEQ_MODE=4'b0000;
    defparam i6_4_lut_LC_22_12_0.LUT_INIT=16'b1111111111111110;
    LogicCell40 i6_4_lut_LC_22_12_0 (
            .in0(N__4180),
            .in1(N__4200),
            .in2(N__4144),
            .in3(N__4234),
            .lcout(n14_adj_395),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_57_i4_2_lut_LC_22_12_1 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_57_i4_2_lut_LC_22_12_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_57_i4_2_lut_LC_22_12_1 .LUT_INIT=16'b1111111100110011;
    LogicCell40 \eeprom.i2c.equal_57_i4_2_lut_LC_22_12_1  (
            .in0(_gnd_net_),
            .in1(N__4836),
            .in2(_gnd_net_),
            .in3(N__4914),
            .lcout(n4_adj_394),
            .ltout(n4_adj_394_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i4_LC_22_12_2 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i4_LC_22_12_2 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i4_LC_22_12_2 .LUT_INIT=16'b1100110011001010;
    LogicCell40 \eeprom.i2c.data_out_i0_i4_LC_22_12_2  (
            .in0(N__4659),
            .in1(N__4233),
            .in2(N__4237),
            .in3(N__4223),
            .lcout(data_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.data_out_i0_i4C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i6_LC_22_12_3 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i6_LC_22_12_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i6_LC_22_12_3 .LUT_INIT=16'b1110010011110000;
    LogicCell40 \eeprom.i2c.data_out_i0_i6_LC_22_12_3  (
            .in0(N__4224),
            .in1(N__4663),
            .in2(N__4201),
            .in3(N__4189),
            .lcout(data_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.data_out_i0_i4C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1499_2_lut_LC_22_12_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i1499_2_lut_LC_22_12_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1499_2_lut_LC_22_12_4 .LUT_INIT=16'b1010000010100000;
    LogicCell40 \eeprom.i2c.i1499_2_lut_LC_22_12_4  (
            .in0(N__4916),
            .in1(_gnd_net_),
            .in2(N__4845),
            .in3(_gnd_net_),
            .lcout(n2424),
            .ltout(n2424_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i7_LC_22_12_5 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i7_LC_22_12_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i7_LC_22_12_5 .LUT_INIT=16'b1110111101000000;
    LogicCell40 \eeprom.i2c.data_out_i0_i7_LC_22_12_5  (
            .in0(N__4164),
            .in1(N__4664),
            .in2(N__4183),
            .in3(N__4179),
            .lcout(data_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.data_out_i0_i4C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i5_LC_22_12_6 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i5_LC_22_12_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i5_LC_22_12_6 .LUT_INIT=16'b1010101010111000;
    LogicCell40 \eeprom.i2c.data_out_i0_i5_LC_22_12_6  (
            .in0(N__4140),
            .in1(N__4171),
            .in2(N__4666),
            .in3(N__4163),
            .lcout(data_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.data_out_i0_i4C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_59_i4_2_lut_LC_22_12_7 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_59_i4_2_lut_LC_22_12_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_59_i4_2_lut_LC_22_12_7 .LUT_INIT=16'b1100110011111111;
    LogicCell40 \eeprom.i2c.equal_59_i4_2_lut_LC_22_12_7  (
            .in0(_gnd_net_),
            .in1(N__4840),
            .in2(_gnd_net_),
            .in3(N__4915),
            .lcout(n4_adj_393),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i6_4_lut_adj_13_LC_22_13_0.C_ON=1'b0;
    defparam i6_4_lut_adj_13_LC_22_13_0.SEQ_MODE=4'b0000;
    defparam i6_4_lut_adj_13_LC_22_13_0.LUT_INIT=16'b1111111111111110;
    LogicCell40 i6_4_lut_adj_13_LC_22_13_0 (
            .in0(N__5035),
            .in1(N__5001),
            .in2(N__5071),
            .in3(N__4737),
            .lcout(n14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i5_4_lut_LC_22_13_4.C_ON=1'b0;
    defparam i5_4_lut_LC_22_13_4.SEQ_MODE=4'b0000;
    defparam i5_4_lut_LC_22_13_4.LUT_INIT=16'b1111111111111110;
    LogicCell40 i5_4_lut_LC_22_13_4 (
            .in0(N__4723),
            .in1(N__5016),
            .in2(N__5053),
            .in3(N__4752),
            .lcout(),
            .ltout(n13_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i528_3_lut_LC_22_13_5.C_ON=1'b0;
    defparam i528_3_lut_LC_22_13_5.SEQ_MODE=4'b0000;
    defparam i528_3_lut_LC_22_13_5.LUT_INIT=16'b1100100011001000;
    LogicCell40 i528_3_lut_LC_22_13_5 (
            .in0(N__4288),
            .in1(N__4986),
            .in2(N__4282),
            .in3(_gnd_net_),
            .lcout(),
            .ltout(n18_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i3_4_lut_LC_22_13_6.C_ON=1'b0;
    defparam i3_4_lut_LC_22_13_6.SEQ_MODE=4'b0000;
    defparam i3_4_lut_LC_22_13_6.LUT_INIT=16'b1111111111111110;
    LogicCell40 i3_4_lut_LC_22_13_6 (
            .in0(N__4971),
            .in1(N__4956),
            .in2(N__4279),
            .in3(N__5208),
            .lcout(),
            .ltout(n2935_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i3_4_lut_adj_14_LC_22_13_7.C_ON=1'b0;
    defparam i3_4_lut_adj_14_LC_22_13_7.SEQ_MODE=4'b0000;
    defparam i3_4_lut_adj_14_LC_22_13_7.LUT_INIT=16'b1000000000000000;
    LogicCell40 i3_4_lut_adj_14_LC_22_13_7 (
            .in0(N__5193),
            .in1(N__5163),
            .in2(N__4276),
            .in3(N__5178),
            .lcout(n2939),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i999_2_lut_LC_22_14_1.C_ON=1'b0;
    defparam i999_2_lut_LC_22_14_1.SEQ_MODE=4'b0000;
    defparam i999_2_lut_LC_22_14_1.LUT_INIT=16'b1010101000000000;
    LogicCell40 i999_2_lut_LC_22_14_1 (
            .in0(N__5489),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__4426),
            .lcout(n1895),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i524_4_lut_LC_22_14_4.C_ON=1'b0;
    defparam i524_4_lut_LC_22_14_4.SEQ_MODE=4'b0000;
    defparam i524_4_lut_LC_22_14_4.LUT_INIT=16'b1100110011001000;
    LogicCell40 i524_4_lut_LC_22_14_4 (
            .in0(N__5130),
            .in1(N__5115),
            .in2(N__5149),
            .in3(N__4273),
            .lcout(),
            .ltout(n36_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i8_4_lut_LC_22_14_5.C_ON=1'b0;
    defparam i8_4_lut_LC_22_14_5.SEQ_MODE=4'b0000;
    defparam i8_4_lut_LC_22_14_5.LUT_INIT=16'b1111111111111110;
    LogicCell40 i8_4_lut_LC_22_14_5 (
            .in0(N__5337),
            .in1(N__5278),
            .in2(N__4267),
            .in3(N__5100),
            .lcout(),
            .ltout(n22_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i11_3_lut_LC_22_14_6.C_ON=1'b0;
    defparam i11_3_lut_LC_22_14_6.SEQ_MODE=4'b0000;
    defparam i11_3_lut_LC_22_14_6.LUT_INIT=16'b1111111111111100;
    LogicCell40 i11_3_lut_LC_22_14_6 (
            .in0(_gnd_net_),
            .in1(N__5292),
            .in2(N__4432),
            .in3(N__5242),
            .lcout(),
            .ltout(n25_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1504_4_lut_LC_22_14_7.C_ON=1'b0;
    defparam i1504_4_lut_LC_22_14_7.SEQ_MODE=4'b0000;
    defparam i1504_4_lut_LC_22_14_7.LUT_INIT=16'b0101010101010100;
    LogicCell40 i1504_4_lut_LC_22_14_7 (
            .in0(N__5539),
            .in1(N__4411),
            .in2(N__4429),
            .in3(N__4405),
            .lcout(n104),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i10_4_lut_LC_22_15_5.C_ON=1'b0;
    defparam i10_4_lut_LC_22_15_5.SEQ_MODE=4'b0000;
    defparam i10_4_lut_LC_22_15_5.LUT_INIT=16'b1111111111111110;
    LogicCell40 i10_4_lut_LC_22_15_5 (
            .in0(N__5307),
            .in1(N__5556),
            .in2(N__5260),
            .in3(N__5322),
            .lcout(n24),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i9_4_lut_LC_22_16_2.C_ON=1'b0;
    defparam i9_4_lut_LC_22_16_2.SEQ_MODE=4'b0000;
    defparam i9_4_lut_LC_22_16_2.LUT_INIT=16'b1111111111111110;
    LogicCell40 i9_4_lut_LC_22_16_2 (
            .in0(N__5085),
            .in1(N__5223),
            .in2(N__5575),
            .in3(N__5589),
            .lcout(n23),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.counter_i0_LC_23_8_0 .C_ON=1'b0;
    defparam \eeprom.i2c.counter_i0_LC_23_8_0 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.counter_i0_LC_23_8_0 .LUT_INIT=16'b1010010101011010;
    LogicCell40 \eeprom.i2c.counter_i0_LC_23_8_0  (
            .in0(N__4474),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__4876),
            .lcout(\eeprom.i2c.counter_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5764),
            .ce(N__4395),
            .sr(N__4377));
    defparam \eeprom.i2c.i1536_2_lut_3_lut_LC_23_9_0 .C_ON=1'b0;
    defparam \eeprom.i2c.i1536_2_lut_3_lut_LC_23_9_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1536_2_lut_3_lut_LC_23_9_0 .LUT_INIT=16'b1111111111011101;
    LogicCell40 \eeprom.i2c.i1536_2_lut_3_lut_LC_23_9_0  (
            .in0(N__6036),
            .in1(N__6420),
            .in2(_gnd_net_),
            .in3(N__6319),
            .lcout(n2414),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_3_lut_LC_23_9_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_3_lut_LC_23_9_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_3_lut_LC_23_9_1 .LUT_INIT=16'b0011001100100010;
    LogicCell40 \eeprom.i2c.i1_3_lut_LC_23_9_1  (
            .in0(N__4359),
            .in1(N__6173),
            .in2(_gnd_net_),
            .in3(N__4348),
            .lcout(\eeprom.i2c.n1932 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2013_3_lut_4_lut_LC_23_9_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i2013_3_lut_4_lut_LC_23_9_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2013_3_lut_4_lut_LC_23_9_2 .LUT_INIT=16'b0001111100000000;
    LogicCell40 \eeprom.i2c.i2013_3_lut_4_lut_LC_23_9_2  (
            .in0(N__4334),
            .in1(N__4315),
            .in2(N__4942),
            .in3(N__4530),
            .lcout(\eeprom.i2c.n2479 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1989_4_lut_4_lut_LC_23_9_3 .C_ON=1'b0;
    defparam \eeprom.i2c.i1989_4_lut_4_lut_LC_23_9_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1989_4_lut_4_lut_LC_23_9_3 .LUT_INIT=16'b1010101010100010;
    LogicCell40 \eeprom.i2c.i1989_4_lut_4_lut_LC_23_9_3  (
            .in0(N__4678),
            .in1(N__6178),
            .in2(N__6512),
            .in3(N__6038),
            .lcout(\eeprom.i2c.n1152 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_3_lut_4_lut_LC_23_9_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_3_lut_4_lut_LC_23_9_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_3_lut_4_lut_LC_23_9_4 .LUT_INIT=16'b1110101000000000;
    LogicCell40 \eeprom.i2c.i1_3_lut_4_lut_LC_23_9_4  (
            .in0(N__6037),
            .in1(N__6421),
            .in2(N__6188),
            .in3(N__6320),
            .lcout(),
            .ltout(\eeprom.i2c.n1739_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1985_4_lut_LC_23_9_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1985_4_lut_LC_23_9_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1985_4_lut_LC_23_9_5 .LUT_INIT=16'b0000100000001111;
    LogicCell40 \eeprom.i2c.i1985_4_lut_LC_23_9_5  (
            .in0(N__4689),
            .in1(N__5344),
            .in2(N__4705),
            .in3(N__4701),
            .lcout(n1061),
            .ltout(n1061_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_i0_i0_LC_23_9_6 .C_ON=1'b0;
    defparam \eeprom.i2c.state_i0_i0_LC_23_9_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.state_i0_i0_LC_23_9_6 .LUT_INIT=16'b0111111101110000;
    LogicCell40 \eeprom.i2c.state_i0_i0_LC_23_9_6  (
            .in0(N__4927),
            .in1(N__4690),
            .in2(N__4681),
            .in3(N__6422),
            .lcout(state_0_adj_392),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5757),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1987_4_lut_LC_23_9_7 .C_ON=1'b0;
    defparam \eeprom.i2c.i1987_4_lut_LC_23_9_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1987_4_lut_LC_23_9_7 .LUT_INIT=16'b0010001000101010;
    LogicCell40 \eeprom.i2c.i1987_4_lut_LC_23_9_7  (
            .in0(N__4677),
            .in1(N__6174),
            .in2(N__6073),
            .in3(N__5350),
            .lcout(\eeprom.i2c.n2791 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_i0_i1_LC_23_10_0 .C_ON=1'b0;
    defparam \eeprom.i2c.state_i0_i1_LC_23_10_0 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.state_i0_i1_LC_23_10_0 .LUT_INIT=16'b0011011100110011;
    LogicCell40 \eeprom.i2c.state_i0_i1_LC_23_10_0  (
            .in0(N__5361),
            .in1(N__6469),
            .in2(N__4658),
            .in3(N__4786),
            .lcout(\eeprom.i2c.state_1_adj_375 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5737),
            .ce(N__4553),
            .sr(N__4504));
    defparam \eeprom.i2c.equal_44_i10_2_lut_LC_23_10_3 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_44_i10_2_lut_LC_23_10_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_44_i10_2_lut_LC_23_10_3 .LUT_INIT=16'b1111111100110011;
    LogicCell40 \eeprom.i2c.equal_44_i10_2_lut_LC_23_10_3  (
            .in0(_gnd_net_),
            .in1(N__6305),
            .in2(_gnd_net_),
            .in3(N__6054),
            .lcout(\eeprom.i2c.n10 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_LC_23_10_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_LC_23_10_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_LC_23_10_4 .LUT_INIT=16'b0101010100000000;
    LogicCell40 \eeprom.i2c.i1_2_lut_LC_23_10_4  (
            .in0(N__6055),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__6312),
            .lcout(\eeprom.i2c.n7 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam CONSTANT_ONE_LUT4_LC_23_11_0.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_23_11_0.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_23_11_0.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_23_11_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(CONSTANT_ONE_NET),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_3_lut_4_lut_LC_23_11_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_3_lut_4_lut_LC_23_11_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_3_lut_4_lut_LC_23_11_2 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i2c.i1_2_lut_3_lut_4_lut_LC_23_11_2  (
            .in0(N__6447),
            .in1(N__6042),
            .in2(N__6331),
            .in3(N__6156),
            .lcout(n47),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1509_2_lut_3_lut_4_lut_LC_23_11_3 .C_ON=1'b0;
    defparam \eeprom.i2c.i1509_2_lut_3_lut_4_lut_LC_23_11_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1509_2_lut_3_lut_4_lut_LC_23_11_3 .LUT_INIT=16'b1110111111111011;
    LogicCell40 \eeprom.i2c.i1509_2_lut_3_lut_4_lut_LC_23_11_3  (
            .in0(N__6041),
            .in1(N__6157),
            .in2(N__6330),
            .in3(N__6446),
            .lcout(n2434),
            .ltout(n2434_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1973_3_lut_LC_23_11_4.C_ON=1'b0;
    defparam i1973_3_lut_LC_23_11_4.SEQ_MODE=4'b0000;
    defparam i1973_3_lut_LC_23_11_4.LUT_INIT=16'b1111000000110000;
    LogicCell40 i1973_3_lut_LC_23_11_4 (
            .in0(_gnd_net_),
            .in1(N__5880),
            .in2(N__4930),
            .in3(N__5909),
            .lcout(n2958),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1976_2_lut_LC_23_11_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1976_2_lut_LC_23_11_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1976_2_lut_LC_23_11_5 .LUT_INIT=16'b0000000011001100;
    LogicCell40 \eeprom.i2c.i1976_2_lut_LC_23_11_5  (
            .in0(_gnd_net_),
            .in1(N__4784),
            .in2(_gnd_net_),
            .in3(N__4910),
            .lcout(),
            .ltout(\eeprom.i2c.n2967_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1968_4_lut_LC_23_11_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i1968_4_lut_LC_23_11_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1968_4_lut_LC_23_11_6 .LUT_INIT=16'b1001100000000000;
    LogicCell40 \eeprom.i2c.i1968_4_lut_LC_23_11_6  (
            .in0(N__4877),
            .in1(N__4835),
            .in2(N__4807),
            .in3(N__6155),
            .lcout(\eeprom.i2c.n2963 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.saved_addr__i1_LC_23_11_7 .C_ON=1'b0;
    defparam \eeprom.i2c.saved_addr__i1_LC_23_11_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.saved_addr__i1_LC_23_11_7 .LUT_INIT=16'b1110111101000000;
    LogicCell40 \eeprom.i2c.saved_addr__i1_LC_23_11_7  (
            .in0(N__5910),
            .in1(N__4804),
            .in2(N__5881),
            .in3(N__4785),
            .lcout(saved_addr_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5771),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_3_lut_adj_10_LC_23_12_0 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_3_lut_adj_10_LC_23_12_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_3_lut_adj_10_LC_23_12_0 .LUT_INIT=16'b1111111110001000;
    LogicCell40 \eeprom.i2c.i1_2_lut_3_lut_adj_10_LC_23_12_0  (
            .in0(N__5911),
            .in1(N__5867),
            .in2(_gnd_net_),
            .in3(N__4770),
            .lcout(\eeprom.i2c.n1766 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam delay_counter_i0_LC_23_13_0.C_ON=1'b1;
    defparam delay_counter_i0_LC_23_13_0.SEQ_MODE=4'b1000;
    defparam delay_counter_i0_LC_23_13_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i0_LC_23_13_0 (
            .in0(_gnd_net_),
            .in1(N__4753),
            .in2(_gnd_net_),
            .in3(N__4741),
            .lcout(delay_counter_0),
            .ltout(),
            .carryin(bfn_23_13_0_),
            .carryout(n2633),
            .clk(N__5848),
            .ce(N__5517),
            .sr(N__5472));
    defparam delay_counter_i1_LC_23_13_1.C_ON=1'b1;
    defparam delay_counter_i1_LC_23_13_1.SEQ_MODE=4'b1000;
    defparam delay_counter_i1_LC_23_13_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i1_LC_23_13_1 (
            .in0(_gnd_net_),
            .in1(N__4738),
            .in2(_gnd_net_),
            .in3(N__4726),
            .lcout(delay_counter_1),
            .ltout(),
            .carryin(n2633),
            .carryout(n2634),
            .clk(N__5848),
            .ce(N__5517),
            .sr(N__5472));
    defparam delay_counter_i2_LC_23_13_2.C_ON=1'b1;
    defparam delay_counter_i2_LC_23_13_2.SEQ_MODE=4'b1000;
    defparam delay_counter_i2_LC_23_13_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i2_LC_23_13_2 (
            .in0(_gnd_net_),
            .in1(N__4722),
            .in2(_gnd_net_),
            .in3(N__4708),
            .lcout(delay_counter_2),
            .ltout(),
            .carryin(n2634),
            .carryout(n2635),
            .clk(N__5848),
            .ce(N__5517),
            .sr(N__5472));
    defparam delay_counter_i3_LC_23_13_3.C_ON=1'b1;
    defparam delay_counter_i3_LC_23_13_3.SEQ_MODE=4'b1000;
    defparam delay_counter_i3_LC_23_13_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i3_LC_23_13_3 (
            .in0(_gnd_net_),
            .in1(N__5070),
            .in2(_gnd_net_),
            .in3(N__5056),
            .lcout(delay_counter_3),
            .ltout(),
            .carryin(n2635),
            .carryout(n2636),
            .clk(N__5848),
            .ce(N__5517),
            .sr(N__5472));
    defparam delay_counter_i4_LC_23_13_4.C_ON=1'b1;
    defparam delay_counter_i4_LC_23_13_4.SEQ_MODE=4'b1000;
    defparam delay_counter_i4_LC_23_13_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i4_LC_23_13_4 (
            .in0(_gnd_net_),
            .in1(N__5052),
            .in2(_gnd_net_),
            .in3(N__5038),
            .lcout(delay_counter_4),
            .ltout(),
            .carryin(n2636),
            .carryout(n2637),
            .clk(N__5848),
            .ce(N__5517),
            .sr(N__5472));
    defparam delay_counter_i5_LC_23_13_5.C_ON=1'b1;
    defparam delay_counter_i5_LC_23_13_5.SEQ_MODE=4'b1000;
    defparam delay_counter_i5_LC_23_13_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i5_LC_23_13_5 (
            .in0(_gnd_net_),
            .in1(N__5034),
            .in2(_gnd_net_),
            .in3(N__5020),
            .lcout(delay_counter_5),
            .ltout(),
            .carryin(n2637),
            .carryout(n2638),
            .clk(N__5848),
            .ce(N__5517),
            .sr(N__5472));
    defparam delay_counter_i6_LC_23_13_6.C_ON=1'b1;
    defparam delay_counter_i6_LC_23_13_6.SEQ_MODE=4'b1000;
    defparam delay_counter_i6_LC_23_13_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i6_LC_23_13_6 (
            .in0(_gnd_net_),
            .in1(N__5017),
            .in2(_gnd_net_),
            .in3(N__5005),
            .lcout(delay_counter_6),
            .ltout(),
            .carryin(n2638),
            .carryout(n2639),
            .clk(N__5848),
            .ce(N__5517),
            .sr(N__5472));
    defparam delay_counter_i7_LC_23_13_7.C_ON=1'b1;
    defparam delay_counter_i7_LC_23_13_7.SEQ_MODE=4'b1000;
    defparam delay_counter_i7_LC_23_13_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i7_LC_23_13_7 (
            .in0(_gnd_net_),
            .in1(N__5002),
            .in2(_gnd_net_),
            .in3(N__4990),
            .lcout(delay_counter_7),
            .ltout(),
            .carryin(n2639),
            .carryout(n2640),
            .clk(N__5848),
            .ce(N__5517),
            .sr(N__5472));
    defparam delay_counter_i8_LC_23_14_0.C_ON=1'b1;
    defparam delay_counter_i8_LC_23_14_0.SEQ_MODE=4'b1000;
    defparam delay_counter_i8_LC_23_14_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i8_LC_23_14_0 (
            .in0(_gnd_net_),
            .in1(N__4987),
            .in2(_gnd_net_),
            .in3(N__4975),
            .lcout(delay_counter_8),
            .ltout(),
            .carryin(bfn_23_14_0_),
            .carryout(n2641),
            .clk(N__5847),
            .ce(N__5509),
            .sr(N__5455));
    defparam delay_counter_i9_LC_23_14_1.C_ON=1'b1;
    defparam delay_counter_i9_LC_23_14_1.SEQ_MODE=4'b1000;
    defparam delay_counter_i9_LC_23_14_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i9_LC_23_14_1 (
            .in0(_gnd_net_),
            .in1(N__4972),
            .in2(_gnd_net_),
            .in3(N__4960),
            .lcout(delay_counter_9),
            .ltout(),
            .carryin(n2641),
            .carryout(n2642),
            .clk(N__5847),
            .ce(N__5509),
            .sr(N__5455));
    defparam delay_counter_i10_LC_23_14_2.C_ON=1'b1;
    defparam delay_counter_i10_LC_23_14_2.SEQ_MODE=4'b1000;
    defparam delay_counter_i10_LC_23_14_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i10_LC_23_14_2 (
            .in0(_gnd_net_),
            .in1(N__4957),
            .in2(_gnd_net_),
            .in3(N__4945),
            .lcout(delay_counter_10),
            .ltout(),
            .carryin(n2642),
            .carryout(n2643),
            .clk(N__5847),
            .ce(N__5509),
            .sr(N__5455));
    defparam delay_counter_i11_LC_23_14_3.C_ON=1'b1;
    defparam delay_counter_i11_LC_23_14_3.SEQ_MODE=4'b1000;
    defparam delay_counter_i11_LC_23_14_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i11_LC_23_14_3 (
            .in0(_gnd_net_),
            .in1(N__5209),
            .in2(_gnd_net_),
            .in3(N__5197),
            .lcout(delay_counter_11),
            .ltout(),
            .carryin(n2643),
            .carryout(n2644),
            .clk(N__5847),
            .ce(N__5509),
            .sr(N__5455));
    defparam delay_counter_i12_LC_23_14_4.C_ON=1'b1;
    defparam delay_counter_i12_LC_23_14_4.SEQ_MODE=4'b1000;
    defparam delay_counter_i12_LC_23_14_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i12_LC_23_14_4 (
            .in0(_gnd_net_),
            .in1(N__5194),
            .in2(_gnd_net_),
            .in3(N__5182),
            .lcout(delay_counter_12),
            .ltout(),
            .carryin(n2644),
            .carryout(n2645),
            .clk(N__5847),
            .ce(N__5509),
            .sr(N__5455));
    defparam delay_counter_i13_LC_23_14_5.C_ON=1'b1;
    defparam delay_counter_i13_LC_23_14_5.SEQ_MODE=4'b1000;
    defparam delay_counter_i13_LC_23_14_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i13_LC_23_14_5 (
            .in0(_gnd_net_),
            .in1(N__5179),
            .in2(_gnd_net_),
            .in3(N__5167),
            .lcout(delay_counter_13),
            .ltout(),
            .carryin(n2645),
            .carryout(n2646),
            .clk(N__5847),
            .ce(N__5509),
            .sr(N__5455));
    defparam delay_counter_i14_LC_23_14_6.C_ON=1'b1;
    defparam delay_counter_i14_LC_23_14_6.SEQ_MODE=4'b1000;
    defparam delay_counter_i14_LC_23_14_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i14_LC_23_14_6 (
            .in0(_gnd_net_),
            .in1(N__5164),
            .in2(_gnd_net_),
            .in3(N__5152),
            .lcout(delay_counter_14),
            .ltout(),
            .carryin(n2646),
            .carryout(n2647),
            .clk(N__5847),
            .ce(N__5509),
            .sr(N__5455));
    defparam delay_counter_i15_LC_23_14_7.C_ON=1'b1;
    defparam delay_counter_i15_LC_23_14_7.SEQ_MODE=4'b1000;
    defparam delay_counter_i15_LC_23_14_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i15_LC_23_14_7 (
            .in0(_gnd_net_),
            .in1(N__5148),
            .in2(_gnd_net_),
            .in3(N__5134),
            .lcout(delay_counter_15),
            .ltout(),
            .carryin(n2647),
            .carryout(n2648),
            .clk(N__5847),
            .ce(N__5509),
            .sr(N__5455));
    defparam delay_counter_i16_LC_23_15_0.C_ON=1'b1;
    defparam delay_counter_i16_LC_23_15_0.SEQ_MODE=4'b1000;
    defparam delay_counter_i16_LC_23_15_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i16_LC_23_15_0 (
            .in0(_gnd_net_),
            .in1(N__5131),
            .in2(_gnd_net_),
            .in3(N__5119),
            .lcout(delay_counter_16),
            .ltout(),
            .carryin(bfn_23_15_0_),
            .carryout(n2649),
            .clk(N__5846),
            .ce(N__5521),
            .sr(N__5473));
    defparam delay_counter_i17_LC_23_15_1.C_ON=1'b1;
    defparam delay_counter_i17_LC_23_15_1.SEQ_MODE=4'b1000;
    defparam delay_counter_i17_LC_23_15_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i17_LC_23_15_1 (
            .in0(_gnd_net_),
            .in1(N__5116),
            .in2(_gnd_net_),
            .in3(N__5104),
            .lcout(delay_counter_17),
            .ltout(),
            .carryin(n2649),
            .carryout(n2650),
            .clk(N__5846),
            .ce(N__5521),
            .sr(N__5473));
    defparam delay_counter_i18_LC_23_15_2.C_ON=1'b1;
    defparam delay_counter_i18_LC_23_15_2.SEQ_MODE=4'b1000;
    defparam delay_counter_i18_LC_23_15_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i18_LC_23_15_2 (
            .in0(_gnd_net_),
            .in1(N__5101),
            .in2(_gnd_net_),
            .in3(N__5089),
            .lcout(delay_counter_18),
            .ltout(),
            .carryin(n2650),
            .carryout(n2651),
            .clk(N__5846),
            .ce(N__5521),
            .sr(N__5473));
    defparam delay_counter_i19_LC_23_15_3.C_ON=1'b1;
    defparam delay_counter_i19_LC_23_15_3.SEQ_MODE=4'b1000;
    defparam delay_counter_i19_LC_23_15_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i19_LC_23_15_3 (
            .in0(_gnd_net_),
            .in1(N__5086),
            .in2(_gnd_net_),
            .in3(N__5074),
            .lcout(delay_counter_19),
            .ltout(),
            .carryin(n2651),
            .carryout(n2652),
            .clk(N__5846),
            .ce(N__5521),
            .sr(N__5473));
    defparam delay_counter_i20_LC_23_15_4.C_ON=1'b1;
    defparam delay_counter_i20_LC_23_15_4.SEQ_MODE=4'b1000;
    defparam delay_counter_i20_LC_23_15_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i20_LC_23_15_4 (
            .in0(_gnd_net_),
            .in1(N__5338),
            .in2(_gnd_net_),
            .in3(N__5326),
            .lcout(delay_counter_20),
            .ltout(),
            .carryin(n2652),
            .carryout(n2653),
            .clk(N__5846),
            .ce(N__5521),
            .sr(N__5473));
    defparam delay_counter_i21_LC_23_15_5.C_ON=1'b1;
    defparam delay_counter_i21_LC_23_15_5.SEQ_MODE=4'b1000;
    defparam delay_counter_i21_LC_23_15_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i21_LC_23_15_5 (
            .in0(_gnd_net_),
            .in1(N__5323),
            .in2(_gnd_net_),
            .in3(N__5311),
            .lcout(delay_counter_21),
            .ltout(),
            .carryin(n2653),
            .carryout(n2654),
            .clk(N__5846),
            .ce(N__5521),
            .sr(N__5473));
    defparam delay_counter_i22_LC_23_15_6.C_ON=1'b1;
    defparam delay_counter_i22_LC_23_15_6.SEQ_MODE=4'b1000;
    defparam delay_counter_i22_LC_23_15_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i22_LC_23_15_6 (
            .in0(_gnd_net_),
            .in1(N__5308),
            .in2(_gnd_net_),
            .in3(N__5296),
            .lcout(delay_counter_22),
            .ltout(),
            .carryin(n2654),
            .carryout(n2655),
            .clk(N__5846),
            .ce(N__5521),
            .sr(N__5473));
    defparam delay_counter_i23_LC_23_15_7.C_ON=1'b1;
    defparam delay_counter_i23_LC_23_15_7.SEQ_MODE=4'b1000;
    defparam delay_counter_i23_LC_23_15_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i23_LC_23_15_7 (
            .in0(_gnd_net_),
            .in1(N__5293),
            .in2(_gnd_net_),
            .in3(N__5281),
            .lcout(delay_counter_23),
            .ltout(),
            .carryin(n2655),
            .carryout(n2656),
            .clk(N__5846),
            .ce(N__5521),
            .sr(N__5473));
    defparam delay_counter_i24_LC_23_16_0.C_ON=1'b1;
    defparam delay_counter_i24_LC_23_16_0.SEQ_MODE=4'b1000;
    defparam delay_counter_i24_LC_23_16_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i24_LC_23_16_0 (
            .in0(_gnd_net_),
            .in1(N__5277),
            .in2(_gnd_net_),
            .in3(N__5263),
            .lcout(delay_counter_24),
            .ltout(),
            .carryin(bfn_23_16_0_),
            .carryout(n2657),
            .clk(N__5843),
            .ce(N__5516),
            .sr(N__5471));
    defparam delay_counter_i25_LC_23_16_1.C_ON=1'b1;
    defparam delay_counter_i25_LC_23_16_1.SEQ_MODE=4'b1000;
    defparam delay_counter_i25_LC_23_16_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i25_LC_23_16_1 (
            .in0(_gnd_net_),
            .in1(N__5259),
            .in2(_gnd_net_),
            .in3(N__5245),
            .lcout(delay_counter_25),
            .ltout(),
            .carryin(n2657),
            .carryout(n2658),
            .clk(N__5843),
            .ce(N__5516),
            .sr(N__5471));
    defparam delay_counter_i26_LC_23_16_2.C_ON=1'b1;
    defparam delay_counter_i26_LC_23_16_2.SEQ_MODE=4'b1000;
    defparam delay_counter_i26_LC_23_16_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i26_LC_23_16_2 (
            .in0(_gnd_net_),
            .in1(N__5241),
            .in2(_gnd_net_),
            .in3(N__5227),
            .lcout(delay_counter_26),
            .ltout(),
            .carryin(n2658),
            .carryout(n2659),
            .clk(N__5843),
            .ce(N__5516),
            .sr(N__5471));
    defparam delay_counter_i27_LC_23_16_3.C_ON=1'b1;
    defparam delay_counter_i27_LC_23_16_3.SEQ_MODE=4'b1000;
    defparam delay_counter_i27_LC_23_16_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i27_LC_23_16_3 (
            .in0(_gnd_net_),
            .in1(N__5224),
            .in2(_gnd_net_),
            .in3(N__5212),
            .lcout(delay_counter_27),
            .ltout(),
            .carryin(n2659),
            .carryout(n2660),
            .clk(N__5843),
            .ce(N__5516),
            .sr(N__5471));
    defparam delay_counter_i28_LC_23_16_4.C_ON=1'b1;
    defparam delay_counter_i28_LC_23_16_4.SEQ_MODE=4'b1000;
    defparam delay_counter_i28_LC_23_16_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i28_LC_23_16_4 (
            .in0(_gnd_net_),
            .in1(N__5590),
            .in2(_gnd_net_),
            .in3(N__5578),
            .lcout(delay_counter_28),
            .ltout(),
            .carryin(n2660),
            .carryout(n2661),
            .clk(N__5843),
            .ce(N__5516),
            .sr(N__5471));
    defparam delay_counter_i29_LC_23_16_5.C_ON=1'b1;
    defparam delay_counter_i29_LC_23_16_5.SEQ_MODE=4'b1000;
    defparam delay_counter_i29_LC_23_16_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i29_LC_23_16_5 (
            .in0(_gnd_net_),
            .in1(N__5574),
            .in2(_gnd_net_),
            .in3(N__5560),
            .lcout(delay_counter_29),
            .ltout(),
            .carryin(n2661),
            .carryout(n2662),
            .clk(N__5843),
            .ce(N__5516),
            .sr(N__5471));
    defparam delay_counter_i30_LC_23_16_6.C_ON=1'b1;
    defparam delay_counter_i30_LC_23_16_6.SEQ_MODE=4'b1000;
    defparam delay_counter_i30_LC_23_16_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i30_LC_23_16_6 (
            .in0(_gnd_net_),
            .in1(N__5557),
            .in2(_gnd_net_),
            .in3(N__5545),
            .lcout(delay_counter_30),
            .ltout(),
            .carryin(n2662),
            .carryout(n2663),
            .clk(N__5843),
            .ce(N__5516),
            .sr(N__5471));
    defparam delay_counter_i31_LC_23_16_7.C_ON=1'b0;
    defparam delay_counter_i31_LC_23_16_7.SEQ_MODE=4'b1000;
    defparam delay_counter_i31_LC_23_16_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i31_LC_23_16_7 (
            .in0(_gnd_net_),
            .in1(N__5535),
            .in2(_gnd_net_),
            .in3(N__5542),
            .lcout(delay_counter_31),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5843),
            .ce(N__5516),
            .sr(N__5471));
    defparam \eeprom.i2c.i469_2_lut_LC_24_7_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i469_2_lut_LC_24_7_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i469_2_lut_LC_24_7_4 .LUT_INIT=16'b1010101000000000;
    LogicCell40 \eeprom.i2c.i469_2_lut_LC_24_7_4  (
            .in0(N__6487),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__5400),
            .lcout(sda_out),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.write_enable_130_LC_24_8_4 .C_ON=1'b0;
    defparam \eeprom.i2c.write_enable_130_LC_24_8_4 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.write_enable_130_LC_24_8_4 .LUT_INIT=16'b0000000000100010;
    LogicCell40 \eeprom.i2c.write_enable_130_LC_24_8_4  (
            .in0(N__6513),
            .in1(N__6437),
            .in2(_gnd_net_),
            .in3(N__6070),
            .lcout(sda_enable),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.write_enable_130C_net ),
            .ce(N__5389),
            .sr(N__5383));
    defparam \eeprom.i2c.state_7__I_0_139_i11_2_lut_3_lut_4_lut_LC_24_9_0 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_139_i11_2_lut_3_lut_4_lut_LC_24_9_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_139_i11_2_lut_3_lut_4_lut_LC_24_9_0 .LUT_INIT=16'b1110111111111111;
    LogicCell40 \eeprom.i2c.state_7__I_0_139_i11_2_lut_3_lut_4_lut_LC_24_9_0  (
            .in0(N__6318),
            .in1(N__6069),
            .in2(N__6445),
            .in3(N__6154),
            .lcout(\eeprom.i2c.n11_adj_378 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_3_lut_2_lut_LC_24_9_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_3_lut_2_lut_LC_24_9_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_3_lut_2_lut_LC_24_9_5 .LUT_INIT=16'b0000000011001100;
    LogicCell40 \eeprom.i2c.i1_3_lut_2_lut_LC_24_9_5  (
            .in0(_gnd_net_),
            .in1(N__6410),
            .in2(_gnd_net_),
            .in3(N__6316),
            .lcout(\eeprom.i2c.n13 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_7__I_0_138_i11_2_lut_3_lut_4_lut_LC_24_9_6 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_138_i11_2_lut_3_lut_4_lut_LC_24_9_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_138_i11_2_lut_3_lut_4_lut_LC_24_9_6 .LUT_INIT=16'b1111111111111011;
    LogicCell40 \eeprom.i2c.state_7__I_0_138_i11_2_lut_3_lut_4_lut_LC_24_9_6  (
            .in0(N__6317),
            .in1(N__6153),
            .in2(N__6444),
            .in3(N__6068),
            .lcout(\eeprom.i2c.n11_adj_381 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.sda_out_131_LC_24_10_0 .C_ON=1'b0;
    defparam \eeprom.i2c.sda_out_131_LC_24_10_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.sda_out_131_LC_24_10_0 .LUT_INIT=16'b0000000000111010;
    LogicCell40 \eeprom.i2c.sda_out_131_LC_24_10_0  (
            .in0(N__6526),
            .in1(N__6430),
            .in2(N__6520),
            .in3(N__6056),
            .lcout(\eeprom.i2c.sda_out_adj_376 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.sda_out_131C_net ),
            .ce(N__6478),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_7__I_0_144_i11_2_lut_4_lut_LC_24_10_4 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_144_i11_2_lut_4_lut_LC_24_10_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_144_i11_2_lut_4_lut_LC_24_10_4 .LUT_INIT=16'b1111110111111111;
    LogicCell40 \eeprom.i2c.state_7__I_0_144_i11_2_lut_4_lut_LC_24_10_4  (
            .in0(N__6448),
            .in1(N__6327),
            .in2(N__6180),
            .in3(N__6057),
            .lcout(\eeprom.i2c.n11_adj_380 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2c_scl_enable_123_LC_24_12_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i2c_scl_enable_123_LC_24_12_2 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.i2c_scl_enable_123_LC_24_12_2 .LUT_INIT=16'b1111111111111000;
    LogicCell40 \eeprom.i2c.i2c_scl_enable_123_LC_24_12_2  (
            .in0(N__6449),
            .in1(N__6328),
            .in2(N__6189),
            .in3(N__6071),
            .lcout(scl_enable),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.i2c_scl_enable_123C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.enable_slow_120_LC_24_13_6 .C_ON=1'b0;
    defparam \eeprom.i2c.enable_slow_120_LC_24_13_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.enable_slow_120_LC_24_13_6 .LUT_INIT=16'b0101010111111111;
    LogicCell40 \eeprom.i2c.enable_slow_120_LC_24_13_6  (
            .in0(N__5925),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__5868),
            .lcout(state_7_N_273_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__5849),
            .ce(N__5794),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1480_2_lut_LC_27_18_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i1480_2_lut_LC_27_18_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1480_2_lut_LC_27_18_6 .LUT_INIT=16'b1010101011111111;
    LogicCell40 \eeprom.i2c.i1480_2_lut_LC_27_18_6  (
            .in0(N__5782),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__5628),
            .lcout(scl_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // TinyFPGA_B
