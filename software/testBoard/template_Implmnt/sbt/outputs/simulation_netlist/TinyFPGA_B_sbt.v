// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 12 2017 08:25:46

// File Generated:     Jan 31 2020 00:08:55

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

    wire N__6937;
    wire N__6936;
    wire N__6935;
    wire N__6928;
    wire N__6927;
    wire N__6926;
    wire N__6919;
    wire N__6918;
    wire N__6917;
    wire N__6910;
    wire N__6909;
    wire N__6908;
    wire N__6901;
    wire N__6900;
    wire N__6899;
    wire N__6892;
    wire N__6891;
    wire N__6890;
    wire N__6883;
    wire N__6882;
    wire N__6881;
    wire N__6874;
    wire N__6873;
    wire N__6872;
    wire N__6865;
    wire N__6864;
    wire N__6863;
    wire N__6856;
    wire N__6855;
    wire N__6854;
    wire N__6847;
    wire N__6846;
    wire N__6845;
    wire N__6838;
    wire N__6837;
    wire N__6836;
    wire N__6829;
    wire N__6828;
    wire N__6827;
    wire N__6820;
    wire N__6819;
    wire N__6818;
    wire N__6811;
    wire N__6810;
    wire N__6809;
    wire N__6802;
    wire N__6801;
    wire N__6800;
    wire N__6783;
    wire N__6782;
    wire N__6779;
    wire N__6776;
    wire N__6773;
    wire N__6768;
    wire N__6765;
    wire N__6762;
    wire N__6761;
    wire N__6758;
    wire N__6755;
    wire N__6750;
    wire N__6749;
    wire N__6748;
    wire N__6747;
    wire N__6746;
    wire N__6745;
    wire N__6744;
    wire N__6743;
    wire N__6742;
    wire N__6741;
    wire N__6740;
    wire N__6739;
    wire N__6738;
    wire N__6737;
    wire N__6736;
    wire N__6735;
    wire N__6734;
    wire N__6733;
    wire N__6732;
    wire N__6693;
    wire N__6690;
    wire N__6687;
    wire N__6684;
    wire N__6681;
    wire N__6680;
    wire N__6677;
    wire N__6674;
    wire N__6669;
    wire N__6666;
    wire N__6665;
    wire N__6662;
    wire N__6659;
    wire N__6658;
    wire N__6657;
    wire N__6652;
    wire N__6651;
    wire N__6648;
    wire N__6645;
    wire N__6642;
    wire N__6639;
    wire N__6630;
    wire N__6629;
    wire N__6626;
    wire N__6623;
    wire N__6620;
    wire N__6617;
    wire N__6614;
    wire N__6611;
    wire N__6606;
    wire N__6603;
    wire N__6600;
    wire N__6599;
    wire N__6596;
    wire N__6593;
    wire N__6590;
    wire N__6587;
    wire N__6582;
    wire N__6581;
    wire N__6580;
    wire N__6579;
    wire N__6576;
    wire N__6575;
    wire N__6572;
    wire N__6571;
    wire N__6568;
    wire N__6567;
    wire N__6566;
    wire N__6551;
    wire N__6548;
    wire N__6543;
    wire N__6540;
    wire N__6537;
    wire N__6534;
    wire N__6531;
    wire N__6528;
    wire N__6525;
    wire N__6522;
    wire N__6519;
    wire N__6518;
    wire N__6515;
    wire N__6512;
    wire N__6507;
    wire N__6504;
    wire N__6501;
    wire N__6498;
    wire N__6495;
    wire N__6492;
    wire N__6489;
    wire N__6486;
    wire N__6483;
    wire N__6482;
    wire N__6479;
    wire N__6478;
    wire N__6477;
    wire N__6476;
    wire N__6475;
    wire N__6472;
    wire N__6469;
    wire N__6466;
    wire N__6463;
    wire N__6460;
    wire N__6459;
    wire N__6458;
    wire N__6455;
    wire N__6452;
    wire N__6447;
    wire N__6446;
    wire N__6443;
    wire N__6440;
    wire N__6437;
    wire N__6436;
    wire N__6433;
    wire N__6432;
    wire N__6431;
    wire N__6428;
    wire N__6427;
    wire N__6424;
    wire N__6421;
    wire N__6418;
    wire N__6415;
    wire N__6410;
    wire N__6407;
    wire N__6404;
    wire N__6401;
    wire N__6398;
    wire N__6395;
    wire N__6392;
    wire N__6391;
    wire N__6384;
    wire N__6381;
    wire N__6378;
    wire N__6369;
    wire N__6368;
    wire N__6367;
    wire N__6362;
    wire N__6359;
    wire N__6356;
    wire N__6349;
    wire N__6346;
    wire N__6343;
    wire N__6330;
    wire N__6327;
    wire N__6326;
    wire N__6323;
    wire N__6320;
    wire N__6317;
    wire N__6314;
    wire N__6311;
    wire N__6308;
    wire N__6303;
    wire N__6300;
    wire N__6297;
    wire N__6294;
    wire N__6293;
    wire N__6290;
    wire N__6287;
    wire N__6282;
    wire N__6279;
    wire N__6276;
    wire N__6273;
    wire N__6270;
    wire N__6267;
    wire N__6264;
    wire N__6261;
    wire N__6258;
    wire N__6255;
    wire N__6252;
    wire N__6249;
    wire N__6248;
    wire N__6245;
    wire N__6242;
    wire N__6237;
    wire N__6236;
    wire N__6233;
    wire N__6230;
    wire N__6229;
    wire N__6228;
    wire N__6221;
    wire N__6218;
    wire N__6215;
    wire N__6214;
    wire N__6211;
    wire N__6210;
    wire N__6207;
    wire N__6204;
    wire N__6201;
    wire N__6198;
    wire N__6189;
    wire N__6188;
    wire N__6187;
    wire N__6186;
    wire N__6179;
    wire N__6178;
    wire N__6175;
    wire N__6172;
    wire N__6169;
    wire N__6166;
    wire N__6165;
    wire N__6162;
    wire N__6159;
    wire N__6156;
    wire N__6153;
    wire N__6144;
    wire N__6141;
    wire N__6140;
    wire N__6139;
    wire N__6136;
    wire N__6131;
    wire N__6126;
    wire N__6125;
    wire N__6122;
    wire N__6121;
    wire N__6118;
    wire N__6117;
    wire N__6116;
    wire N__6113;
    wire N__6110;
    wire N__6107;
    wire N__6106;
    wire N__6105;
    wire N__6102;
    wire N__6101;
    wire N__6098;
    wire N__6097;
    wire N__6096;
    wire N__6095;
    wire N__6094;
    wire N__6089;
    wire N__6086;
    wire N__6083;
    wire N__6080;
    wire N__6077;
    wire N__6076;
    wire N__6075;
    wire N__6074;
    wire N__6071;
    wire N__6070;
    wire N__6067;
    wire N__6060;
    wire N__6059;
    wire N__6058;
    wire N__6057;
    wire N__6056;
    wire N__6055;
    wire N__6052;
    wire N__6049;
    wire N__6040;
    wire N__6033;
    wire N__6028;
    wire N__6023;
    wire N__6020;
    wire N__6011;
    wire N__5994;
    wire N__5993;
    wire N__5990;
    wire N__5989;
    wire N__5988;
    wire N__5987;
    wire N__5984;
    wire N__5981;
    wire N__5976;
    wire N__5975;
    wire N__5972;
    wire N__5971;
    wire N__5968;
    wire N__5967;
    wire N__5966;
    wire N__5961;
    wire N__5960;
    wire N__5959;
    wire N__5958;
    wire N__5957;
    wire N__5954;
    wire N__5953;
    wire N__5952;
    wire N__5951;
    wire N__5950;
    wire N__5949;
    wire N__5948;
    wire N__5945;
    wire N__5942;
    wire N__5939;
    wire N__5934;
    wire N__5931;
    wire N__5926;
    wire N__5915;
    wire N__5912;
    wire N__5909;
    wire N__5904;
    wire N__5883;
    wire N__5882;
    wire N__5881;
    wire N__5880;
    wire N__5877;
    wire N__5876;
    wire N__5875;
    wire N__5874;
    wire N__5871;
    wire N__5868;
    wire N__5867;
    wire N__5866;
    wire N__5863;
    wire N__5860;
    wire N__5859;
    wire N__5858;
    wire N__5853;
    wire N__5852;
    wire N__5851;
    wire N__5848;
    wire N__5847;
    wire N__5846;
    wire N__5845;
    wire N__5842;
    wire N__5839;
    wire N__5836;
    wire N__5835;
    wire N__5832;
    wire N__5829;
    wire N__5826;
    wire N__5823;
    wire N__5820;
    wire N__5817;
    wire N__5808;
    wire N__5805;
    wire N__5804;
    wire N__5803;
    wire N__5802;
    wire N__5801;
    wire N__5798;
    wire N__5797;
    wire N__5792;
    wire N__5789;
    wire N__5786;
    wire N__5783;
    wire N__5778;
    wire N__5775;
    wire N__5766;
    wire N__5761;
    wire N__5758;
    wire N__5751;
    wire N__5730;
    wire N__5729;
    wire N__5728;
    wire N__5727;
    wire N__5726;
    wire N__5725;
    wire N__5724;
    wire N__5723;
    wire N__5718;
    wire N__5715;
    wire N__5710;
    wire N__5709;
    wire N__5706;
    wire N__5705;
    wire N__5704;
    wire N__5703;
    wire N__5702;
    wire N__5701;
    wire N__5700;
    wire N__5697;
    wire N__5694;
    wire N__5691;
    wire N__5690;
    wire N__5689;
    wire N__5688;
    wire N__5683;
    wire N__5680;
    wire N__5677;
    wire N__5666;
    wire N__5665;
    wire N__5664;
    wire N__5663;
    wire N__5660;
    wire N__5657;
    wire N__5652;
    wire N__5649;
    wire N__5644;
    wire N__5641;
    wire N__5634;
    wire N__5627;
    wire N__5610;
    wire N__5609;
    wire N__5606;
    wire N__5603;
    wire N__5598;
    wire N__5595;
    wire N__5594;
    wire N__5591;
    wire N__5588;
    wire N__5583;
    wire N__5580;
    wire N__5579;
    wire N__5576;
    wire N__5573;
    wire N__5568;
    wire N__5565;
    wire N__5564;
    wire N__5561;
    wire N__5558;
    wire N__5553;
    wire N__5550;
    wire N__5547;
    wire N__5544;
    wire N__5541;
    wire N__5540;
    wire N__5537;
    wire N__5534;
    wire N__5533;
    wire N__5532;
    wire N__5531;
    wire N__5530;
    wire N__5527;
    wire N__5524;
    wire N__5523;
    wire N__5520;
    wire N__5517;
    wire N__5514;
    wire N__5513;
    wire N__5510;
    wire N__5507;
    wire N__5504;
    wire N__5501;
    wire N__5496;
    wire N__5493;
    wire N__5490;
    wire N__5487;
    wire N__5472;
    wire N__5469;
    wire N__5468;
    wire N__5465;
    wire N__5462;
    wire N__5457;
    wire N__5454;
    wire N__5453;
    wire N__5450;
    wire N__5447;
    wire N__5446;
    wire N__5445;
    wire N__5444;
    wire N__5443;
    wire N__5442;
    wire N__5439;
    wire N__5436;
    wire N__5433;
    wire N__5432;
    wire N__5429;
    wire N__5426;
    wire N__5423;
    wire N__5422;
    wire N__5419;
    wire N__5418;
    wire N__5415;
    wire N__5412;
    wire N__5411;
    wire N__5410;
    wire N__5405;
    wire N__5400;
    wire N__5397;
    wire N__5392;
    wire N__5389;
    wire N__5386;
    wire N__5383;
    wire N__5380;
    wire N__5377;
    wire N__5366;
    wire N__5363;
    wire N__5356;
    wire N__5353;
    wire N__5348;
    wire N__5343;
    wire N__5342;
    wire N__5341;
    wire N__5338;
    wire N__5337;
    wire N__5332;
    wire N__5329;
    wire N__5326;
    wire N__5323;
    wire N__5320;
    wire N__5317;
    wire N__5310;
    wire N__5307;
    wire N__5304;
    wire N__5303;
    wire N__5300;
    wire N__5297;
    wire N__5292;
    wire N__5291;
    wire N__5288;
    wire N__5285;
    wire N__5280;
    wire N__5277;
    wire N__5276;
    wire N__5273;
    wire N__5270;
    wire N__5265;
    wire N__5264;
    wire N__5261;
    wire N__5258;
    wire N__5255;
    wire N__5252;
    wire N__5247;
    wire N__5246;
    wire N__5243;
    wire N__5240;
    wire N__5235;
    wire N__5234;
    wire N__5233;
    wire N__5232;
    wire N__5229;
    wire N__5226;
    wire N__5221;
    wire N__5214;
    wire N__5211;
    wire N__5210;
    wire N__5209;
    wire N__5208;
    wire N__5205;
    wire N__5202;
    wire N__5197;
    wire N__5192;
    wire N__5191;
    wire N__5190;
    wire N__5189;
    wire N__5188;
    wire N__5187;
    wire N__5186;
    wire N__5183;
    wire N__5180;
    wire N__5177;
    wire N__5166;
    wire N__5163;
    wire N__5154;
    wire N__5153;
    wire N__5152;
    wire N__5151;
    wire N__5150;
    wire N__5149;
    wire N__5146;
    wire N__5143;
    wire N__5134;
    wire N__5133;
    wire N__5130;
    wire N__5127;
    wire N__5126;
    wire N__5125;
    wire N__5124;
    wire N__5123;
    wire N__5122;
    wire N__5121;
    wire N__5118;
    wire N__5115;
    wire N__5112;
    wire N__5109;
    wire N__5096;
    wire N__5093;
    wire N__5082;
    wire N__5079;
    wire N__5076;
    wire N__5073;
    wire N__5072;
    wire N__5069;
    wire N__5066;
    wire N__5063;
    wire N__5058;
    wire N__5055;
    wire N__5052;
    wire N__5049;
    wire N__5046;
    wire N__5043;
    wire N__5040;
    wire N__5037;
    wire N__5034;
    wire N__5033;
    wire N__5030;
    wire N__5027;
    wire N__5022;
    wire N__5021;
    wire N__5018;
    wire N__5017;
    wire N__5014;
    wire N__5011;
    wire N__5008;
    wire N__5007;
    wire N__5006;
    wire N__5001;
    wire N__4998;
    wire N__4995;
    wire N__4992;
    wire N__4991;
    wire N__4986;
    wire N__4981;
    wire N__4978;
    wire N__4971;
    wire N__4968;
    wire N__4965;
    wire N__4962;
    wire N__4959;
    wire N__4958;
    wire N__4957;
    wire N__4950;
    wire N__4947;
    wire N__4944;
    wire N__4943;
    wire N__4940;
    wire N__4937;
    wire N__4936;
    wire N__4935;
    wire N__4934;
    wire N__4929;
    wire N__4924;
    wire N__4921;
    wire N__4918;
    wire N__4915;
    wire N__4908;
    wire N__4905;
    wire N__4902;
    wire N__4901;
    wire N__4900;
    wire N__4897;
    wire N__4894;
    wire N__4891;
    wire N__4888;
    wire N__4885;
    wire N__4882;
    wire N__4875;
    wire N__4872;
    wire N__4869;
    wire N__4868;
    wire N__4865;
    wire N__4862;
    wire N__4857;
    wire N__4854;
    wire N__4851;
    wire N__4850;
    wire N__4847;
    wire N__4844;
    wire N__4843;
    wire N__4842;
    wire N__4839;
    wire N__4836;
    wire N__4833;
    wire N__4830;
    wire N__4821;
    wire N__4818;
    wire N__4817;
    wire N__4814;
    wire N__4811;
    wire N__4806;
    wire N__4805;
    wire N__4802;
    wire N__4799;
    wire N__4796;
    wire N__4791;
    wire N__4790;
    wire N__4789;
    wire N__4786;
    wire N__4783;
    wire N__4780;
    wire N__4773;
    wire N__4770;
    wire N__4767;
    wire N__4766;
    wire N__4763;
    wire N__4760;
    wire N__4755;
    wire N__4752;
    wire N__4751;
    wire N__4750;
    wire N__4749;
    wire N__4746;
    wire N__4743;
    wire N__4740;
    wire N__4737;
    wire N__4736;
    wire N__4733;
    wire N__4730;
    wire N__4727;
    wire N__4724;
    wire N__4721;
    wire N__4720;
    wire N__4719;
    wire N__4716;
    wire N__4709;
    wire N__4706;
    wire N__4703;
    wire N__4700;
    wire N__4689;
    wire N__4686;
    wire N__4683;
    wire N__4680;
    wire N__4677;
    wire N__4674;
    wire N__4671;
    wire N__4670;
    wire N__4667;
    wire N__4664;
    wire N__4661;
    wire N__4658;
    wire N__4653;
    wire N__4650;
    wire N__4647;
    wire N__4644;
    wire N__4641;
    wire N__4638;
    wire N__4637;
    wire N__4634;
    wire N__4631;
    wire N__4626;
    wire N__4623;
    wire N__4620;
    wire N__4617;
    wire N__4614;
    wire N__4613;
    wire N__4610;
    wire N__4607;
    wire N__4602;
    wire N__4599;
    wire N__4596;
    wire N__4593;
    wire N__4590;
    wire N__4589;
    wire N__4586;
    wire N__4583;
    wire N__4580;
    wire N__4577;
    wire N__4572;
    wire N__4569;
    wire N__4566;
    wire N__4563;
    wire N__4560;
    wire N__4559;
    wire N__4558;
    wire N__4555;
    wire N__4552;
    wire N__4549;
    wire N__4546;
    wire N__4541;
    wire N__4538;
    wire N__4533;
    wire N__4530;
    wire N__4527;
    wire N__4524;
    wire N__4521;
    wire N__4518;
    wire N__4515;
    wire N__4512;
    wire N__4509;
    wire N__4508;
    wire N__4505;
    wire N__4502;
    wire N__4497;
    wire N__4494;
    wire N__4491;
    wire N__4488;
    wire N__4485;
    wire N__4482;
    wire N__4479;
    wire N__4476;
    wire N__4473;
    wire N__4470;
    wire N__4467;
    wire N__4464;
    wire N__4461;
    wire N__4458;
    wire N__4455;
    wire N__4452;
    wire N__4449;
    wire N__4446;
    wire N__4445;
    wire N__4440;
    wire N__4437;
    wire N__4436;
    wire N__4435;
    wire N__4428;
    wire N__4425;
    wire N__4424;
    wire N__4419;
    wire N__4416;
    wire N__4413;
    wire N__4410;
    wire N__4407;
    wire N__4404;
    wire N__4401;
    wire N__4398;
    wire N__4395;
    wire N__4392;
    wire N__4389;
    wire N__4386;
    wire N__4383;
    wire N__4382;
    wire N__4379;
    wire N__4376;
    wire N__4371;
    wire N__4370;
    wire N__4365;
    wire N__4362;
    wire N__4359;
    wire N__4356;
    wire N__4355;
    wire N__4352;
    wire N__4349;
    wire N__4344;
    wire N__4341;
    wire N__4338;
    wire N__4335;
    wire N__4332;
    wire N__4331;
    wire N__4326;
    wire N__4323;
    wire N__4320;
    wire N__4319;
    wire N__4316;
    wire N__4315;
    wire N__4312;
    wire N__4311;
    wire N__4308;
    wire N__4305;
    wire N__4302;
    wire N__4299;
    wire N__4298;
    wire N__4295;
    wire N__4292;
    wire N__4289;
    wire N__4286;
    wire N__4283;
    wire N__4272;
    wire N__4271;
    wire N__4266;
    wire N__4263;
    wire N__4262;
    wire N__4261;
    wire N__4254;
    wire N__4251;
    wire N__4248;
    wire N__4247;
    wire N__4246;
    wire N__4245;
    wire N__4242;
    wire N__4241;
    wire N__4240;
    wire N__4235;
    wire N__4226;
    wire N__4223;
    wire N__4218;
    wire N__4217;
    wire N__4214;
    wire N__4213;
    wire N__4210;
    wire N__4209;
    wire N__4208;
    wire N__4207;
    wire N__4204;
    wire N__4195;
    wire N__4192;
    wire N__4185;
    wire N__4184;
    wire N__4179;
    wire N__4176;
    wire N__4175;
    wire N__4172;
    wire N__4169;
    wire N__4164;
    wire N__4163;
    wire N__4160;
    wire N__4157;
    wire N__4152;
    wire N__4151;
    wire N__4148;
    wire N__4145;
    wire N__4142;
    wire N__4137;
    wire N__4136;
    wire N__4133;
    wire N__4130;
    wire N__4125;
    wire N__4122;
    wire N__4119;
    wire N__4116;
    wire N__4113;
    wire N__4112;
    wire N__4109;
    wire N__4106;
    wire N__4101;
    wire N__4100;
    wire N__4097;
    wire N__4094;
    wire N__4089;
    wire N__4088;
    wire N__4085;
    wire N__4082;
    wire N__4079;
    wire N__4074;
    wire N__4073;
    wire N__4070;
    wire N__4067;
    wire N__4062;
    wire N__4059;
    wire N__4056;
    wire N__4053;
    wire N__4050;
    wire N__4047;
    wire N__4046;
    wire N__4043;
    wire N__4040;
    wire N__4037;
    wire N__4032;
    wire N__4031;
    wire N__4028;
    wire N__4025;
    wire N__4020;
    wire N__4017;
    wire N__4016;
    wire N__4013;
    wire N__4010;
    wire N__4007;
    wire N__4002;
    wire N__4001;
    wire N__3998;
    wire N__3995;
    wire N__3992;
    wire N__3987;
    wire N__3984;
    wire N__3983;
    wire N__3980;
    wire N__3977;
    wire N__3972;
    wire N__3969;
    wire N__3968;
    wire N__3965;
    wire N__3962;
    wire N__3959;
    wire N__3954;
    wire N__3951;
    wire N__3948;
    wire N__3945;
    wire N__3942;
    wire N__3941;
    wire N__3940;
    wire N__3939;
    wire N__3936;
    wire N__3933;
    wire N__3930;
    wire N__3927;
    wire N__3918;
    wire N__3917;
    wire N__3914;
    wire N__3911;
    wire N__3906;
    wire N__3905;
    wire N__3902;
    wire N__3899;
    wire N__3894;
    wire N__3891;
    wire N__3890;
    wire N__3887;
    wire N__3884;
    wire N__3881;
    wire N__3876;
    wire N__3875;
    wire N__3872;
    wire N__3869;
    wire N__3864;
    wire N__3861;
    wire N__3858;
    wire N__3855;
    wire N__3852;
    wire N__3849;
    wire N__3848;
    wire N__3843;
    wire N__3840;
    wire N__3837;
    wire N__3834;
    wire N__3831;
    wire N__3830;
    wire N__3827;
    wire N__3824;
    wire N__3819;
    wire N__3816;
    wire N__3813;
    wire N__3810;
    wire N__3807;
    wire N__3806;
    wire N__3803;
    wire N__3800;
    wire N__3797;
    wire N__3794;
    wire N__3791;
    wire N__3788;
    wire N__3783;
    wire N__3782;
    wire N__3777;
    wire N__3774;
    wire N__3773;
    wire N__3770;
    wire N__3767;
    wire N__3762;
    wire N__3761;
    wire N__3758;
    wire N__3755;
    wire N__3750;
    wire N__3749;
    wire N__3746;
    wire N__3743;
    wire N__3740;
    wire N__3735;
    wire N__3732;
    wire N__3729;
    wire N__3726;
    wire N__3723;
    wire N__3722;
    wire N__3719;
    wire N__3716;
    wire N__3713;
    wire N__3708;
    wire N__3705;
    wire N__3702;
    wire N__3701;
    wire N__3698;
    wire N__3695;
    wire N__3692;
    wire N__3687;
    wire N__3684;
    wire N__3681;
    wire N__3680;
    wire N__3677;
    wire N__3674;
    wire N__3671;
    wire N__3666;
    wire N__3663;
    wire N__3662;
    wire N__3659;
    wire N__3656;
    wire N__3653;
    wire N__3648;
    wire N__3645;
    wire N__3644;
    wire N__3643;
    wire N__3642;
    wire N__3641;
    wire N__3640;
    wire N__3639;
    wire N__3636;
    wire N__3633;
    wire N__3630;
    wire N__3629;
    wire N__3626;
    wire N__3623;
    wire N__3620;
    wire N__3617;
    wire N__3616;
    wire N__3615;
    wire N__3614;
    wire N__3613;
    wire N__3612;
    wire N__3611;
    wire N__3610;
    wire N__3609;
    wire N__3602;
    wire N__3591;
    wire N__3588;
    wire N__3585;
    wire N__3582;
    wire N__3579;
    wire N__3576;
    wire N__3573;
    wire N__3570;
    wire N__3567;
    wire N__3562;
    wire N__3553;
    wire N__3544;
    wire N__3537;
    wire N__3534;
    wire N__3533;
    wire N__3530;
    wire N__3527;
    wire N__3524;
    wire N__3519;
    wire N__3518;
    wire N__3515;
    wire N__3512;
    wire N__3509;
    wire N__3504;
    wire N__3503;
    wire N__3500;
    wire N__3497;
    wire N__3494;
    wire N__3489;
    wire N__3486;
    wire N__3485;
    wire N__3482;
    wire N__3479;
    wire N__3474;
    wire N__3471;
    wire N__3470;
    wire N__3467;
    wire N__3464;
    wire N__3459;
    wire N__3456;
    wire N__3455;
    wire N__3452;
    wire N__3449;
    wire N__3444;
    wire N__3441;
    wire N__3440;
    wire N__3437;
    wire N__3434;
    wire N__3431;
    wire N__3426;
    wire N__3423;
    wire N__3420;
    wire N__3419;
    wire N__3416;
    wire N__3413;
    wire N__3408;
    wire N__3405;
    wire N__3402;
    wire N__3399;
    wire N__3396;
    wire N__3393;
    wire N__3390;
    wire N__3387;
    wire N__3384;
    wire N__3381;
    wire N__3378;
    wire N__3375;
    wire N__3372;
    wire N__3369;
    wire N__3366;
    wire N__3363;
    wire N__3360;
    wire N__3357;
    wire N__3354;
    wire N__3351;
    wire N__3348;
    wire N__3345;
    wire N__3344;
    wire N__3341;
    wire N__3338;
    wire N__3335;
    wire N__3330;
    wire N__3327;
    wire N__3326;
    wire N__3323;
    wire N__3320;
    wire N__3317;
    wire N__3312;
    wire N__3309;
    wire N__3308;
    wire N__3305;
    wire N__3302;
    wire N__3299;
    wire N__3294;
    wire N__3291;
    wire N__3290;
    wire N__3287;
    wire N__3284;
    wire N__3281;
    wire N__3276;
    wire N__3273;
    wire N__3272;
    wire N__3269;
    wire N__3266;
    wire N__3263;
    wire N__3258;
    wire N__3255;
    wire N__3252;
    wire N__3249;
    wire N__3246;
    wire N__3243;
    wire N__3242;
    wire N__3239;
    wire N__3236;
    wire N__3231;
    wire N__3228;
    wire N__3227;
    wire N__3224;
    wire N__3221;
    wire N__3218;
    wire N__3213;
    wire N__3210;
    wire N__3209;
    wire N__3206;
    wire N__3203;
    wire N__3198;
    wire N__3195;
    wire N__3194;
    wire N__3191;
    wire N__3188;
    wire N__3183;
    wire N__3180;
    wire N__3179;
    wire N__3176;
    wire N__3173;
    wire N__3168;
    wire N__3165;
    wire N__3164;
    wire N__3161;
    wire N__3158;
    wire N__3153;
    wire N__3150;
    wire N__3149;
    wire N__3146;
    wire N__3143;
    wire N__3140;
    wire N__3135;
    wire N__3132;
    wire N__3131;
    wire N__3128;
    wire N__3125;
    wire N__3122;
    wire N__3117;
    wire N__3114;
    wire N__3111;
    wire N__3108;
    wire N__3107;
    wire N__3106;
    wire N__3101;
    wire N__3098;
    wire N__3093;
    wire N__3092;
    wire N__3091;
    wire N__3084;
    wire N__3081;
    wire N__3080;
    wire N__3077;
    wire N__3074;
    wire N__3073;
    wire N__3068;
    wire N__3065;
    wire N__3060;
    wire N__3059;
    wire N__3058;
    wire N__3053;
    wire N__3050;
    wire N__3045;
    wire N__3042;
    wire N__3039;
    wire N__3036;
    wire N__3033;
    wire N__3030;
    wire N__3027;
    wire N__3024;
    wire N__3023;
    wire N__3020;
    wire N__3017;
    wire N__3014;
    wire N__3009;
    wire N__3006;
    wire N__3005;
    wire N__3002;
    wire N__2999;
    wire N__2994;
    wire N__2991;
    wire N__2988;
    wire N__2985;
    wire N__2982;
    wire N__2979;
    wire N__2976;
    wire N__2973;
    wire N__2970;
    wire N__2967;
    wire N__2964;
    wire N__2961;
    wire N__2958;
    wire N__2955;
    wire N__2952;
    wire N__2949;
    wire N__2946;
    wire N__2943;
    wire N__2940;
    wire N__2939;
    wire N__2936;
    wire N__2933;
    wire N__2928;
    wire N__2925;
    wire N__2922;
    wire N__2919;
    wire N__2916;
    wire N__2913;
    wire N__2910;
    wire N__2907;
    wire N__2904;
    wire N__2901;
    wire N__2898;
    wire N__2895;
    wire N__2892;
    wire N__2889;
    wire N__2886;
    wire N__2883;
    wire N__2880;
    wire N__2877;
    wire N__2874;
    wire N__2871;
    wire N__2868;
    wire N__2865;
    wire N__2862;
    wire N__2859;
    wire N__2856;
    wire N__2853;
    wire N__2850;
    wire N__2847;
    wire N__2844;
    wire N__2841;
    wire N__2838;
    wire N__2835;
    wire N__2832;
    wire N__2829;
    wire N__2826;
    wire N__2823;
    wire N__2820;
    wire N__2817;
    wire N__2814;
    wire N__2811;
    wire N__2808;
    wire N__2805;
    wire N__2802;
    wire N__2799;
    wire N__2796;
    wire N__2793;
    wire N__2790;
    wire N__2787;
    wire N__2784;
    wire N__2781;
    wire N__2778;
    wire N__2775;
    wire N__2772;
    wire N__2769;
    wire N__2766;
    wire N__2763;
    wire N__2760;
    wire N__2757;
    wire N__2754;
    wire N__2751;
    wire N__2748;
    wire N__2745;
    wire N__2742;
    wire CLK_pad_gb_input;
    wire VCCG0;
    wire GNDG0;
    wire LED_c;
    wire n26;
    wire bfn_17_17_0_;
    wire n25_adj_402;
    wire n2876;
    wire n24_adj_401;
    wire n2877;
    wire n23_adj_400;
    wire n2878;
    wire n22_adj_399;
    wire n2879;
    wire n21;
    wire n2880;
    wire n20_adj_398;
    wire n2881;
    wire n19;
    wire n2882;
    wire n2883;
    wire n18_adj_397;
    wire bfn_17_18_0_;
    wire n17;
    wire n2884;
    wire n16;
    wire n2885;
    wire n15_adj_396;
    wire n2886;
    wire n14_adj_395;
    wire n2887;
    wire n13_adj_394;
    wire n2888;
    wire n12_adj_393;
    wire n2889;
    wire n11;
    wire n2890;
    wire n2891;
    wire n10;
    wire bfn_17_19_0_;
    wire n9;
    wire n2892;
    wire n8;
    wire n2893;
    wire n7;
    wire n2894;
    wire n6_adj_392;
    wire n2895;
    wire n2896;
    wire n2897;
    wire n2898;
    wire n2899;
    wire bfn_17_20_0_;
    wire n2900;
    wire blink_counter_25;
    wire n3119;
    wire blink_counter_21;
    wire blink_counter_24;
    wire blink_counter_23;
    wire blink_counter_22;
    wire n3120;
    wire n13_adj_391_cascade_;
    wire n14;
    wire n18_cascade_;
    wire n3114_cascade_;
    wire delay_counter_0;
    wire bfn_20_17_0_;
    wire delay_counter_1;
    wire n2818;
    wire delay_counter_2;
    wire n2819;
    wire delay_counter_3;
    wire n2820;
    wire delay_counter_4;
    wire n2821;
    wire delay_counter_5;
    wire n2822;
    wire delay_counter_6;
    wire n2823;
    wire delay_counter_7;
    wire n2824;
    wire n2825;
    wire delay_counter_8;
    wire bfn_20_18_0_;
    wire delay_counter_9;
    wire n2826;
    wire delay_counter_10;
    wire n2827;
    wire delay_counter_11;
    wire n2828;
    wire delay_counter_12;
    wire n2829;
    wire delay_counter_13;
    wire n2830;
    wire delay_counter_14;
    wire n2831;
    wire n2832;
    wire n2833;
    wire bfn_20_19_0_;
    wire n2834;
    wire n2835;
    wire n2836;
    wire n2837;
    wire n2838;
    wire n2839;
    wire n2840;
    wire n2841;
    wire bfn_20_20_0_;
    wire n2842;
    wire n2843;
    wire n2844;
    wire n2845;
    wire n2846;
    wire n2847;
    wire n2848;
    wire \eeprom.n1704_cascade_ ;
    wire \eeprom.n25 ;
    wire \eeprom.n26_adj_385 ;
    wire \eeprom.n27 ;
    wire \eeprom.delay_counter_0 ;
    wire bfn_21_13_0_;
    wire \eeprom.delay_counter_1 ;
    wire \eeprom.n2856 ;
    wire \eeprom.delay_counter_2 ;
    wire \eeprom.n2857 ;
    wire \eeprom.delay_counter_3 ;
    wire \eeprom.n2858 ;
    wire \eeprom.delay_counter_4 ;
    wire \eeprom.n2859 ;
    wire \eeprom.delay_counter_5 ;
    wire \eeprom.n2860 ;
    wire \eeprom.n2861 ;
    wire \eeprom.delay_counter_7 ;
    wire \eeprom.n2862 ;
    wire \eeprom.n2863 ;
    wire bfn_21_14_0_;
    wire \eeprom.delay_counter_9 ;
    wire \eeprom.n2864 ;
    wire \eeprom.n2865 ;
    wire \eeprom.delay_counter_11 ;
    wire \eeprom.n2866 ;
    wire \eeprom.n2867 ;
    wire \eeprom.delay_counter_13 ;
    wire \eeprom.n2868 ;
    wire \eeprom.delay_counter_14 ;
    wire \eeprom.n2869 ;
    wire \eeprom.n730 ;
    wire \eeprom.n2870 ;
    wire \eeprom.delay_counter_15 ;
    wire n805_cascade_;
    wire \eeprom.n1796 ;
    wire \eeprom.n1796_cascade_ ;
    wire \eeprom.n1929 ;
    wire data_ready;
    wire delay_counter_16;
    wire delay_counter_17;
    wire delay_counter_15;
    wire n3069;
    wire delay_counter_29;
    wire delay_counter_18;
    wire n36_cascade_;
    wire delay_counter_24;
    wire delay_counter_27;
    wire n22_cascade_;
    wire delay_counter_23;
    wire delay_counter_31;
    wire n25_cascade_;
    wire n104_cascade_;
    wire n1891;
    wire delay_counter_21;
    wire delay_counter_25;
    wire delay_counter_20;
    wire delay_counter_19;
    wire n23;
    wire n20;
    wire n20_cascade_;
    wire n6;
    wire n1836_cascade_;
    wire n1507;
    wire n104;
    wire n15;
    wire ID_READOUT_FSM_state_1;
    wire ID_READOUT_FSM_state_0;
    wire n2414;
    wire delay_counter_22;
    wire delay_counter_30;
    wire delay_counter_26;
    wire delay_counter_28;
    wire n24;
    wire \eeprom.i2c.n10_adj_381_cascade_ ;
    wire \eeprom.delay_counter_12 ;
    wire \eeprom.delay_counter_10 ;
    wire \eeprom.delay_counter_8 ;
    wire \eeprom.delay_counter_6 ;
    wire \eeprom.n28 ;
    wire \eeprom.i2c.n2388 ;
    wire data_5;
    wire data_0;
    wire data_3;
    wire n13;
    wire n12;
    wire data_4;
    wire n1718_cascade_;
    wire data_2;
    wire n1718;
    wire data_6;
    wire \INVeeprom.i2c.write_enable_131C_net ;
    wire \eeprom.i2c.n1928 ;
    wire \eeprom.i2c.n3130_cascade_ ;
    wire \eeprom.i2c.n1153 ;
    wire \eeprom.i2c.n37_cascade_ ;
    wire \eeprom.i2c.n33 ;
    wire \eeprom.i2c.n39 ;
    wire \eeprom.i2c.n39_cascade_ ;
    wire \eeprom.i2c.n3133 ;
    wire \eeprom.i2c.n7 ;
    wire \eeprom.i2c.n3082 ;
    wire \eeprom.i2c.n13 ;
    wire \eeprom.i2c.n15_cascade_ ;
    wire \eeprom.i2c.n10_adj_381 ;
    wire \eeprom.i2c.n11_adj_378_cascade_ ;
    wire \eeprom.i2c.n2352 ;
    wire \eeprom.i2c.n1734_cascade_ ;
    wire \eeprom.i2c.n2358 ;
    wire \eeprom.i2c.n1063_cascade_ ;
    wire \eeprom.i2c.n1923 ;
    wire \eeprom.enable ;
    wire \eeprom.i2c.n1761 ;
    wire \eeprom.n1704 ;
    wire \eeprom.n26_cascade_ ;
    wire \eeprom.i2c.n3123 ;
    wire \INVeeprom.i2c.sda_out_132C_net ;
    wire \eeprom.i2c.n2967 ;
    wire \eeprom.i2c.n11 ;
    wire rw;
    wire state_7_N_270_0;
    wire \eeprom.i2c.n11_adj_374 ;
    wire \eeprom.i2c.n11_adj_378 ;
    wire saved_addr_0;
    wire n4;
    wire \eeprom.i2c.n1063 ;
    wire \eeprom.i2c.n9_adj_377_cascade_ ;
    wire \eeprom.i2c.n3050 ;
    wire n4_adj_389;
    wire n2344;
    wire n2344_cascade_;
    wire data_7;
    wire enable_slow_N_373;
    wire \eeprom.n14_cascade_ ;
    wire n2382;
    wire n3051_cascade_;
    wire n2913;
    wire n1113_cascade_;
    wire read;
    wire n3109;
    wire \eeprom.n9 ;
    wire state_1;
    wire state_0;
    wire \eeprom.n3142 ;
    wire \eeprom.i2c.n10_adj_380_cascade_ ;
    wire \eeprom.i2c.n15 ;
    wire bfn_26_14_0_;
    wire \eeprom.i2c.n2849 ;
    wire \eeprom.i2c.n2850 ;
    wire \eeprom.i2c.n2851 ;
    wire \eeprom.i2c.n2852 ;
    wire \eeprom.i2c.n2853 ;
    wire \eeprom.i2c.n2854 ;
    wire \eeprom.i2c.n2855 ;
    wire \eeprom.n10 ;
    wire \eeprom.i2c.n9_adj_377 ;
    wire \eeprom.i2c.n3039_cascade_ ;
    wire state_7_N_286_3;
    wire n1723;
    wire data_1;
    wire \eeprom.i2c.counter_6 ;
    wire \eeprom.i2c.counter_3 ;
    wire \eeprom.i2c.counter_5 ;
    wire \eeprom.i2c.counter_7 ;
    wire \eeprom.i2c.counter_4 ;
    wire \eeprom.i2c.n12_cascade_ ;
    wire \eeprom.i2c.n1056 ;
    wire \eeprom.i2c.n1172 ;
    wire \eeprom.i2c.n3039 ;
    wire \eeprom.i2c.n1056_cascade_ ;
    wire \eeprom.i2c.n37 ;
    wire \eeprom.i2c.counter_2 ;
    wire \eeprom.i2c.counter_1 ;
    wire n4_adj_390;
    wire \eeprom.state_1_adj_386 ;
    wire \eeprom.state_3 ;
    wire \eeprom.state_0_adj_384 ;
    wire \eeprom.i2c.state_2 ;
    wire \INVeeprom.i2c.i2c_scl_enable_123C_net ;
    wire \eeprom.i2c.counter2_0 ;
    wire bfn_27_13_0_;
    wire \eeprom.i2c.counter2_1 ;
    wire \eeprom.i2c.n2871 ;
    wire \eeprom.i2c.counter2_2 ;
    wire \eeprom.i2c.n2872 ;
    wire \eeprom.i2c.counter2_3 ;
    wire \eeprom.i2c.n2873 ;
    wire \eeprom.i2c.counter2_4 ;
    wire \eeprom.i2c.n2874 ;
    wire \eeprom.i2c.n2875 ;
    wire \eeprom.i2c.counter2_5 ;
    wire CLK_c;
    wire \eeprom.i2c.n1930 ;
    wire \eeprom.i2c.counter_0 ;
    wire \eeprom.i2c.n1757 ;
    wire \eeprom.i2c.n1924 ;
    wire CONSTANT_ONE_NET;
    wire \eeprom.i2c.sda_out_adj_375 ;
    wire sda_enable;
    wire sda_out;
    wire \eeprom.i2c.i2c_clk ;
    wire scl_enable;
    wire scl_c;
    wire _gnd_net_;

    defparam CS_CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CS_CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CS_CLK_pad_iopad (
            .OE(N__6937),
            .DIN(N__6936),
            .DOUT(N__6935),
            .PACKAGEPIN(CS_CLK));
    defparam CS_CLK_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_CLK_pad_preio (
            .PADOEN(N__6937),
            .PADOUT(N__6936),
            .PADIN(N__6935),
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
            .OE(N__6928),
            .DIN(N__6927),
            .DOUT(N__6926),
            .PACKAGEPIN(CS));
    defparam CS_pad_preio.PIN_TYPE=6'b011001;
    defparam CS_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CS_pad_preio (
            .PADOEN(N__6928),
            .PADOUT(N__6927),
            .PADIN(N__6926),
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
            .OE(N__6919),
            .DIN(N__6918),
            .DOUT(N__6917),
            .PACKAGEPIN(DE));
    defparam DE_pad_preio.PIN_TYPE=6'b011001;
    defparam DE_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO DE_pad_preio (
            .PADOEN(N__6919),
            .PADOUT(N__6918),
            .PADIN(N__6917),
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
            .OE(N__6910),
            .DIN(N__6909),
            .DOUT(N__6908),
            .PACKAGEPIN(INHA));
    defparam INHA_pad_preio.PIN_TYPE=6'b011001;
    defparam INHA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHA_pad_preio (
            .PADOEN(N__6910),
            .PADOUT(N__6909),
            .PADIN(N__6908),
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
            .OE(N__6901),
            .DIN(N__6900),
            .DOUT(N__6899),
            .PACKAGEPIN(INHB));
    defparam INHB_pad_preio.PIN_TYPE=6'b011001;
    defparam INHB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHB_pad_preio (
            .PADOEN(N__6901),
            .PADOUT(N__6900),
            .PADIN(N__6899),
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
            .OE(N__6892),
            .DIN(N__6891),
            .DOUT(N__6890),
            .PACKAGEPIN(INHC));
    defparam INHC_pad_preio.PIN_TYPE=6'b011001;
    defparam INHC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INHC_pad_preio (
            .PADOEN(N__6892),
            .PADOUT(N__6891),
            .PADIN(N__6890),
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
            .OE(N__6883),
            .DIN(N__6882),
            .DOUT(N__6881),
            .PACKAGEPIN(INLA));
    defparam INLA_pad_preio.PIN_TYPE=6'b011001;
    defparam INLA_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLA_pad_preio (
            .PADOEN(N__6883),
            .PADOUT(N__6882),
            .PADIN(N__6881),
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
            .OE(N__6874),
            .DIN(N__6873),
            .DOUT(N__6872),
            .PACKAGEPIN(INLB));
    defparam INLB_pad_preio.PIN_TYPE=6'b011001;
    defparam INLB_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLB_pad_preio (
            .PADOEN(N__6874),
            .PADOUT(N__6873),
            .PADIN(N__6872),
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
            .OE(N__6865),
            .DIN(N__6864),
            .DOUT(N__6863),
            .PACKAGEPIN(INLC));
    defparam INLC_pad_preio.PIN_TYPE=6'b011001;
    defparam INLC_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO INLC_pad_preio (
            .PADOEN(N__6865),
            .PADOUT(N__6864),
            .PADIN(N__6863),
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
            .OE(N__6856),
            .DIN(N__6855),
            .DOUT(N__6854),
            .PACKAGEPIN(LED));
    defparam LED_pad_preio.PIN_TYPE=6'b011001;
    defparam LED_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO LED_pad_preio (
            .PADOEN(N__6856),
            .PADOUT(N__6855),
            .PADIN(N__6854),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__2775),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    defparam NEOPXL_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam NEOPXL_pad_iopad.PULLUP=1'b0;
    IO_PAD NEOPXL_pad_iopad (
            .OE(N__6847),
            .DIN(N__6846),
            .DOUT(N__6845),
            .PACKAGEPIN(NEOPXL));
    defparam NEOPXL_pad_preio.PIN_TYPE=6'b011001;
    defparam NEOPXL_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO NEOPXL_pad_preio (
            .PADOEN(N__6847),
            .PADOUT(N__6846),
            .PADIN(N__6845),
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
            .OE(N__6838),
            .DIN(N__6837),
            .DOUT(N__6836),
            .PACKAGEPIN(TX));
    defparam TX_pad_preio.PIN_TYPE=6'b011001;
    defparam TX_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO TX_pad_preio (
            .PADOEN(N__6838),
            .PADOUT(N__6837),
            .PADIN(N__6836),
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
            .OE(N__6829),
            .DIN(N__6828),
            .DOUT(N__6827),
            .PACKAGEPIN(USBPU));
    defparam USBPU_pad_preio.PIN_TYPE=6'b011001;
    defparam USBPU_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO USBPU_pad_preio (
            .PADOEN(N__6829),
            .PADOUT(N__6828),
            .PADIN(N__6827),
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
            .OE(N__6820),
            .DIN(N__6819),
            .DOUT(N__6818),
            .PACKAGEPIN(SCL));
    defparam scl_output_preio.PIN_TYPE=6'b101001;
    defparam scl_output_preio.NEG_TRIGGER=1'b0;
    PRE_IO scl_output_preio (
            .PADOEN(N__6820),
            .PADOUT(N__6819),
            .PADIN(N__6818),
            .CLOCKENABLE(),
            .DIN0(),
            .DIN1(),
            .DOUT0(N__6300),
            .DOUT1(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(N__6330));
    defparam sda_output_iopad.IO_STANDARD="SB_LVCMOS";
    defparam sda_output_iopad.PULLUP=1'b1;
    IO_PAD sda_output_iopad (
            .OE(N__6811),
            .DIN(N__6810),
            .DOUT(N__6809),
            .PACKAGEPIN(SDA));
    defparam sda_output_preio.PIN_TYPE=6'b101001;
    defparam sda_output_preio.NEG_TRIGGER=1'b0;
    PRE_IO sda_output_preio (
            .PADOEN(N__6811),
            .PADOUT(N__6810),
            .PADIN(N__6809),
            .CLOCKENABLE(),
            .DIN0(state_7_N_286_3),
            .DIN1(),
            .DOUT0(N__6498),
            .DOUT1(GNDG0),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(N__6525));
    defparam CLK_pad_iopad.IO_STANDARD="SB_LVCMOS";
    defparam CLK_pad_iopad.PULLUP=1'b0;
    IO_PAD CLK_pad_iopad (
            .OE(N__6802),
            .DIN(N__6801),
            .DOUT(N__6800),
            .PACKAGEPIN(CLK));
    defparam CLK_pad_preio.PIN_TYPE=6'b000001;
    defparam CLK_pad_preio.NEG_TRIGGER=1'b0;
    PRE_IO CLK_pad_preio (
            .PADOEN(N__6802),
            .PADOUT(N__6801),
            .PADIN(N__6800),
            .CLOCKENABLE(),
            .DIN0(CLK_pad_gb_input),
            .DIN1(),
            .DOUT0(),
            .DOUT1(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .OUTPUTCLK(),
            .OUTPUTENABLE());
    CascadeMux I__1582 (
            .O(N__6783),
            .I(N__6779));
    InMux I__1581 (
            .O(N__6782),
            .I(N__6776));
    InMux I__1580 (
            .O(N__6779),
            .I(N__6773));
    LocalMux I__1579 (
            .O(N__6776),
            .I(\eeprom.i2c.counter2_4 ));
    LocalMux I__1578 (
            .O(N__6773),
            .I(\eeprom.i2c.counter2_4 ));
    InMux I__1577 (
            .O(N__6768),
            .I(\eeprom.i2c.n2874 ));
    InMux I__1576 (
            .O(N__6765),
            .I(\eeprom.i2c.n2875 ));
    InMux I__1575 (
            .O(N__6762),
            .I(N__6758));
    InMux I__1574 (
            .O(N__6761),
            .I(N__6755));
    LocalMux I__1573 (
            .O(N__6758),
            .I(\eeprom.i2c.counter2_5 ));
    LocalMux I__1572 (
            .O(N__6755),
            .I(\eeprom.i2c.counter2_5 ));
    ClkMux I__1571 (
            .O(N__6750),
            .I(N__6693));
    ClkMux I__1570 (
            .O(N__6749),
            .I(N__6693));
    ClkMux I__1569 (
            .O(N__6748),
            .I(N__6693));
    ClkMux I__1568 (
            .O(N__6747),
            .I(N__6693));
    ClkMux I__1567 (
            .O(N__6746),
            .I(N__6693));
    ClkMux I__1566 (
            .O(N__6745),
            .I(N__6693));
    ClkMux I__1565 (
            .O(N__6744),
            .I(N__6693));
    ClkMux I__1564 (
            .O(N__6743),
            .I(N__6693));
    ClkMux I__1563 (
            .O(N__6742),
            .I(N__6693));
    ClkMux I__1562 (
            .O(N__6741),
            .I(N__6693));
    ClkMux I__1561 (
            .O(N__6740),
            .I(N__6693));
    ClkMux I__1560 (
            .O(N__6739),
            .I(N__6693));
    ClkMux I__1559 (
            .O(N__6738),
            .I(N__6693));
    ClkMux I__1558 (
            .O(N__6737),
            .I(N__6693));
    ClkMux I__1557 (
            .O(N__6736),
            .I(N__6693));
    ClkMux I__1556 (
            .O(N__6735),
            .I(N__6693));
    ClkMux I__1555 (
            .O(N__6734),
            .I(N__6693));
    ClkMux I__1554 (
            .O(N__6733),
            .I(N__6693));
    ClkMux I__1553 (
            .O(N__6732),
            .I(N__6693));
    GlobalMux I__1552 (
            .O(N__6693),
            .I(N__6690));
    gio2CtrlBuf I__1551 (
            .O(N__6690),
            .I(CLK_c));
    SRMux I__1550 (
            .O(N__6687),
            .I(N__6684));
    LocalMux I__1549 (
            .O(N__6684),
            .I(N__6681));
    Span4Mux_v I__1548 (
            .O(N__6681),
            .I(N__6677));
    InMux I__1547 (
            .O(N__6680),
            .I(N__6674));
    Odrv4 I__1546 (
            .O(N__6677),
            .I(\eeprom.i2c.n1930 ));
    LocalMux I__1545 (
            .O(N__6674),
            .I(\eeprom.i2c.n1930 ));
    InMux I__1544 (
            .O(N__6669),
            .I(N__6666));
    LocalMux I__1543 (
            .O(N__6666),
            .I(N__6662));
    InMux I__1542 (
            .O(N__6665),
            .I(N__6659));
    Span4Mux_v I__1541 (
            .O(N__6662),
            .I(N__6652));
    LocalMux I__1540 (
            .O(N__6659),
            .I(N__6652));
    InMux I__1539 (
            .O(N__6658),
            .I(N__6648));
    InMux I__1538 (
            .O(N__6657),
            .I(N__6645));
    Span4Mux_h I__1537 (
            .O(N__6652),
            .I(N__6642));
    InMux I__1536 (
            .O(N__6651),
            .I(N__6639));
    LocalMux I__1535 (
            .O(N__6648),
            .I(\eeprom.i2c.counter_0 ));
    LocalMux I__1534 (
            .O(N__6645),
            .I(\eeprom.i2c.counter_0 ));
    Odrv4 I__1533 (
            .O(N__6642),
            .I(\eeprom.i2c.counter_0 ));
    LocalMux I__1532 (
            .O(N__6639),
            .I(\eeprom.i2c.counter_0 ));
    CEMux I__1531 (
            .O(N__6630),
            .I(N__6626));
    CEMux I__1530 (
            .O(N__6629),
            .I(N__6623));
    LocalMux I__1529 (
            .O(N__6626),
            .I(N__6620));
    LocalMux I__1528 (
            .O(N__6623),
            .I(N__6617));
    Span4Mux_v I__1527 (
            .O(N__6620),
            .I(N__6614));
    Span4Mux_h I__1526 (
            .O(N__6617),
            .I(N__6611));
    Odrv4 I__1525 (
            .O(N__6614),
            .I(\eeprom.i2c.n1757 ));
    Odrv4 I__1524 (
            .O(N__6611),
            .I(\eeprom.i2c.n1757 ));
    SRMux I__1523 (
            .O(N__6606),
            .I(N__6603));
    LocalMux I__1522 (
            .O(N__6603),
            .I(N__6600));
    Span4Mux_v I__1521 (
            .O(N__6600),
            .I(N__6596));
    SRMux I__1520 (
            .O(N__6599),
            .I(N__6593));
    Span4Mux_h I__1519 (
            .O(N__6596),
            .I(N__6590));
    LocalMux I__1518 (
            .O(N__6593),
            .I(N__6587));
    Odrv4 I__1517 (
            .O(N__6590),
            .I(\eeprom.i2c.n1924 ));
    Odrv12 I__1516 (
            .O(N__6587),
            .I(\eeprom.i2c.n1924 ));
    CascadeMux I__1515 (
            .O(N__6582),
            .I(N__6576));
    CascadeMux I__1514 (
            .O(N__6581),
            .I(N__6572));
    CascadeMux I__1513 (
            .O(N__6580),
            .I(N__6568));
    InMux I__1512 (
            .O(N__6579),
            .I(N__6551));
    InMux I__1511 (
            .O(N__6576),
            .I(N__6551));
    InMux I__1510 (
            .O(N__6575),
            .I(N__6551));
    InMux I__1509 (
            .O(N__6572),
            .I(N__6551));
    InMux I__1508 (
            .O(N__6571),
            .I(N__6551));
    InMux I__1507 (
            .O(N__6568),
            .I(N__6551));
    InMux I__1506 (
            .O(N__6567),
            .I(N__6551));
    InMux I__1505 (
            .O(N__6566),
            .I(N__6548));
    LocalMux I__1504 (
            .O(N__6551),
            .I(CONSTANT_ONE_NET));
    LocalMux I__1503 (
            .O(N__6548),
            .I(CONSTANT_ONE_NET));
    InMux I__1502 (
            .O(N__6543),
            .I(N__6540));
    LocalMux I__1501 (
            .O(N__6540),
            .I(N__6537));
    Span4Mux_v I__1500 (
            .O(N__6537),
            .I(N__6534));
    Span4Mux_v I__1499 (
            .O(N__6534),
            .I(N__6531));
    Span4Mux_h I__1498 (
            .O(N__6531),
            .I(N__6528));
    Odrv4 I__1497 (
            .O(N__6528),
            .I(\eeprom.i2c.sda_out_adj_375 ));
    IoInMux I__1496 (
            .O(N__6525),
            .I(N__6522));
    LocalMux I__1495 (
            .O(N__6522),
            .I(N__6519));
    IoSpan4Mux I__1494 (
            .O(N__6519),
            .I(N__6515));
    InMux I__1493 (
            .O(N__6518),
            .I(N__6512));
    Span4Mux_s1_h I__1492 (
            .O(N__6515),
            .I(N__6507));
    LocalMux I__1491 (
            .O(N__6512),
            .I(N__6507));
    Span4Mux_h I__1490 (
            .O(N__6507),
            .I(N__6504));
    Span4Mux_v I__1489 (
            .O(N__6504),
            .I(N__6501));
    Odrv4 I__1488 (
            .O(N__6501),
            .I(sda_enable));
    IoInMux I__1487 (
            .O(N__6498),
            .I(N__6495));
    LocalMux I__1486 (
            .O(N__6495),
            .I(N__6492));
    Span4Mux_s2_h I__1485 (
            .O(N__6492),
            .I(N__6489));
    Odrv4 I__1484 (
            .O(N__6489),
            .I(sda_out));
    ClkMux I__1483 (
            .O(N__6486),
            .I(N__6483));
    LocalMux I__1482 (
            .O(N__6483),
            .I(N__6479));
    ClkMux I__1481 (
            .O(N__6482),
            .I(N__6472));
    Span4Mux_v I__1480 (
            .O(N__6479),
            .I(N__6469));
    ClkMux I__1479 (
            .O(N__6478),
            .I(N__6466));
    InMux I__1478 (
            .O(N__6477),
            .I(N__6463));
    ClkMux I__1477 (
            .O(N__6476),
            .I(N__6460));
    ClkMux I__1476 (
            .O(N__6475),
            .I(N__6455));
    LocalMux I__1475 (
            .O(N__6472),
            .I(N__6452));
    Span4Mux_h I__1474 (
            .O(N__6469),
            .I(N__6447));
    LocalMux I__1473 (
            .O(N__6466),
            .I(N__6447));
    LocalMux I__1472 (
            .O(N__6463),
            .I(N__6443));
    LocalMux I__1471 (
            .O(N__6460),
            .I(N__6440));
    ClkMux I__1470 (
            .O(N__6459),
            .I(N__6437));
    ClkMux I__1469 (
            .O(N__6458),
            .I(N__6433));
    LocalMux I__1468 (
            .O(N__6455),
            .I(N__6428));
    Span4Mux_v I__1467 (
            .O(N__6452),
            .I(N__6424));
    Span4Mux_v I__1466 (
            .O(N__6447),
            .I(N__6421));
    ClkMux I__1465 (
            .O(N__6446),
            .I(N__6418));
    Span4Mux_v I__1464 (
            .O(N__6443),
            .I(N__6415));
    Span4Mux_v I__1463 (
            .O(N__6440),
            .I(N__6410));
    LocalMux I__1462 (
            .O(N__6437),
            .I(N__6410));
    ClkMux I__1461 (
            .O(N__6436),
            .I(N__6407));
    LocalMux I__1460 (
            .O(N__6433),
            .I(N__6404));
    ClkMux I__1459 (
            .O(N__6432),
            .I(N__6401));
    ClkMux I__1458 (
            .O(N__6431),
            .I(N__6398));
    Span4Mux_v I__1457 (
            .O(N__6428),
            .I(N__6395));
    ClkMux I__1456 (
            .O(N__6427),
            .I(N__6392));
    Span4Mux_h I__1455 (
            .O(N__6424),
            .I(N__6384));
    Span4Mux_h I__1454 (
            .O(N__6421),
            .I(N__6384));
    LocalMux I__1453 (
            .O(N__6418),
            .I(N__6384));
    Span4Mux_h I__1452 (
            .O(N__6415),
            .I(N__6381));
    Span4Mux_v I__1451 (
            .O(N__6410),
            .I(N__6378));
    LocalMux I__1450 (
            .O(N__6407),
            .I(N__6369));
    Span4Mux_v I__1449 (
            .O(N__6404),
            .I(N__6369));
    LocalMux I__1448 (
            .O(N__6401),
            .I(N__6369));
    LocalMux I__1447 (
            .O(N__6398),
            .I(N__6369));
    Sp12to4 I__1446 (
            .O(N__6395),
            .I(N__6362));
    LocalMux I__1445 (
            .O(N__6392),
            .I(N__6362));
    ClkMux I__1444 (
            .O(N__6391),
            .I(N__6359));
    Span4Mux_v I__1443 (
            .O(N__6384),
            .I(N__6356));
    Span4Mux_v I__1442 (
            .O(N__6381),
            .I(N__6349));
    Span4Mux_v I__1441 (
            .O(N__6378),
            .I(N__6349));
    Span4Mux_v I__1440 (
            .O(N__6369),
            .I(N__6349));
    ClkMux I__1439 (
            .O(N__6368),
            .I(N__6346));
    InMux I__1438 (
            .O(N__6367),
            .I(N__6343));
    Odrv12 I__1437 (
            .O(N__6362),
            .I(\eeprom.i2c.i2c_clk ));
    LocalMux I__1436 (
            .O(N__6359),
            .I(\eeprom.i2c.i2c_clk ));
    Odrv4 I__1435 (
            .O(N__6356),
            .I(\eeprom.i2c.i2c_clk ));
    Odrv4 I__1434 (
            .O(N__6349),
            .I(\eeprom.i2c.i2c_clk ));
    LocalMux I__1433 (
            .O(N__6346),
            .I(\eeprom.i2c.i2c_clk ));
    LocalMux I__1432 (
            .O(N__6343),
            .I(\eeprom.i2c.i2c_clk ));
    IoInMux I__1431 (
            .O(N__6330),
            .I(N__6327));
    LocalMux I__1430 (
            .O(N__6327),
            .I(N__6323));
    InMux I__1429 (
            .O(N__6326),
            .I(N__6320));
    IoSpan4Mux I__1428 (
            .O(N__6323),
            .I(N__6317));
    LocalMux I__1427 (
            .O(N__6320),
            .I(N__6314));
    Span4Mux_s3_h I__1426 (
            .O(N__6317),
            .I(N__6311));
    Span4Mux_s3_h I__1425 (
            .O(N__6314),
            .I(N__6308));
    Span4Mux_v I__1424 (
            .O(N__6311),
            .I(N__6303));
    Span4Mux_v I__1423 (
            .O(N__6308),
            .I(N__6303));
    Odrv4 I__1422 (
            .O(N__6303),
            .I(scl_enable));
    IoInMux I__1421 (
            .O(N__6300),
            .I(N__6297));
    LocalMux I__1420 (
            .O(N__6297),
            .I(scl_c));
    InMux I__1419 (
            .O(N__6294),
            .I(N__6290));
    InMux I__1418 (
            .O(N__6293),
            .I(N__6287));
    LocalMux I__1417 (
            .O(N__6290),
            .I(\eeprom.i2c.counter_4 ));
    LocalMux I__1416 (
            .O(N__6287),
            .I(\eeprom.i2c.counter_4 ));
    CascadeMux I__1415 (
            .O(N__6282),
            .I(\eeprom.i2c.n12_cascade_ ));
    InMux I__1414 (
            .O(N__6279),
            .I(N__6276));
    LocalMux I__1413 (
            .O(N__6276),
            .I(N__6273));
    Odrv4 I__1412 (
            .O(N__6273),
            .I(\eeprom.i2c.n1056 ));
    InMux I__1411 (
            .O(N__6270),
            .I(N__6267));
    LocalMux I__1410 (
            .O(N__6267),
            .I(\eeprom.i2c.n1172 ));
    InMux I__1409 (
            .O(N__6264),
            .I(N__6261));
    LocalMux I__1408 (
            .O(N__6261),
            .I(\eeprom.i2c.n3039 ));
    CascadeMux I__1407 (
            .O(N__6258),
            .I(\eeprom.i2c.n1056_cascade_ ));
    InMux I__1406 (
            .O(N__6255),
            .I(N__6252));
    LocalMux I__1405 (
            .O(N__6252),
            .I(N__6249));
    Span4Mux_v I__1404 (
            .O(N__6249),
            .I(N__6245));
    InMux I__1403 (
            .O(N__6248),
            .I(N__6242));
    Odrv4 I__1402 (
            .O(N__6245),
            .I(\eeprom.i2c.n37 ));
    LocalMux I__1401 (
            .O(N__6242),
            .I(\eeprom.i2c.n37 ));
    CascadeMux I__1400 (
            .O(N__6237),
            .I(N__6233));
    CascadeMux I__1399 (
            .O(N__6236),
            .I(N__6230));
    InMux I__1398 (
            .O(N__6233),
            .I(N__6221));
    InMux I__1397 (
            .O(N__6230),
            .I(N__6221));
    InMux I__1396 (
            .O(N__6229),
            .I(N__6221));
    InMux I__1395 (
            .O(N__6228),
            .I(N__6218));
    LocalMux I__1394 (
            .O(N__6221),
            .I(N__6215));
    LocalMux I__1393 (
            .O(N__6218),
            .I(N__6211));
    Span4Mux_h I__1392 (
            .O(N__6215),
            .I(N__6207));
    InMux I__1391 (
            .O(N__6214),
            .I(N__6204));
    Span4Mux_v I__1390 (
            .O(N__6211),
            .I(N__6201));
    InMux I__1389 (
            .O(N__6210),
            .I(N__6198));
    Odrv4 I__1388 (
            .O(N__6207),
            .I(\eeprom.i2c.counter_2 ));
    LocalMux I__1387 (
            .O(N__6204),
            .I(\eeprom.i2c.counter_2 ));
    Odrv4 I__1386 (
            .O(N__6201),
            .I(\eeprom.i2c.counter_2 ));
    LocalMux I__1385 (
            .O(N__6198),
            .I(\eeprom.i2c.counter_2 ));
    InMux I__1384 (
            .O(N__6189),
            .I(N__6179));
    InMux I__1383 (
            .O(N__6188),
            .I(N__6179));
    InMux I__1382 (
            .O(N__6187),
            .I(N__6179));
    InMux I__1381 (
            .O(N__6186),
            .I(N__6175));
    LocalMux I__1380 (
            .O(N__6179),
            .I(N__6172));
    CascadeMux I__1379 (
            .O(N__6178),
            .I(N__6169));
    LocalMux I__1378 (
            .O(N__6175),
            .I(N__6166));
    Span4Mux_h I__1377 (
            .O(N__6172),
            .I(N__6162));
    InMux I__1376 (
            .O(N__6169),
            .I(N__6159));
    Span4Mux_h I__1375 (
            .O(N__6166),
            .I(N__6156));
    InMux I__1374 (
            .O(N__6165),
            .I(N__6153));
    Odrv4 I__1373 (
            .O(N__6162),
            .I(\eeprom.i2c.counter_1 ));
    LocalMux I__1372 (
            .O(N__6159),
            .I(\eeprom.i2c.counter_1 ));
    Odrv4 I__1371 (
            .O(N__6156),
            .I(\eeprom.i2c.counter_1 ));
    LocalMux I__1370 (
            .O(N__6153),
            .I(\eeprom.i2c.counter_1 ));
    InMux I__1369 (
            .O(N__6144),
            .I(N__6141));
    LocalMux I__1368 (
            .O(N__6141),
            .I(N__6136));
    InMux I__1367 (
            .O(N__6140),
            .I(N__6131));
    InMux I__1366 (
            .O(N__6139),
            .I(N__6131));
    Odrv12 I__1365 (
            .O(N__6136),
            .I(n4_adj_390));
    LocalMux I__1364 (
            .O(N__6131),
            .I(n4_adj_390));
    InMux I__1363 (
            .O(N__6126),
            .I(N__6122));
    CascadeMux I__1362 (
            .O(N__6125),
            .I(N__6118));
    LocalMux I__1361 (
            .O(N__6122),
            .I(N__6113));
    InMux I__1360 (
            .O(N__6121),
            .I(N__6110));
    InMux I__1359 (
            .O(N__6118),
            .I(N__6107));
    InMux I__1358 (
            .O(N__6117),
            .I(N__6102));
    InMux I__1357 (
            .O(N__6116),
            .I(N__6098));
    Span4Mux_v I__1356 (
            .O(N__6113),
            .I(N__6089));
    LocalMux I__1355 (
            .O(N__6110),
            .I(N__6089));
    LocalMux I__1354 (
            .O(N__6107),
            .I(N__6086));
    InMux I__1353 (
            .O(N__6106),
            .I(N__6083));
    InMux I__1352 (
            .O(N__6105),
            .I(N__6080));
    LocalMux I__1351 (
            .O(N__6102),
            .I(N__6077));
    CascadeMux I__1350 (
            .O(N__6101),
            .I(N__6071));
    LocalMux I__1349 (
            .O(N__6098),
            .I(N__6067));
    InMux I__1348 (
            .O(N__6097),
            .I(N__6060));
    InMux I__1347 (
            .O(N__6096),
            .I(N__6060));
    InMux I__1346 (
            .O(N__6095),
            .I(N__6060));
    InMux I__1345 (
            .O(N__6094),
            .I(N__6052));
    Span4Mux_h I__1344 (
            .O(N__6089),
            .I(N__6049));
    Span4Mux_h I__1343 (
            .O(N__6086),
            .I(N__6040));
    LocalMux I__1342 (
            .O(N__6083),
            .I(N__6040));
    LocalMux I__1341 (
            .O(N__6080),
            .I(N__6040));
    Span4Mux_h I__1340 (
            .O(N__6077),
            .I(N__6040));
    InMux I__1339 (
            .O(N__6076),
            .I(N__6033));
    InMux I__1338 (
            .O(N__6075),
            .I(N__6033));
    InMux I__1337 (
            .O(N__6074),
            .I(N__6033));
    InMux I__1336 (
            .O(N__6071),
            .I(N__6028));
    InMux I__1335 (
            .O(N__6070),
            .I(N__6028));
    Span4Mux_h I__1334 (
            .O(N__6067),
            .I(N__6023));
    LocalMux I__1333 (
            .O(N__6060),
            .I(N__6023));
    InMux I__1332 (
            .O(N__6059),
            .I(N__6020));
    InMux I__1331 (
            .O(N__6058),
            .I(N__6011));
    InMux I__1330 (
            .O(N__6057),
            .I(N__6011));
    InMux I__1329 (
            .O(N__6056),
            .I(N__6011));
    InMux I__1328 (
            .O(N__6055),
            .I(N__6011));
    LocalMux I__1327 (
            .O(N__6052),
            .I(\eeprom.state_1_adj_386 ));
    Odrv4 I__1326 (
            .O(N__6049),
            .I(\eeprom.state_1_adj_386 ));
    Odrv4 I__1325 (
            .O(N__6040),
            .I(\eeprom.state_1_adj_386 ));
    LocalMux I__1324 (
            .O(N__6033),
            .I(\eeprom.state_1_adj_386 ));
    LocalMux I__1323 (
            .O(N__6028),
            .I(\eeprom.state_1_adj_386 ));
    Odrv4 I__1322 (
            .O(N__6023),
            .I(\eeprom.state_1_adj_386 ));
    LocalMux I__1321 (
            .O(N__6020),
            .I(\eeprom.state_1_adj_386 ));
    LocalMux I__1320 (
            .O(N__6011),
            .I(\eeprom.state_1_adj_386 ));
    InMux I__1319 (
            .O(N__5994),
            .I(N__5990));
    InMux I__1318 (
            .O(N__5993),
            .I(N__5984));
    LocalMux I__1317 (
            .O(N__5990),
            .I(N__5981));
    InMux I__1316 (
            .O(N__5989),
            .I(N__5976));
    InMux I__1315 (
            .O(N__5988),
            .I(N__5976));
    InMux I__1314 (
            .O(N__5987),
            .I(N__5972));
    LocalMux I__1313 (
            .O(N__5984),
            .I(N__5968));
    Span4Mux_v I__1312 (
            .O(N__5981),
            .I(N__5961));
    LocalMux I__1311 (
            .O(N__5976),
            .I(N__5961));
    CascadeMux I__1310 (
            .O(N__5975),
            .I(N__5954));
    LocalMux I__1309 (
            .O(N__5972),
            .I(N__5945));
    InMux I__1308 (
            .O(N__5971),
            .I(N__5942));
    Span4Mux_h I__1307 (
            .O(N__5968),
            .I(N__5939));
    InMux I__1306 (
            .O(N__5967),
            .I(N__5934));
    InMux I__1305 (
            .O(N__5966),
            .I(N__5934));
    Span4Mux_h I__1304 (
            .O(N__5961),
            .I(N__5931));
    InMux I__1303 (
            .O(N__5960),
            .I(N__5926));
    InMux I__1302 (
            .O(N__5959),
            .I(N__5926));
    InMux I__1301 (
            .O(N__5958),
            .I(N__5915));
    InMux I__1300 (
            .O(N__5957),
            .I(N__5915));
    InMux I__1299 (
            .O(N__5954),
            .I(N__5915));
    InMux I__1298 (
            .O(N__5953),
            .I(N__5915));
    InMux I__1297 (
            .O(N__5952),
            .I(N__5915));
    InMux I__1296 (
            .O(N__5951),
            .I(N__5912));
    InMux I__1295 (
            .O(N__5950),
            .I(N__5909));
    InMux I__1294 (
            .O(N__5949),
            .I(N__5904));
    InMux I__1293 (
            .O(N__5948),
            .I(N__5904));
    Odrv12 I__1292 (
            .O(N__5945),
            .I(\eeprom.state_3 ));
    LocalMux I__1291 (
            .O(N__5942),
            .I(\eeprom.state_3 ));
    Odrv4 I__1290 (
            .O(N__5939),
            .I(\eeprom.state_3 ));
    LocalMux I__1289 (
            .O(N__5934),
            .I(\eeprom.state_3 ));
    Odrv4 I__1288 (
            .O(N__5931),
            .I(\eeprom.state_3 ));
    LocalMux I__1287 (
            .O(N__5926),
            .I(\eeprom.state_3 ));
    LocalMux I__1286 (
            .O(N__5915),
            .I(\eeprom.state_3 ));
    LocalMux I__1285 (
            .O(N__5912),
            .I(\eeprom.state_3 ));
    LocalMux I__1284 (
            .O(N__5909),
            .I(\eeprom.state_3 ));
    LocalMux I__1283 (
            .O(N__5904),
            .I(\eeprom.state_3 ));
    CascadeMux I__1282 (
            .O(N__5883),
            .I(N__5877));
    InMux I__1281 (
            .O(N__5882),
            .I(N__5871));
    InMux I__1280 (
            .O(N__5881),
            .I(N__5868));
    InMux I__1279 (
            .O(N__5880),
            .I(N__5863));
    InMux I__1278 (
            .O(N__5877),
            .I(N__5860));
    InMux I__1277 (
            .O(N__5876),
            .I(N__5853));
    InMux I__1276 (
            .O(N__5875),
            .I(N__5853));
    CascadeMux I__1275 (
            .O(N__5874),
            .I(N__5848));
    LocalMux I__1274 (
            .O(N__5871),
            .I(N__5842));
    LocalMux I__1273 (
            .O(N__5868),
            .I(N__5839));
    InMux I__1272 (
            .O(N__5867),
            .I(N__5836));
    CascadeMux I__1271 (
            .O(N__5866),
            .I(N__5832));
    LocalMux I__1270 (
            .O(N__5863),
            .I(N__5829));
    LocalMux I__1269 (
            .O(N__5860),
            .I(N__5826));
    InMux I__1268 (
            .O(N__5859),
            .I(N__5823));
    InMux I__1267 (
            .O(N__5858),
            .I(N__5820));
    LocalMux I__1266 (
            .O(N__5853),
            .I(N__5817));
    InMux I__1265 (
            .O(N__5852),
            .I(N__5808));
    InMux I__1264 (
            .O(N__5851),
            .I(N__5808));
    InMux I__1263 (
            .O(N__5848),
            .I(N__5808));
    InMux I__1262 (
            .O(N__5847),
            .I(N__5808));
    InMux I__1261 (
            .O(N__5846),
            .I(N__5805));
    CascadeMux I__1260 (
            .O(N__5845),
            .I(N__5798));
    Span4Mux_v I__1259 (
            .O(N__5842),
            .I(N__5792));
    Span4Mux_v I__1258 (
            .O(N__5839),
            .I(N__5792));
    LocalMux I__1257 (
            .O(N__5836),
            .I(N__5789));
    InMux I__1256 (
            .O(N__5835),
            .I(N__5786));
    InMux I__1255 (
            .O(N__5832),
            .I(N__5783));
    Span4Mux_v I__1254 (
            .O(N__5829),
            .I(N__5778));
    Span4Mux_v I__1253 (
            .O(N__5826),
            .I(N__5778));
    LocalMux I__1252 (
            .O(N__5823),
            .I(N__5775));
    LocalMux I__1251 (
            .O(N__5820),
            .I(N__5766));
    Span4Mux_h I__1250 (
            .O(N__5817),
            .I(N__5766));
    LocalMux I__1249 (
            .O(N__5808),
            .I(N__5766));
    LocalMux I__1248 (
            .O(N__5805),
            .I(N__5766));
    InMux I__1247 (
            .O(N__5804),
            .I(N__5761));
    InMux I__1246 (
            .O(N__5803),
            .I(N__5761));
    InMux I__1245 (
            .O(N__5802),
            .I(N__5758));
    InMux I__1244 (
            .O(N__5801),
            .I(N__5751));
    InMux I__1243 (
            .O(N__5798),
            .I(N__5751));
    InMux I__1242 (
            .O(N__5797),
            .I(N__5751));
    Odrv4 I__1241 (
            .O(N__5792),
            .I(\eeprom.state_0_adj_384 ));
    Odrv12 I__1240 (
            .O(N__5789),
            .I(\eeprom.state_0_adj_384 ));
    LocalMux I__1239 (
            .O(N__5786),
            .I(\eeprom.state_0_adj_384 ));
    LocalMux I__1238 (
            .O(N__5783),
            .I(\eeprom.state_0_adj_384 ));
    Odrv4 I__1237 (
            .O(N__5778),
            .I(\eeprom.state_0_adj_384 ));
    Odrv4 I__1236 (
            .O(N__5775),
            .I(\eeprom.state_0_adj_384 ));
    Odrv4 I__1235 (
            .O(N__5766),
            .I(\eeprom.state_0_adj_384 ));
    LocalMux I__1234 (
            .O(N__5761),
            .I(\eeprom.state_0_adj_384 ));
    LocalMux I__1233 (
            .O(N__5758),
            .I(\eeprom.state_0_adj_384 ));
    LocalMux I__1232 (
            .O(N__5751),
            .I(\eeprom.state_0_adj_384 ));
    InMux I__1231 (
            .O(N__5730),
            .I(N__5718));
    InMux I__1230 (
            .O(N__5729),
            .I(N__5718));
    InMux I__1229 (
            .O(N__5728),
            .I(N__5715));
    InMux I__1228 (
            .O(N__5727),
            .I(N__5710));
    InMux I__1227 (
            .O(N__5726),
            .I(N__5710));
    InMux I__1226 (
            .O(N__5725),
            .I(N__5706));
    InMux I__1225 (
            .O(N__5724),
            .I(N__5697));
    InMux I__1224 (
            .O(N__5723),
            .I(N__5694));
    LocalMux I__1223 (
            .O(N__5718),
            .I(N__5691));
    LocalMux I__1222 (
            .O(N__5715),
            .I(N__5683));
    LocalMux I__1221 (
            .O(N__5710),
            .I(N__5683));
    InMux I__1220 (
            .O(N__5709),
            .I(N__5680));
    LocalMux I__1219 (
            .O(N__5706),
            .I(N__5677));
    InMux I__1218 (
            .O(N__5705),
            .I(N__5666));
    InMux I__1217 (
            .O(N__5704),
            .I(N__5666));
    InMux I__1216 (
            .O(N__5703),
            .I(N__5666));
    InMux I__1215 (
            .O(N__5702),
            .I(N__5666));
    InMux I__1214 (
            .O(N__5701),
            .I(N__5666));
    InMux I__1213 (
            .O(N__5700),
            .I(N__5660));
    LocalMux I__1212 (
            .O(N__5697),
            .I(N__5657));
    LocalMux I__1211 (
            .O(N__5694),
            .I(N__5652));
    Span4Mux_h I__1210 (
            .O(N__5691),
            .I(N__5652));
    InMux I__1209 (
            .O(N__5690),
            .I(N__5649));
    InMux I__1208 (
            .O(N__5689),
            .I(N__5644));
    InMux I__1207 (
            .O(N__5688),
            .I(N__5644));
    Span4Mux_v I__1206 (
            .O(N__5683),
            .I(N__5641));
    LocalMux I__1205 (
            .O(N__5680),
            .I(N__5634));
    Span4Mux_h I__1204 (
            .O(N__5677),
            .I(N__5634));
    LocalMux I__1203 (
            .O(N__5666),
            .I(N__5634));
    InMux I__1202 (
            .O(N__5665),
            .I(N__5627));
    InMux I__1201 (
            .O(N__5664),
            .I(N__5627));
    InMux I__1200 (
            .O(N__5663),
            .I(N__5627));
    LocalMux I__1199 (
            .O(N__5660),
            .I(\eeprom.i2c.state_2 ));
    Odrv4 I__1198 (
            .O(N__5657),
            .I(\eeprom.i2c.state_2 ));
    Odrv4 I__1197 (
            .O(N__5652),
            .I(\eeprom.i2c.state_2 ));
    LocalMux I__1196 (
            .O(N__5649),
            .I(\eeprom.i2c.state_2 ));
    LocalMux I__1195 (
            .O(N__5644),
            .I(\eeprom.i2c.state_2 ));
    Odrv4 I__1194 (
            .O(N__5641),
            .I(\eeprom.i2c.state_2 ));
    Odrv4 I__1193 (
            .O(N__5634),
            .I(\eeprom.i2c.state_2 ));
    LocalMux I__1192 (
            .O(N__5627),
            .I(\eeprom.i2c.state_2 ));
    InMux I__1191 (
            .O(N__5610),
            .I(N__5606));
    InMux I__1190 (
            .O(N__5609),
            .I(N__5603));
    LocalMux I__1189 (
            .O(N__5606),
            .I(\eeprom.i2c.counter2_0 ));
    LocalMux I__1188 (
            .O(N__5603),
            .I(\eeprom.i2c.counter2_0 ));
    InMux I__1187 (
            .O(N__5598),
            .I(bfn_27_13_0_));
    InMux I__1186 (
            .O(N__5595),
            .I(N__5591));
    InMux I__1185 (
            .O(N__5594),
            .I(N__5588));
    LocalMux I__1184 (
            .O(N__5591),
            .I(\eeprom.i2c.counter2_1 ));
    LocalMux I__1183 (
            .O(N__5588),
            .I(\eeprom.i2c.counter2_1 ));
    InMux I__1182 (
            .O(N__5583),
            .I(\eeprom.i2c.n2871 ));
    InMux I__1181 (
            .O(N__5580),
            .I(N__5576));
    InMux I__1180 (
            .O(N__5579),
            .I(N__5573));
    LocalMux I__1179 (
            .O(N__5576),
            .I(\eeprom.i2c.counter2_2 ));
    LocalMux I__1178 (
            .O(N__5573),
            .I(\eeprom.i2c.counter2_2 ));
    InMux I__1177 (
            .O(N__5568),
            .I(\eeprom.i2c.n2872 ));
    InMux I__1176 (
            .O(N__5565),
            .I(N__5561));
    InMux I__1175 (
            .O(N__5564),
            .I(N__5558));
    LocalMux I__1174 (
            .O(N__5561),
            .I(\eeprom.i2c.counter2_3 ));
    LocalMux I__1173 (
            .O(N__5558),
            .I(\eeprom.i2c.counter2_3 ));
    InMux I__1172 (
            .O(N__5553),
            .I(\eeprom.i2c.n2873 ));
    InMux I__1171 (
            .O(N__5550),
            .I(\eeprom.i2c.n2853 ));
    InMux I__1170 (
            .O(N__5547),
            .I(\eeprom.i2c.n2854 ));
    InMux I__1169 (
            .O(N__5544),
            .I(\eeprom.i2c.n2855 ));
    InMux I__1168 (
            .O(N__5541),
            .I(N__5537));
    CascadeMux I__1167 (
            .O(N__5540),
            .I(N__5534));
    LocalMux I__1166 (
            .O(N__5537),
            .I(N__5527));
    InMux I__1165 (
            .O(N__5534),
            .I(N__5524));
    CascadeMux I__1164 (
            .O(N__5533),
            .I(N__5520));
    CascadeMux I__1163 (
            .O(N__5532),
            .I(N__5517));
    CascadeMux I__1162 (
            .O(N__5531),
            .I(N__5514));
    InMux I__1161 (
            .O(N__5530),
            .I(N__5510));
    Span4Mux_v I__1160 (
            .O(N__5527),
            .I(N__5507));
    LocalMux I__1159 (
            .O(N__5524),
            .I(N__5504));
    InMux I__1158 (
            .O(N__5523),
            .I(N__5501));
    InMux I__1157 (
            .O(N__5520),
            .I(N__5496));
    InMux I__1156 (
            .O(N__5517),
            .I(N__5496));
    InMux I__1155 (
            .O(N__5514),
            .I(N__5493));
    InMux I__1154 (
            .O(N__5513),
            .I(N__5490));
    LocalMux I__1153 (
            .O(N__5510),
            .I(N__5487));
    Odrv4 I__1152 (
            .O(N__5507),
            .I(\eeprom.n10 ));
    Odrv4 I__1151 (
            .O(N__5504),
            .I(\eeprom.n10 ));
    LocalMux I__1150 (
            .O(N__5501),
            .I(\eeprom.n10 ));
    LocalMux I__1149 (
            .O(N__5496),
            .I(\eeprom.n10 ));
    LocalMux I__1148 (
            .O(N__5493),
            .I(\eeprom.n10 ));
    LocalMux I__1147 (
            .O(N__5490),
            .I(\eeprom.n10 ));
    Odrv12 I__1146 (
            .O(N__5487),
            .I(\eeprom.n10 ));
    InMux I__1145 (
            .O(N__5472),
            .I(N__5469));
    LocalMux I__1144 (
            .O(N__5469),
            .I(N__5465));
    InMux I__1143 (
            .O(N__5468),
            .I(N__5462));
    Odrv4 I__1142 (
            .O(N__5465),
            .I(\eeprom.i2c.n9_adj_377 ));
    LocalMux I__1141 (
            .O(N__5462),
            .I(\eeprom.i2c.n9_adj_377 ));
    CascadeMux I__1140 (
            .O(N__5457),
            .I(\eeprom.i2c.n3039_cascade_ ));
    InMux I__1139 (
            .O(N__5454),
            .I(N__5450));
    CascadeMux I__1138 (
            .O(N__5453),
            .I(N__5447));
    LocalMux I__1137 (
            .O(N__5450),
            .I(N__5439));
    InMux I__1136 (
            .O(N__5447),
            .I(N__5436));
    CascadeMux I__1135 (
            .O(N__5446),
            .I(N__5433));
    CascadeMux I__1134 (
            .O(N__5445),
            .I(N__5429));
    CascadeMux I__1133 (
            .O(N__5444),
            .I(N__5426));
    CascadeMux I__1132 (
            .O(N__5443),
            .I(N__5423));
    CascadeMux I__1131 (
            .O(N__5442),
            .I(N__5419));
    Span4Mux_v I__1130 (
            .O(N__5439),
            .I(N__5415));
    LocalMux I__1129 (
            .O(N__5436),
            .I(N__5412));
    InMux I__1128 (
            .O(N__5433),
            .I(N__5405));
    InMux I__1127 (
            .O(N__5432),
            .I(N__5405));
    InMux I__1126 (
            .O(N__5429),
            .I(N__5400));
    InMux I__1125 (
            .O(N__5426),
            .I(N__5400));
    InMux I__1124 (
            .O(N__5423),
            .I(N__5397));
    InMux I__1123 (
            .O(N__5422),
            .I(N__5392));
    InMux I__1122 (
            .O(N__5419),
            .I(N__5392));
    InMux I__1121 (
            .O(N__5418),
            .I(N__5389));
    Span4Mux_v I__1120 (
            .O(N__5415),
            .I(N__5386));
    Span4Mux_h I__1119 (
            .O(N__5412),
            .I(N__5383));
    InMux I__1118 (
            .O(N__5411),
            .I(N__5380));
    InMux I__1117 (
            .O(N__5410),
            .I(N__5377));
    LocalMux I__1116 (
            .O(N__5405),
            .I(N__5366));
    LocalMux I__1115 (
            .O(N__5400),
            .I(N__5366));
    LocalMux I__1114 (
            .O(N__5397),
            .I(N__5366));
    LocalMux I__1113 (
            .O(N__5392),
            .I(N__5366));
    LocalMux I__1112 (
            .O(N__5389),
            .I(N__5366));
    Span4Mux_v I__1111 (
            .O(N__5386),
            .I(N__5363));
    Sp12to4 I__1110 (
            .O(N__5383),
            .I(N__5356));
    LocalMux I__1109 (
            .O(N__5380),
            .I(N__5356));
    LocalMux I__1108 (
            .O(N__5377),
            .I(N__5356));
    Span12Mux_v I__1107 (
            .O(N__5366),
            .I(N__5353));
    Sp12to4 I__1106 (
            .O(N__5363),
            .I(N__5348));
    Span12Mux_v I__1105 (
            .O(N__5356),
            .I(N__5348));
    Odrv12 I__1104 (
            .O(N__5353),
            .I(state_7_N_286_3));
    Odrv12 I__1103 (
            .O(N__5348),
            .I(state_7_N_286_3));
    InMux I__1102 (
            .O(N__5343),
            .I(N__5338));
    InMux I__1101 (
            .O(N__5342),
            .I(N__5332));
    InMux I__1100 (
            .O(N__5341),
            .I(N__5332));
    LocalMux I__1099 (
            .O(N__5338),
            .I(N__5329));
    CascadeMux I__1098 (
            .O(N__5337),
            .I(N__5326));
    LocalMux I__1097 (
            .O(N__5332),
            .I(N__5323));
    Span4Mux_h I__1096 (
            .O(N__5329),
            .I(N__5320));
    InMux I__1095 (
            .O(N__5326),
            .I(N__5317));
    Odrv12 I__1094 (
            .O(N__5323),
            .I(n1723));
    Odrv4 I__1093 (
            .O(N__5320),
            .I(n1723));
    LocalMux I__1092 (
            .O(N__5317),
            .I(n1723));
    InMux I__1091 (
            .O(N__5310),
            .I(N__5307));
    LocalMux I__1090 (
            .O(N__5307),
            .I(N__5304));
    Span4Mux_h I__1089 (
            .O(N__5304),
            .I(N__5300));
    InMux I__1088 (
            .O(N__5303),
            .I(N__5297));
    Odrv4 I__1087 (
            .O(N__5300),
            .I(data_1));
    LocalMux I__1086 (
            .O(N__5297),
            .I(data_1));
    InMux I__1085 (
            .O(N__5292),
            .I(N__5288));
    InMux I__1084 (
            .O(N__5291),
            .I(N__5285));
    LocalMux I__1083 (
            .O(N__5288),
            .I(\eeprom.i2c.counter_6 ));
    LocalMux I__1082 (
            .O(N__5285),
            .I(\eeprom.i2c.counter_6 ));
    CascadeMux I__1081 (
            .O(N__5280),
            .I(N__5277));
    InMux I__1080 (
            .O(N__5277),
            .I(N__5273));
    InMux I__1079 (
            .O(N__5276),
            .I(N__5270));
    LocalMux I__1078 (
            .O(N__5273),
            .I(\eeprom.i2c.counter_3 ));
    LocalMux I__1077 (
            .O(N__5270),
            .I(\eeprom.i2c.counter_3 ));
    CascadeMux I__1076 (
            .O(N__5265),
            .I(N__5261));
    CascadeMux I__1075 (
            .O(N__5264),
            .I(N__5258));
    InMux I__1074 (
            .O(N__5261),
            .I(N__5255));
    InMux I__1073 (
            .O(N__5258),
            .I(N__5252));
    LocalMux I__1072 (
            .O(N__5255),
            .I(\eeprom.i2c.counter_5 ));
    LocalMux I__1071 (
            .O(N__5252),
            .I(\eeprom.i2c.counter_5 ));
    InMux I__1070 (
            .O(N__5247),
            .I(N__5243));
    InMux I__1069 (
            .O(N__5246),
            .I(N__5240));
    LocalMux I__1068 (
            .O(N__5243),
            .I(\eeprom.i2c.counter_7 ));
    LocalMux I__1067 (
            .O(N__5240),
            .I(\eeprom.i2c.counter_7 ));
    InMux I__1066 (
            .O(N__5235),
            .I(N__5229));
    InMux I__1065 (
            .O(N__5234),
            .I(N__5226));
    InMux I__1064 (
            .O(N__5233),
            .I(N__5221));
    InMux I__1063 (
            .O(N__5232),
            .I(N__5221));
    LocalMux I__1062 (
            .O(N__5229),
            .I(\eeprom.n9 ));
    LocalMux I__1061 (
            .O(N__5226),
            .I(\eeprom.n9 ));
    LocalMux I__1060 (
            .O(N__5221),
            .I(\eeprom.n9 ));
    SRMux I__1059 (
            .O(N__5214),
            .I(N__5211));
    LocalMux I__1058 (
            .O(N__5211),
            .I(N__5205));
    InMux I__1057 (
            .O(N__5210),
            .I(N__5202));
    InMux I__1056 (
            .O(N__5209),
            .I(N__5197));
    InMux I__1055 (
            .O(N__5208),
            .I(N__5197));
    Span4Mux_h I__1054 (
            .O(N__5205),
            .I(N__5192));
    LocalMux I__1053 (
            .O(N__5202),
            .I(N__5192));
    LocalMux I__1052 (
            .O(N__5197),
            .I(N__5183));
    Span4Mux_v I__1051 (
            .O(N__5192),
            .I(N__5180));
    InMux I__1050 (
            .O(N__5191),
            .I(N__5177));
    InMux I__1049 (
            .O(N__5190),
            .I(N__5166));
    InMux I__1048 (
            .O(N__5189),
            .I(N__5166));
    InMux I__1047 (
            .O(N__5188),
            .I(N__5166));
    InMux I__1046 (
            .O(N__5187),
            .I(N__5166));
    InMux I__1045 (
            .O(N__5186),
            .I(N__5166));
    Span4Mux_h I__1044 (
            .O(N__5183),
            .I(N__5163));
    Odrv4 I__1043 (
            .O(N__5180),
            .I(state_1));
    LocalMux I__1042 (
            .O(N__5177),
            .I(state_1));
    LocalMux I__1041 (
            .O(N__5166),
            .I(state_1));
    Odrv4 I__1040 (
            .O(N__5163),
            .I(state_1));
    CascadeMux I__1039 (
            .O(N__5154),
            .I(N__5146));
    InMux I__1038 (
            .O(N__5153),
            .I(N__5143));
    InMux I__1037 (
            .O(N__5152),
            .I(N__5134));
    InMux I__1036 (
            .O(N__5151),
            .I(N__5134));
    InMux I__1035 (
            .O(N__5150),
            .I(N__5134));
    InMux I__1034 (
            .O(N__5149),
            .I(N__5134));
    InMux I__1033 (
            .O(N__5146),
            .I(N__5130));
    LocalMux I__1032 (
            .O(N__5143),
            .I(N__5127));
    LocalMux I__1031 (
            .O(N__5134),
            .I(N__5118));
    InMux I__1030 (
            .O(N__5133),
            .I(N__5115));
    LocalMux I__1029 (
            .O(N__5130),
            .I(N__5112));
    Span4Mux_h I__1028 (
            .O(N__5127),
            .I(N__5109));
    InMux I__1027 (
            .O(N__5126),
            .I(N__5096));
    InMux I__1026 (
            .O(N__5125),
            .I(N__5096));
    InMux I__1025 (
            .O(N__5124),
            .I(N__5096));
    InMux I__1024 (
            .O(N__5123),
            .I(N__5096));
    InMux I__1023 (
            .O(N__5122),
            .I(N__5096));
    InMux I__1022 (
            .O(N__5121),
            .I(N__5096));
    Span4Mux_h I__1021 (
            .O(N__5118),
            .I(N__5093));
    LocalMux I__1020 (
            .O(N__5115),
            .I(state_0));
    Odrv4 I__1019 (
            .O(N__5112),
            .I(state_0));
    Odrv4 I__1018 (
            .O(N__5109),
            .I(state_0));
    LocalMux I__1017 (
            .O(N__5096),
            .I(state_0));
    Odrv4 I__1016 (
            .O(N__5093),
            .I(state_0));
    CEMux I__1015 (
            .O(N__5082),
            .I(N__5079));
    LocalMux I__1014 (
            .O(N__5079),
            .I(\eeprom.n3142 ));
    CascadeMux I__1013 (
            .O(N__5076),
            .I(\eeprom.i2c.n10_adj_380_cascade_ ));
    InMux I__1012 (
            .O(N__5073),
            .I(N__5069));
    InMux I__1011 (
            .O(N__5072),
            .I(N__5066));
    LocalMux I__1010 (
            .O(N__5069),
            .I(N__5063));
    LocalMux I__1009 (
            .O(N__5066),
            .I(N__5058));
    Span4Mux_v I__1008 (
            .O(N__5063),
            .I(N__5058));
    Odrv4 I__1007 (
            .O(N__5058),
            .I(\eeprom.i2c.n15 ));
    InMux I__1006 (
            .O(N__5055),
            .I(\eeprom.i2c.n2849 ));
    InMux I__1005 (
            .O(N__5052),
            .I(\eeprom.i2c.n2850 ));
    InMux I__1004 (
            .O(N__5049),
            .I(\eeprom.i2c.n2851 ));
    InMux I__1003 (
            .O(N__5046),
            .I(\eeprom.i2c.n2852 ));
    CascadeMux I__1002 (
            .O(N__5043),
            .I(N__5040));
    InMux I__1001 (
            .O(N__5040),
            .I(N__5037));
    LocalMux I__1000 (
            .O(N__5037),
            .I(N__5034));
    Span4Mux_h I__999 (
            .O(N__5034),
            .I(N__5030));
    InMux I__998 (
            .O(N__5033),
            .I(N__5027));
    Odrv4 I__997 (
            .O(N__5030),
            .I(data_7));
    LocalMux I__996 (
            .O(N__5027),
            .I(data_7));
    CascadeMux I__995 (
            .O(N__5022),
            .I(N__5018));
    InMux I__994 (
            .O(N__5021),
            .I(N__5014));
    InMux I__993 (
            .O(N__5018),
            .I(N__5011));
    CascadeMux I__992 (
            .O(N__5017),
            .I(N__5008));
    LocalMux I__991 (
            .O(N__5014),
            .I(N__5001));
    LocalMux I__990 (
            .O(N__5011),
            .I(N__5001));
    InMux I__989 (
            .O(N__5008),
            .I(N__4998));
    InMux I__988 (
            .O(N__5007),
            .I(N__4995));
    InMux I__987 (
            .O(N__5006),
            .I(N__4992));
    Span4Mux_v I__986 (
            .O(N__5001),
            .I(N__4986));
    LocalMux I__985 (
            .O(N__4998),
            .I(N__4986));
    LocalMux I__984 (
            .O(N__4995),
            .I(N__4981));
    LocalMux I__983 (
            .O(N__4992),
            .I(N__4981));
    InMux I__982 (
            .O(N__4991),
            .I(N__4978));
    Odrv4 I__981 (
            .O(N__4986),
            .I(enable_slow_N_373));
    Odrv4 I__980 (
            .O(N__4981),
            .I(enable_slow_N_373));
    LocalMux I__979 (
            .O(N__4978),
            .I(enable_slow_N_373));
    CascadeMux I__978 (
            .O(N__4971),
            .I(\eeprom.n14_cascade_ ));
    InMux I__977 (
            .O(N__4968),
            .I(N__4965));
    LocalMux I__976 (
            .O(N__4965),
            .I(n2382));
    CascadeMux I__975 (
            .O(N__4962),
            .I(n3051_cascade_));
    InMux I__974 (
            .O(N__4959),
            .I(N__4950));
    InMux I__973 (
            .O(N__4958),
            .I(N__4950));
    InMux I__972 (
            .O(N__4957),
            .I(N__4950));
    LocalMux I__971 (
            .O(N__4950),
            .I(n2913));
    CascadeMux I__970 (
            .O(N__4947),
            .I(n1113_cascade_));
    InMux I__969 (
            .O(N__4944),
            .I(N__4940));
    InMux I__968 (
            .O(N__4943),
            .I(N__4937));
    LocalMux I__967 (
            .O(N__4940),
            .I(N__4929));
    LocalMux I__966 (
            .O(N__4937),
            .I(N__4929));
    InMux I__965 (
            .O(N__4936),
            .I(N__4924));
    InMux I__964 (
            .O(N__4935),
            .I(N__4924));
    InMux I__963 (
            .O(N__4934),
            .I(N__4921));
    Span4Mux_h I__962 (
            .O(N__4929),
            .I(N__4918));
    LocalMux I__961 (
            .O(N__4924),
            .I(N__4915));
    LocalMux I__960 (
            .O(N__4921),
            .I(read));
    Odrv4 I__959 (
            .O(N__4918),
            .I(read));
    Odrv4 I__958 (
            .O(N__4915),
            .I(read));
    InMux I__957 (
            .O(N__4908),
            .I(N__4905));
    LocalMux I__956 (
            .O(N__4905),
            .I(n3109));
    CascadeMux I__955 (
            .O(N__4902),
            .I(N__4897));
    InMux I__954 (
            .O(N__4901),
            .I(N__4894));
    CascadeMux I__953 (
            .O(N__4900),
            .I(N__4891));
    InMux I__952 (
            .O(N__4897),
            .I(N__4888));
    LocalMux I__951 (
            .O(N__4894),
            .I(N__4885));
    InMux I__950 (
            .O(N__4891),
            .I(N__4882));
    LocalMux I__949 (
            .O(N__4888),
            .I(\eeprom.i2c.n11 ));
    Odrv4 I__948 (
            .O(N__4885),
            .I(\eeprom.i2c.n11 ));
    LocalMux I__947 (
            .O(N__4882),
            .I(\eeprom.i2c.n11 ));
    InMux I__946 (
            .O(N__4875),
            .I(N__4872));
    LocalMux I__945 (
            .O(N__4872),
            .I(N__4869));
    Span4Mux_v I__944 (
            .O(N__4869),
            .I(N__4865));
    InMux I__943 (
            .O(N__4868),
            .I(N__4862));
    Odrv4 I__942 (
            .O(N__4865),
            .I(rw));
    LocalMux I__941 (
            .O(N__4862),
            .I(rw));
    CascadeMux I__940 (
            .O(N__4857),
            .I(N__4854));
    InMux I__939 (
            .O(N__4854),
            .I(N__4851));
    LocalMux I__938 (
            .O(N__4851),
            .I(N__4847));
    InMux I__937 (
            .O(N__4850),
            .I(N__4844));
    Span4Mux_v I__936 (
            .O(N__4847),
            .I(N__4839));
    LocalMux I__935 (
            .O(N__4844),
            .I(N__4836));
    InMux I__934 (
            .O(N__4843),
            .I(N__4833));
    InMux I__933 (
            .O(N__4842),
            .I(N__4830));
    Odrv4 I__932 (
            .O(N__4839),
            .I(state_7_N_270_0));
    Odrv4 I__931 (
            .O(N__4836),
            .I(state_7_N_270_0));
    LocalMux I__930 (
            .O(N__4833),
            .I(state_7_N_270_0));
    LocalMux I__929 (
            .O(N__4830),
            .I(state_7_N_270_0));
    InMux I__928 (
            .O(N__4821),
            .I(N__4818));
    LocalMux I__927 (
            .O(N__4818),
            .I(N__4814));
    InMux I__926 (
            .O(N__4817),
            .I(N__4811));
    Odrv12 I__925 (
            .O(N__4814),
            .I(\eeprom.i2c.n11_adj_374 ));
    LocalMux I__924 (
            .O(N__4811),
            .I(\eeprom.i2c.n11_adj_374 ));
    InMux I__923 (
            .O(N__4806),
            .I(N__4802));
    InMux I__922 (
            .O(N__4805),
            .I(N__4799));
    LocalMux I__921 (
            .O(N__4802),
            .I(N__4796));
    LocalMux I__920 (
            .O(N__4799),
            .I(\eeprom.i2c.n11_adj_378 ));
    Odrv4 I__919 (
            .O(N__4796),
            .I(\eeprom.i2c.n11_adj_378 ));
    InMux I__918 (
            .O(N__4791),
            .I(N__4786));
    InMux I__917 (
            .O(N__4790),
            .I(N__4783));
    InMux I__916 (
            .O(N__4789),
            .I(N__4780));
    LocalMux I__915 (
            .O(N__4786),
            .I(saved_addr_0));
    LocalMux I__914 (
            .O(N__4783),
            .I(saved_addr_0));
    LocalMux I__913 (
            .O(N__4780),
            .I(saved_addr_0));
    InMux I__912 (
            .O(N__4773),
            .I(N__4770));
    LocalMux I__911 (
            .O(N__4770),
            .I(N__4767));
    Span4Mux_v I__910 (
            .O(N__4767),
            .I(N__4763));
    InMux I__909 (
            .O(N__4766),
            .I(N__4760));
    Sp12to4 I__908 (
            .O(N__4763),
            .I(N__4755));
    LocalMux I__907 (
            .O(N__4760),
            .I(N__4755));
    Odrv12 I__906 (
            .O(N__4755),
            .I(n4));
    CEMux I__905 (
            .O(N__4752),
            .I(N__4746));
    CEMux I__904 (
            .O(N__4751),
            .I(N__4743));
    CEMux I__903 (
            .O(N__4750),
            .I(N__4740));
    CEMux I__902 (
            .O(N__4749),
            .I(N__4737));
    LocalMux I__901 (
            .O(N__4746),
            .I(N__4733));
    LocalMux I__900 (
            .O(N__4743),
            .I(N__4730));
    LocalMux I__899 (
            .O(N__4740),
            .I(N__4727));
    LocalMux I__898 (
            .O(N__4737),
            .I(N__4724));
    CascadeMux I__897 (
            .O(N__4736),
            .I(N__4721));
    Span4Mux_h I__896 (
            .O(N__4733),
            .I(N__4716));
    Span4Mux_h I__895 (
            .O(N__4730),
            .I(N__4709));
    Span4Mux_v I__894 (
            .O(N__4727),
            .I(N__4709));
    Span4Mux_h I__893 (
            .O(N__4724),
            .I(N__4709));
    InMux I__892 (
            .O(N__4721),
            .I(N__4706));
    InMux I__891 (
            .O(N__4720),
            .I(N__4703));
    InMux I__890 (
            .O(N__4719),
            .I(N__4700));
    Odrv4 I__889 (
            .O(N__4716),
            .I(\eeprom.i2c.n1063 ));
    Odrv4 I__888 (
            .O(N__4709),
            .I(\eeprom.i2c.n1063 ));
    LocalMux I__887 (
            .O(N__4706),
            .I(\eeprom.i2c.n1063 ));
    LocalMux I__886 (
            .O(N__4703),
            .I(\eeprom.i2c.n1063 ));
    LocalMux I__885 (
            .O(N__4700),
            .I(\eeprom.i2c.n1063 ));
    CascadeMux I__884 (
            .O(N__4689),
            .I(\eeprom.i2c.n9_adj_377_cascade_ ));
    SRMux I__883 (
            .O(N__4686),
            .I(N__4683));
    LocalMux I__882 (
            .O(N__4683),
            .I(N__4680));
    Span4Mux_h I__881 (
            .O(N__4680),
            .I(N__4677));
    Odrv4 I__880 (
            .O(N__4677),
            .I(\eeprom.i2c.n3050 ));
    InMux I__879 (
            .O(N__4674),
            .I(N__4671));
    LocalMux I__878 (
            .O(N__4671),
            .I(N__4667));
    InMux I__877 (
            .O(N__4670),
            .I(N__4664));
    Span4Mux_h I__876 (
            .O(N__4667),
            .I(N__4661));
    LocalMux I__875 (
            .O(N__4664),
            .I(N__4658));
    Odrv4 I__874 (
            .O(N__4661),
            .I(n4_adj_389));
    Odrv4 I__873 (
            .O(N__4658),
            .I(n4_adj_389));
    InMux I__872 (
            .O(N__4653),
            .I(N__4650));
    LocalMux I__871 (
            .O(N__4650),
            .I(N__4647));
    Odrv12 I__870 (
            .O(N__4647),
            .I(n2344));
    CascadeMux I__869 (
            .O(N__4644),
            .I(n2344_cascade_));
    CascadeMux I__868 (
            .O(N__4641),
            .I(N__4638));
    InMux I__867 (
            .O(N__4638),
            .I(N__4634));
    InMux I__866 (
            .O(N__4637),
            .I(N__4631));
    LocalMux I__865 (
            .O(N__4634),
            .I(\eeprom.i2c.n10_adj_381 ));
    LocalMux I__864 (
            .O(N__4631),
            .I(\eeprom.i2c.n10_adj_381 ));
    CascadeMux I__863 (
            .O(N__4626),
            .I(\eeprom.i2c.n11_adj_378_cascade_ ));
    InMux I__862 (
            .O(N__4623),
            .I(N__4620));
    LocalMux I__861 (
            .O(N__4620),
            .I(\eeprom.i2c.n2352 ));
    CascadeMux I__860 (
            .O(N__4617),
            .I(\eeprom.i2c.n1734_cascade_ ));
    InMux I__859 (
            .O(N__4614),
            .I(N__4610));
    InMux I__858 (
            .O(N__4613),
            .I(N__4607));
    LocalMux I__857 (
            .O(N__4610),
            .I(\eeprom.i2c.n2358 ));
    LocalMux I__856 (
            .O(N__4607),
            .I(\eeprom.i2c.n2358 ));
    CascadeMux I__855 (
            .O(N__4602),
            .I(\eeprom.i2c.n1063_cascade_ ));
    SRMux I__854 (
            .O(N__4599),
            .I(N__4596));
    LocalMux I__853 (
            .O(N__4596),
            .I(N__4593));
    Odrv4 I__852 (
            .O(N__4593),
            .I(\eeprom.i2c.n1923 ));
    InMux I__851 (
            .O(N__4590),
            .I(N__4586));
    InMux I__850 (
            .O(N__4589),
            .I(N__4583));
    LocalMux I__849 (
            .O(N__4586),
            .I(N__4580));
    LocalMux I__848 (
            .O(N__4583),
            .I(N__4577));
    Odrv4 I__847 (
            .O(N__4580),
            .I(\eeprom.enable ));
    Odrv4 I__846 (
            .O(N__4577),
            .I(\eeprom.enable ));
    CEMux I__845 (
            .O(N__4572),
            .I(N__4569));
    LocalMux I__844 (
            .O(N__4569),
            .I(N__4566));
    Span4Mux_h I__843 (
            .O(N__4566),
            .I(N__4563));
    Odrv4 I__842 (
            .O(N__4563),
            .I(\eeprom.i2c.n1761 ));
    InMux I__841 (
            .O(N__4560),
            .I(N__4555));
    InMux I__840 (
            .O(N__4559),
            .I(N__4552));
    InMux I__839 (
            .O(N__4558),
            .I(N__4549));
    LocalMux I__838 (
            .O(N__4555),
            .I(N__4546));
    LocalMux I__837 (
            .O(N__4552),
            .I(N__4541));
    LocalMux I__836 (
            .O(N__4549),
            .I(N__4541));
    Span4Mux_v I__835 (
            .O(N__4546),
            .I(N__4538));
    Odrv12 I__834 (
            .O(N__4541),
            .I(\eeprom.n1704 ));
    Odrv4 I__833 (
            .O(N__4538),
            .I(\eeprom.n1704 ));
    CascadeMux I__832 (
            .O(N__4533),
            .I(\eeprom.n26_cascade_ ));
    InMux I__831 (
            .O(N__4530),
            .I(N__4527));
    LocalMux I__830 (
            .O(N__4527),
            .I(\eeprom.i2c.n3123 ));
    CEMux I__829 (
            .O(N__4524),
            .I(N__4521));
    LocalMux I__828 (
            .O(N__4521),
            .I(N__4518));
    Span4Mux_h I__827 (
            .O(N__4518),
            .I(N__4515));
    Odrv4 I__826 (
            .O(N__4515),
            .I(\eeprom.i2c.n2967 ));
    CascadeMux I__825 (
            .O(N__4512),
            .I(\eeprom.i2c.n37_cascade_ ));
    InMux I__824 (
            .O(N__4509),
            .I(N__4505));
    InMux I__823 (
            .O(N__4508),
            .I(N__4502));
    LocalMux I__822 (
            .O(N__4505),
            .I(\eeprom.i2c.n33 ));
    LocalMux I__821 (
            .O(N__4502),
            .I(\eeprom.i2c.n33 ));
    InMux I__820 (
            .O(N__4497),
            .I(N__4494));
    LocalMux I__819 (
            .O(N__4494),
            .I(\eeprom.i2c.n39 ));
    CascadeMux I__818 (
            .O(N__4491),
            .I(\eeprom.i2c.n39_cascade_ ));
    InMux I__817 (
            .O(N__4488),
            .I(N__4485));
    LocalMux I__816 (
            .O(N__4485),
            .I(\eeprom.i2c.n3133 ));
    CascadeMux I__815 (
            .O(N__4482),
            .I(N__4479));
    InMux I__814 (
            .O(N__4479),
            .I(N__4476));
    LocalMux I__813 (
            .O(N__4476),
            .I(N__4473));
    Span4Mux_h I__812 (
            .O(N__4473),
            .I(N__4470));
    Odrv4 I__811 (
            .O(N__4470),
            .I(\eeprom.i2c.n7 ));
    SRMux I__810 (
            .O(N__4467),
            .I(N__4464));
    LocalMux I__809 (
            .O(N__4464),
            .I(N__4461));
    Odrv4 I__808 (
            .O(N__4461),
            .I(\eeprom.i2c.n3082 ));
    InMux I__807 (
            .O(N__4458),
            .I(N__4455));
    LocalMux I__806 (
            .O(N__4455),
            .I(\eeprom.i2c.n13 ));
    CascadeMux I__805 (
            .O(N__4452),
            .I(\eeprom.i2c.n15_cascade_ ));
    CascadeMux I__804 (
            .O(N__4449),
            .I(n1718_cascade_));
    InMux I__803 (
            .O(N__4446),
            .I(N__4440));
    InMux I__802 (
            .O(N__4445),
            .I(N__4440));
    LocalMux I__801 (
            .O(N__4440),
            .I(data_2));
    InMux I__800 (
            .O(N__4437),
            .I(N__4428));
    InMux I__799 (
            .O(N__4436),
            .I(N__4428));
    InMux I__798 (
            .O(N__4435),
            .I(N__4428));
    LocalMux I__797 (
            .O(N__4428),
            .I(n1718));
    InMux I__796 (
            .O(N__4425),
            .I(N__4419));
    InMux I__795 (
            .O(N__4424),
            .I(N__4419));
    LocalMux I__794 (
            .O(N__4419),
            .I(data_6));
    SRMux I__793 (
            .O(N__4416),
            .I(N__4413));
    LocalMux I__792 (
            .O(N__4413),
            .I(N__4410));
    Odrv4 I__791 (
            .O(N__4410),
            .I(\eeprom.i2c.n1928 ));
    CascadeMux I__790 (
            .O(N__4407),
            .I(\eeprom.i2c.n3130_cascade_ ));
    CEMux I__789 (
            .O(N__4404),
            .I(N__4401));
    LocalMux I__788 (
            .O(N__4401),
            .I(N__4398));
    Odrv4 I__787 (
            .O(N__4398),
            .I(\eeprom.i2c.n1153 ));
    SRMux I__786 (
            .O(N__4395),
            .I(N__4392));
    LocalMux I__785 (
            .O(N__4392),
            .I(N__4389));
    Span4Mux_h I__784 (
            .O(N__4389),
            .I(N__4386));
    Odrv4 I__783 (
            .O(N__4386),
            .I(\eeprom.i2c.n2388 ));
    InMux I__782 (
            .O(N__4383),
            .I(N__4379));
    InMux I__781 (
            .O(N__4382),
            .I(N__4376));
    LocalMux I__780 (
            .O(N__4379),
            .I(data_5));
    LocalMux I__779 (
            .O(N__4376),
            .I(data_5));
    InMux I__778 (
            .O(N__4371),
            .I(N__4365));
    InMux I__777 (
            .O(N__4370),
            .I(N__4365));
    LocalMux I__776 (
            .O(N__4365),
            .I(data_0));
    CascadeMux I__775 (
            .O(N__4362),
            .I(N__4359));
    InMux I__774 (
            .O(N__4359),
            .I(N__4356));
    LocalMux I__773 (
            .O(N__4356),
            .I(N__4352));
    InMux I__772 (
            .O(N__4355),
            .I(N__4349));
    Odrv4 I__771 (
            .O(N__4352),
            .I(data_3));
    LocalMux I__770 (
            .O(N__4349),
            .I(data_3));
    InMux I__769 (
            .O(N__4344),
            .I(N__4341));
    LocalMux I__768 (
            .O(N__4341),
            .I(n13));
    InMux I__767 (
            .O(N__4338),
            .I(N__4335));
    LocalMux I__766 (
            .O(N__4335),
            .I(n12));
    InMux I__765 (
            .O(N__4332),
            .I(N__4326));
    InMux I__764 (
            .O(N__4331),
            .I(N__4326));
    LocalMux I__763 (
            .O(N__4326),
            .I(data_4));
    CascadeMux I__762 (
            .O(N__4323),
            .I(n1836_cascade_));
    CEMux I__761 (
            .O(N__4320),
            .I(N__4316));
    CEMux I__760 (
            .O(N__4319),
            .I(N__4312));
    LocalMux I__759 (
            .O(N__4316),
            .I(N__4308));
    CEMux I__758 (
            .O(N__4315),
            .I(N__4305));
    LocalMux I__757 (
            .O(N__4312),
            .I(N__4302));
    CEMux I__756 (
            .O(N__4311),
            .I(N__4299));
    Span4Mux_h I__755 (
            .O(N__4308),
            .I(N__4295));
    LocalMux I__754 (
            .O(N__4305),
            .I(N__4292));
    Span4Mux_h I__753 (
            .O(N__4302),
            .I(N__4289));
    LocalMux I__752 (
            .O(N__4299),
            .I(N__4286));
    InMux I__751 (
            .O(N__4298),
            .I(N__4283));
    Odrv4 I__750 (
            .O(N__4295),
            .I(n1507));
    Odrv4 I__749 (
            .O(N__4292),
            .I(n1507));
    Odrv4 I__748 (
            .O(N__4289),
            .I(n1507));
    Odrv12 I__747 (
            .O(N__4286),
            .I(n1507));
    LocalMux I__746 (
            .O(N__4283),
            .I(n1507));
    InMux I__745 (
            .O(N__4272),
            .I(N__4266));
    InMux I__744 (
            .O(N__4271),
            .I(N__4266));
    LocalMux I__743 (
            .O(N__4266),
            .I(n104));
    InMux I__742 (
            .O(N__4263),
            .I(N__4254));
    InMux I__741 (
            .O(N__4262),
            .I(N__4254));
    InMux I__740 (
            .O(N__4261),
            .I(N__4254));
    LocalMux I__739 (
            .O(N__4254),
            .I(N__4251));
    Odrv12 I__738 (
            .O(N__4251),
            .I(n15));
    CascadeMux I__737 (
            .O(N__4248),
            .I(N__4242));
    InMux I__736 (
            .O(N__4247),
            .I(N__4235));
    InMux I__735 (
            .O(N__4246),
            .I(N__4235));
    InMux I__734 (
            .O(N__4245),
            .I(N__4226));
    InMux I__733 (
            .O(N__4242),
            .I(N__4226));
    InMux I__732 (
            .O(N__4241),
            .I(N__4226));
    InMux I__731 (
            .O(N__4240),
            .I(N__4226));
    LocalMux I__730 (
            .O(N__4235),
            .I(N__4223));
    LocalMux I__729 (
            .O(N__4226),
            .I(ID_READOUT_FSM_state_1));
    Odrv4 I__728 (
            .O(N__4223),
            .I(ID_READOUT_FSM_state_1));
    InMux I__727 (
            .O(N__4218),
            .I(N__4214));
    CascadeMux I__726 (
            .O(N__4217),
            .I(N__4210));
    LocalMux I__725 (
            .O(N__4214),
            .I(N__4204));
    InMux I__724 (
            .O(N__4213),
            .I(N__4195));
    InMux I__723 (
            .O(N__4210),
            .I(N__4195));
    InMux I__722 (
            .O(N__4209),
            .I(N__4195));
    InMux I__721 (
            .O(N__4208),
            .I(N__4195));
    InMux I__720 (
            .O(N__4207),
            .I(N__4192));
    Odrv4 I__719 (
            .O(N__4204),
            .I(ID_READOUT_FSM_state_0));
    LocalMux I__718 (
            .O(N__4195),
            .I(ID_READOUT_FSM_state_0));
    LocalMux I__717 (
            .O(N__4192),
            .I(ID_READOUT_FSM_state_0));
    InMux I__716 (
            .O(N__4185),
            .I(N__4179));
    InMux I__715 (
            .O(N__4184),
            .I(N__4179));
    LocalMux I__714 (
            .O(N__4179),
            .I(n2414));
    InMux I__713 (
            .O(N__4176),
            .I(N__4172));
    InMux I__712 (
            .O(N__4175),
            .I(N__4169));
    LocalMux I__711 (
            .O(N__4172),
            .I(delay_counter_22));
    LocalMux I__710 (
            .O(N__4169),
            .I(delay_counter_22));
    InMux I__709 (
            .O(N__4164),
            .I(N__4160));
    InMux I__708 (
            .O(N__4163),
            .I(N__4157));
    LocalMux I__707 (
            .O(N__4160),
            .I(delay_counter_30));
    LocalMux I__706 (
            .O(N__4157),
            .I(delay_counter_30));
    CascadeMux I__705 (
            .O(N__4152),
            .I(N__4148));
    InMux I__704 (
            .O(N__4151),
            .I(N__4145));
    InMux I__703 (
            .O(N__4148),
            .I(N__4142));
    LocalMux I__702 (
            .O(N__4145),
            .I(delay_counter_26));
    LocalMux I__701 (
            .O(N__4142),
            .I(delay_counter_26));
    InMux I__700 (
            .O(N__4137),
            .I(N__4133));
    InMux I__699 (
            .O(N__4136),
            .I(N__4130));
    LocalMux I__698 (
            .O(N__4133),
            .I(delay_counter_28));
    LocalMux I__697 (
            .O(N__4130),
            .I(delay_counter_28));
    InMux I__696 (
            .O(N__4125),
            .I(N__4122));
    LocalMux I__695 (
            .O(N__4122),
            .I(N__4119));
    Odrv4 I__694 (
            .O(N__4119),
            .I(n24));
    CascadeMux I__693 (
            .O(N__4116),
            .I(\eeprom.i2c.n10_adj_381_cascade_ ));
    InMux I__692 (
            .O(N__4113),
            .I(N__4109));
    InMux I__691 (
            .O(N__4112),
            .I(N__4106));
    LocalMux I__690 (
            .O(N__4109),
            .I(\eeprom.delay_counter_12 ));
    LocalMux I__689 (
            .O(N__4106),
            .I(\eeprom.delay_counter_12 ));
    InMux I__688 (
            .O(N__4101),
            .I(N__4097));
    InMux I__687 (
            .O(N__4100),
            .I(N__4094));
    LocalMux I__686 (
            .O(N__4097),
            .I(\eeprom.delay_counter_10 ));
    LocalMux I__685 (
            .O(N__4094),
            .I(\eeprom.delay_counter_10 ));
    CascadeMux I__684 (
            .O(N__4089),
            .I(N__4085));
    InMux I__683 (
            .O(N__4088),
            .I(N__4082));
    InMux I__682 (
            .O(N__4085),
            .I(N__4079));
    LocalMux I__681 (
            .O(N__4082),
            .I(\eeprom.delay_counter_8 ));
    LocalMux I__680 (
            .O(N__4079),
            .I(\eeprom.delay_counter_8 ));
    InMux I__679 (
            .O(N__4074),
            .I(N__4070));
    InMux I__678 (
            .O(N__4073),
            .I(N__4067));
    LocalMux I__677 (
            .O(N__4070),
            .I(\eeprom.delay_counter_6 ));
    LocalMux I__676 (
            .O(N__4067),
            .I(\eeprom.delay_counter_6 ));
    CascadeMux I__675 (
            .O(N__4062),
            .I(N__4059));
    InMux I__674 (
            .O(N__4059),
            .I(N__4056));
    LocalMux I__673 (
            .O(N__4056),
            .I(N__4053));
    Span4Mux_v I__672 (
            .O(N__4053),
            .I(N__4050));
    Odrv4 I__671 (
            .O(N__4050),
            .I(\eeprom.n28 ));
    InMux I__670 (
            .O(N__4047),
            .I(N__4043));
    InMux I__669 (
            .O(N__4046),
            .I(N__4040));
    LocalMux I__668 (
            .O(N__4043),
            .I(N__4037));
    LocalMux I__667 (
            .O(N__4040),
            .I(delay_counter_29));
    Odrv4 I__666 (
            .O(N__4037),
            .I(delay_counter_29));
    InMux I__665 (
            .O(N__4032),
            .I(N__4028));
    InMux I__664 (
            .O(N__4031),
            .I(N__4025));
    LocalMux I__663 (
            .O(N__4028),
            .I(delay_counter_18));
    LocalMux I__662 (
            .O(N__4025),
            .I(delay_counter_18));
    CascadeMux I__661 (
            .O(N__4020),
            .I(n36_cascade_));
    InMux I__660 (
            .O(N__4017),
            .I(N__4013));
    InMux I__659 (
            .O(N__4016),
            .I(N__4010));
    LocalMux I__658 (
            .O(N__4013),
            .I(N__4007));
    LocalMux I__657 (
            .O(N__4010),
            .I(delay_counter_24));
    Odrv4 I__656 (
            .O(N__4007),
            .I(delay_counter_24));
    InMux I__655 (
            .O(N__4002),
            .I(N__3998));
    InMux I__654 (
            .O(N__4001),
            .I(N__3995));
    LocalMux I__653 (
            .O(N__3998),
            .I(N__3992));
    LocalMux I__652 (
            .O(N__3995),
            .I(delay_counter_27));
    Odrv4 I__651 (
            .O(N__3992),
            .I(delay_counter_27));
    CascadeMux I__650 (
            .O(N__3987),
            .I(n22_cascade_));
    InMux I__649 (
            .O(N__3984),
            .I(N__3980));
    InMux I__648 (
            .O(N__3983),
            .I(N__3977));
    LocalMux I__647 (
            .O(N__3980),
            .I(delay_counter_23));
    LocalMux I__646 (
            .O(N__3977),
            .I(delay_counter_23));
    InMux I__645 (
            .O(N__3972),
            .I(N__3969));
    LocalMux I__644 (
            .O(N__3969),
            .I(N__3965));
    InMux I__643 (
            .O(N__3968),
            .I(N__3962));
    Span4Mux_h I__642 (
            .O(N__3965),
            .I(N__3959));
    LocalMux I__641 (
            .O(N__3962),
            .I(delay_counter_31));
    Odrv4 I__640 (
            .O(N__3959),
            .I(delay_counter_31));
    CascadeMux I__639 (
            .O(N__3954),
            .I(n25_cascade_));
    CascadeMux I__638 (
            .O(N__3951),
            .I(n104_cascade_));
    SRMux I__637 (
            .O(N__3948),
            .I(N__3945));
    LocalMux I__636 (
            .O(N__3945),
            .I(N__3942));
    Span4Mux_h I__635 (
            .O(N__3942),
            .I(N__3936));
    SRMux I__634 (
            .O(N__3941),
            .I(N__3933));
    SRMux I__633 (
            .O(N__3940),
            .I(N__3930));
    SRMux I__632 (
            .O(N__3939),
            .I(N__3927));
    Odrv4 I__631 (
            .O(N__3936),
            .I(n1891));
    LocalMux I__630 (
            .O(N__3933),
            .I(n1891));
    LocalMux I__629 (
            .O(N__3930),
            .I(n1891));
    LocalMux I__628 (
            .O(N__3927),
            .I(n1891));
    InMux I__627 (
            .O(N__3918),
            .I(N__3914));
    InMux I__626 (
            .O(N__3917),
            .I(N__3911));
    LocalMux I__625 (
            .O(N__3914),
            .I(delay_counter_21));
    LocalMux I__624 (
            .O(N__3911),
            .I(delay_counter_21));
    InMux I__623 (
            .O(N__3906),
            .I(N__3902));
    InMux I__622 (
            .O(N__3905),
            .I(N__3899));
    LocalMux I__621 (
            .O(N__3902),
            .I(delay_counter_25));
    LocalMux I__620 (
            .O(N__3899),
            .I(delay_counter_25));
    CascadeMux I__619 (
            .O(N__3894),
            .I(N__3891));
    InMux I__618 (
            .O(N__3891),
            .I(N__3887));
    InMux I__617 (
            .O(N__3890),
            .I(N__3884));
    LocalMux I__616 (
            .O(N__3887),
            .I(N__3881));
    LocalMux I__615 (
            .O(N__3884),
            .I(delay_counter_20));
    Odrv4 I__614 (
            .O(N__3881),
            .I(delay_counter_20));
    InMux I__613 (
            .O(N__3876),
            .I(N__3872));
    InMux I__612 (
            .O(N__3875),
            .I(N__3869));
    LocalMux I__611 (
            .O(N__3872),
            .I(delay_counter_19));
    LocalMux I__610 (
            .O(N__3869),
            .I(delay_counter_19));
    InMux I__609 (
            .O(N__3864),
            .I(N__3861));
    LocalMux I__608 (
            .O(N__3861),
            .I(n23));
    InMux I__607 (
            .O(N__3858),
            .I(N__3855));
    LocalMux I__606 (
            .O(N__3855),
            .I(n20));
    CascadeMux I__605 (
            .O(N__3852),
            .I(n20_cascade_));
    InMux I__604 (
            .O(N__3849),
            .I(N__3843));
    InMux I__603 (
            .O(N__3848),
            .I(N__3843));
    LocalMux I__602 (
            .O(N__3843),
            .I(N__3840));
    Odrv4 I__601 (
            .O(N__3840),
            .I(n6));
    CascadeMux I__600 (
            .O(N__3837),
            .I(n805_cascade_));
    CEMux I__599 (
            .O(N__3834),
            .I(N__3831));
    LocalMux I__598 (
            .O(N__3831),
            .I(N__3827));
    CEMux I__597 (
            .O(N__3830),
            .I(N__3824));
    Span4Mux_v I__596 (
            .O(N__3827),
            .I(N__3819));
    LocalMux I__595 (
            .O(N__3824),
            .I(N__3819));
    Span4Mux_v I__594 (
            .O(N__3819),
            .I(N__3816));
    Span4Mux_v I__593 (
            .O(N__3816),
            .I(N__3813));
    Odrv4 I__592 (
            .O(N__3813),
            .I(\eeprom.n1796 ));
    CascadeMux I__591 (
            .O(N__3810),
            .I(\eeprom.n1796_cascade_ ));
    SRMux I__590 (
            .O(N__3807),
            .I(N__3803));
    SRMux I__589 (
            .O(N__3806),
            .I(N__3800));
    LocalMux I__588 (
            .O(N__3803),
            .I(N__3797));
    LocalMux I__587 (
            .O(N__3800),
            .I(N__3794));
    Span4Mux_h I__586 (
            .O(N__3797),
            .I(N__3791));
    Sp12to4 I__585 (
            .O(N__3794),
            .I(N__3788));
    Odrv4 I__584 (
            .O(N__3791),
            .I(\eeprom.n1929 ));
    Odrv12 I__583 (
            .O(N__3788),
            .I(\eeprom.n1929 ));
    InMux I__582 (
            .O(N__3783),
            .I(N__3777));
    InMux I__581 (
            .O(N__3782),
            .I(N__3777));
    LocalMux I__580 (
            .O(N__3777),
            .I(data_ready));
    InMux I__579 (
            .O(N__3774),
            .I(N__3770));
    InMux I__578 (
            .O(N__3773),
            .I(N__3767));
    LocalMux I__577 (
            .O(N__3770),
            .I(delay_counter_16));
    LocalMux I__576 (
            .O(N__3767),
            .I(delay_counter_16));
    InMux I__575 (
            .O(N__3762),
            .I(N__3758));
    InMux I__574 (
            .O(N__3761),
            .I(N__3755));
    LocalMux I__573 (
            .O(N__3758),
            .I(delay_counter_17));
    LocalMux I__572 (
            .O(N__3755),
            .I(delay_counter_17));
    CascadeMux I__571 (
            .O(N__3750),
            .I(N__3746));
    InMux I__570 (
            .O(N__3749),
            .I(N__3743));
    InMux I__569 (
            .O(N__3746),
            .I(N__3740));
    LocalMux I__568 (
            .O(N__3743),
            .I(delay_counter_15));
    LocalMux I__567 (
            .O(N__3740),
            .I(delay_counter_15));
    InMux I__566 (
            .O(N__3735),
            .I(N__3732));
    LocalMux I__565 (
            .O(N__3732),
            .I(N__3729));
    Odrv4 I__564 (
            .O(N__3729),
            .I(n3069));
    InMux I__563 (
            .O(N__3726),
            .I(bfn_21_14_0_));
    InMux I__562 (
            .O(N__3723),
            .I(N__3719));
    InMux I__561 (
            .O(N__3722),
            .I(N__3716));
    LocalMux I__560 (
            .O(N__3719),
            .I(N__3713));
    LocalMux I__559 (
            .O(N__3716),
            .I(\eeprom.delay_counter_9 ));
    Odrv4 I__558 (
            .O(N__3713),
            .I(\eeprom.delay_counter_9 ));
    InMux I__557 (
            .O(N__3708),
            .I(\eeprom.n2864 ));
    InMux I__556 (
            .O(N__3705),
            .I(\eeprom.n2865 ));
    InMux I__555 (
            .O(N__3702),
            .I(N__3698));
    InMux I__554 (
            .O(N__3701),
            .I(N__3695));
    LocalMux I__553 (
            .O(N__3698),
            .I(N__3692));
    LocalMux I__552 (
            .O(N__3695),
            .I(\eeprom.delay_counter_11 ));
    Odrv4 I__551 (
            .O(N__3692),
            .I(\eeprom.delay_counter_11 ));
    InMux I__550 (
            .O(N__3687),
            .I(\eeprom.n2866 ));
    InMux I__549 (
            .O(N__3684),
            .I(\eeprom.n2867 ));
    InMux I__548 (
            .O(N__3681),
            .I(N__3677));
    InMux I__547 (
            .O(N__3680),
            .I(N__3674));
    LocalMux I__546 (
            .O(N__3677),
            .I(N__3671));
    LocalMux I__545 (
            .O(N__3674),
            .I(\eeprom.delay_counter_13 ));
    Odrv4 I__544 (
            .O(N__3671),
            .I(\eeprom.delay_counter_13 ));
    InMux I__543 (
            .O(N__3666),
            .I(\eeprom.n2868 ));
    InMux I__542 (
            .O(N__3663),
            .I(N__3659));
    InMux I__541 (
            .O(N__3662),
            .I(N__3656));
    LocalMux I__540 (
            .O(N__3659),
            .I(N__3653));
    LocalMux I__539 (
            .O(N__3656),
            .I(\eeprom.delay_counter_14 ));
    Odrv4 I__538 (
            .O(N__3653),
            .I(\eeprom.delay_counter_14 ));
    InMux I__537 (
            .O(N__3648),
            .I(\eeprom.n2869 ));
    CascadeMux I__536 (
            .O(N__3645),
            .I(N__3636));
    CascadeMux I__535 (
            .O(N__3644),
            .I(N__3633));
    CascadeMux I__534 (
            .O(N__3643),
            .I(N__3630));
    CascadeMux I__533 (
            .O(N__3642),
            .I(N__3626));
    CascadeMux I__532 (
            .O(N__3641),
            .I(N__3623));
    CascadeMux I__531 (
            .O(N__3640),
            .I(N__3620));
    CascadeMux I__530 (
            .O(N__3639),
            .I(N__3617));
    InMux I__529 (
            .O(N__3636),
            .I(N__3602));
    InMux I__528 (
            .O(N__3633),
            .I(N__3602));
    InMux I__527 (
            .O(N__3630),
            .I(N__3602));
    InMux I__526 (
            .O(N__3629),
            .I(N__3591));
    InMux I__525 (
            .O(N__3626),
            .I(N__3591));
    InMux I__524 (
            .O(N__3623),
            .I(N__3591));
    InMux I__523 (
            .O(N__3620),
            .I(N__3591));
    InMux I__522 (
            .O(N__3617),
            .I(N__3591));
    CascadeMux I__521 (
            .O(N__3616),
            .I(N__3588));
    CascadeMux I__520 (
            .O(N__3615),
            .I(N__3585));
    CascadeMux I__519 (
            .O(N__3614),
            .I(N__3582));
    CascadeMux I__518 (
            .O(N__3613),
            .I(N__3579));
    CascadeMux I__517 (
            .O(N__3612),
            .I(N__3576));
    CascadeMux I__516 (
            .O(N__3611),
            .I(N__3573));
    CascadeMux I__515 (
            .O(N__3610),
            .I(N__3570));
    CascadeMux I__514 (
            .O(N__3609),
            .I(N__3567));
    LocalMux I__513 (
            .O(N__3602),
            .I(N__3562));
    LocalMux I__512 (
            .O(N__3591),
            .I(N__3562));
    InMux I__511 (
            .O(N__3588),
            .I(N__3553));
    InMux I__510 (
            .O(N__3585),
            .I(N__3553));
    InMux I__509 (
            .O(N__3582),
            .I(N__3553));
    InMux I__508 (
            .O(N__3579),
            .I(N__3553));
    InMux I__507 (
            .O(N__3576),
            .I(N__3544));
    InMux I__506 (
            .O(N__3573),
            .I(N__3544));
    InMux I__505 (
            .O(N__3570),
            .I(N__3544));
    InMux I__504 (
            .O(N__3567),
            .I(N__3544));
    Odrv12 I__503 (
            .O(N__3562),
            .I(\eeprom.n730 ));
    LocalMux I__502 (
            .O(N__3553),
            .I(\eeprom.n730 ));
    LocalMux I__501 (
            .O(N__3544),
            .I(\eeprom.n730 ));
    InMux I__500 (
            .O(N__3537),
            .I(\eeprom.n2870 ));
    InMux I__499 (
            .O(N__3534),
            .I(N__3530));
    InMux I__498 (
            .O(N__3533),
            .I(N__3527));
    LocalMux I__497 (
            .O(N__3530),
            .I(N__3524));
    LocalMux I__496 (
            .O(N__3527),
            .I(\eeprom.delay_counter_15 ));
    Odrv4 I__495 (
            .O(N__3524),
            .I(\eeprom.delay_counter_15 ));
    CascadeMux I__494 (
            .O(N__3519),
            .I(N__3515));
    InMux I__493 (
            .O(N__3518),
            .I(N__3512));
    InMux I__492 (
            .O(N__3515),
            .I(N__3509));
    LocalMux I__491 (
            .O(N__3512),
            .I(\eeprom.delay_counter_0 ));
    LocalMux I__490 (
            .O(N__3509),
            .I(\eeprom.delay_counter_0 ));
    CascadeMux I__489 (
            .O(N__3504),
            .I(N__3500));
    InMux I__488 (
            .O(N__3503),
            .I(N__3497));
    InMux I__487 (
            .O(N__3500),
            .I(N__3494));
    LocalMux I__486 (
            .O(N__3497),
            .I(\eeprom.delay_counter_1 ));
    LocalMux I__485 (
            .O(N__3494),
            .I(\eeprom.delay_counter_1 ));
    InMux I__484 (
            .O(N__3489),
            .I(\eeprom.n2856 ));
    InMux I__483 (
            .O(N__3486),
            .I(N__3482));
    InMux I__482 (
            .O(N__3485),
            .I(N__3479));
    LocalMux I__481 (
            .O(N__3482),
            .I(\eeprom.delay_counter_2 ));
    LocalMux I__480 (
            .O(N__3479),
            .I(\eeprom.delay_counter_2 ));
    InMux I__479 (
            .O(N__3474),
            .I(\eeprom.n2857 ));
    InMux I__478 (
            .O(N__3471),
            .I(N__3467));
    InMux I__477 (
            .O(N__3470),
            .I(N__3464));
    LocalMux I__476 (
            .O(N__3467),
            .I(\eeprom.delay_counter_3 ));
    LocalMux I__475 (
            .O(N__3464),
            .I(\eeprom.delay_counter_3 ));
    InMux I__474 (
            .O(N__3459),
            .I(\eeprom.n2858 ));
    InMux I__473 (
            .O(N__3456),
            .I(N__3452));
    InMux I__472 (
            .O(N__3455),
            .I(N__3449));
    LocalMux I__471 (
            .O(N__3452),
            .I(\eeprom.delay_counter_4 ));
    LocalMux I__470 (
            .O(N__3449),
            .I(\eeprom.delay_counter_4 ));
    InMux I__469 (
            .O(N__3444),
            .I(\eeprom.n2859 ));
    CascadeMux I__468 (
            .O(N__3441),
            .I(N__3437));
    InMux I__467 (
            .O(N__3440),
            .I(N__3434));
    InMux I__466 (
            .O(N__3437),
            .I(N__3431));
    LocalMux I__465 (
            .O(N__3434),
            .I(\eeprom.delay_counter_5 ));
    LocalMux I__464 (
            .O(N__3431),
            .I(\eeprom.delay_counter_5 ));
    InMux I__463 (
            .O(N__3426),
            .I(\eeprom.n2860 ));
    InMux I__462 (
            .O(N__3423),
            .I(\eeprom.n2861 ));
    InMux I__461 (
            .O(N__3420),
            .I(N__3416));
    InMux I__460 (
            .O(N__3419),
            .I(N__3413));
    LocalMux I__459 (
            .O(N__3416),
            .I(\eeprom.delay_counter_7 ));
    LocalMux I__458 (
            .O(N__3413),
            .I(\eeprom.delay_counter_7 ));
    InMux I__457 (
            .O(N__3408),
            .I(\eeprom.n2862 ));
    InMux I__456 (
            .O(N__3405),
            .I(n2845));
    InMux I__455 (
            .O(N__3402),
            .I(n2846));
    InMux I__454 (
            .O(N__3399),
            .I(n2847));
    InMux I__453 (
            .O(N__3396),
            .I(n2848));
    CascadeMux I__452 (
            .O(N__3393),
            .I(\eeprom.n1704_cascade_ ));
    InMux I__451 (
            .O(N__3390),
            .I(N__3387));
    LocalMux I__450 (
            .O(N__3387),
            .I(\eeprom.n25 ));
    InMux I__449 (
            .O(N__3384),
            .I(N__3381));
    LocalMux I__448 (
            .O(N__3381),
            .I(\eeprom.n26_adj_385 ));
    InMux I__447 (
            .O(N__3378),
            .I(N__3375));
    LocalMux I__446 (
            .O(N__3375),
            .I(\eeprom.n27 ));
    InMux I__445 (
            .O(N__3372),
            .I(n2836));
    InMux I__444 (
            .O(N__3369),
            .I(n2837));
    InMux I__443 (
            .O(N__3366),
            .I(n2838));
    InMux I__442 (
            .O(N__3363),
            .I(n2839));
    InMux I__441 (
            .O(N__3360),
            .I(n2840));
    InMux I__440 (
            .O(N__3357),
            .I(bfn_20_20_0_));
    InMux I__439 (
            .O(N__3354),
            .I(n2842));
    InMux I__438 (
            .O(N__3351),
            .I(n2843));
    InMux I__437 (
            .O(N__3348),
            .I(n2844));
    InMux I__436 (
            .O(N__3345),
            .I(N__3341));
    InMux I__435 (
            .O(N__3344),
            .I(N__3338));
    LocalMux I__434 (
            .O(N__3341),
            .I(N__3335));
    LocalMux I__433 (
            .O(N__3338),
            .I(delay_counter_10));
    Odrv4 I__432 (
            .O(N__3335),
            .I(delay_counter_10));
    InMux I__431 (
            .O(N__3330),
            .I(n2827));
    InMux I__430 (
            .O(N__3327),
            .I(N__3323));
    InMux I__429 (
            .O(N__3326),
            .I(N__3320));
    LocalMux I__428 (
            .O(N__3323),
            .I(N__3317));
    LocalMux I__427 (
            .O(N__3320),
            .I(delay_counter_11));
    Odrv4 I__426 (
            .O(N__3317),
            .I(delay_counter_11));
    InMux I__425 (
            .O(N__3312),
            .I(n2828));
    InMux I__424 (
            .O(N__3309),
            .I(N__3305));
    InMux I__423 (
            .O(N__3308),
            .I(N__3302));
    LocalMux I__422 (
            .O(N__3305),
            .I(N__3299));
    LocalMux I__421 (
            .O(N__3302),
            .I(delay_counter_12));
    Odrv4 I__420 (
            .O(N__3299),
            .I(delay_counter_12));
    InMux I__419 (
            .O(N__3294),
            .I(n2829));
    InMux I__418 (
            .O(N__3291),
            .I(N__3287));
    InMux I__417 (
            .O(N__3290),
            .I(N__3284));
    LocalMux I__416 (
            .O(N__3287),
            .I(N__3281));
    LocalMux I__415 (
            .O(N__3284),
            .I(delay_counter_13));
    Odrv4 I__414 (
            .O(N__3281),
            .I(delay_counter_13));
    InMux I__413 (
            .O(N__3276),
            .I(n2830));
    InMux I__412 (
            .O(N__3273),
            .I(N__3269));
    InMux I__411 (
            .O(N__3272),
            .I(N__3266));
    LocalMux I__410 (
            .O(N__3269),
            .I(N__3263));
    LocalMux I__409 (
            .O(N__3266),
            .I(delay_counter_14));
    Odrv4 I__408 (
            .O(N__3263),
            .I(delay_counter_14));
    InMux I__407 (
            .O(N__3258),
            .I(n2831));
    InMux I__406 (
            .O(N__3255),
            .I(n2832));
    InMux I__405 (
            .O(N__3252),
            .I(bfn_20_19_0_));
    InMux I__404 (
            .O(N__3249),
            .I(n2834));
    InMux I__403 (
            .O(N__3246),
            .I(n2835));
    InMux I__402 (
            .O(N__3243),
            .I(N__3239));
    InMux I__401 (
            .O(N__3242),
            .I(N__3236));
    LocalMux I__400 (
            .O(N__3239),
            .I(delay_counter_2));
    LocalMux I__399 (
            .O(N__3236),
            .I(delay_counter_2));
    InMux I__398 (
            .O(N__3231),
            .I(n2819));
    CascadeMux I__397 (
            .O(N__3228),
            .I(N__3224));
    InMux I__396 (
            .O(N__3227),
            .I(N__3221));
    InMux I__395 (
            .O(N__3224),
            .I(N__3218));
    LocalMux I__394 (
            .O(N__3221),
            .I(delay_counter_3));
    LocalMux I__393 (
            .O(N__3218),
            .I(delay_counter_3));
    InMux I__392 (
            .O(N__3213),
            .I(n2820));
    InMux I__391 (
            .O(N__3210),
            .I(N__3206));
    InMux I__390 (
            .O(N__3209),
            .I(N__3203));
    LocalMux I__389 (
            .O(N__3206),
            .I(delay_counter_4));
    LocalMux I__388 (
            .O(N__3203),
            .I(delay_counter_4));
    InMux I__387 (
            .O(N__3198),
            .I(n2821));
    InMux I__386 (
            .O(N__3195),
            .I(N__3191));
    InMux I__385 (
            .O(N__3194),
            .I(N__3188));
    LocalMux I__384 (
            .O(N__3191),
            .I(delay_counter_5));
    LocalMux I__383 (
            .O(N__3188),
            .I(delay_counter_5));
    InMux I__382 (
            .O(N__3183),
            .I(n2822));
    InMux I__381 (
            .O(N__3180),
            .I(N__3176));
    InMux I__380 (
            .O(N__3179),
            .I(N__3173));
    LocalMux I__379 (
            .O(N__3176),
            .I(delay_counter_6));
    LocalMux I__378 (
            .O(N__3173),
            .I(delay_counter_6));
    InMux I__377 (
            .O(N__3168),
            .I(n2823));
    InMux I__376 (
            .O(N__3165),
            .I(N__3161));
    InMux I__375 (
            .O(N__3164),
            .I(N__3158));
    LocalMux I__374 (
            .O(N__3161),
            .I(delay_counter_7));
    LocalMux I__373 (
            .O(N__3158),
            .I(delay_counter_7));
    InMux I__372 (
            .O(N__3153),
            .I(n2824));
    InMux I__371 (
            .O(N__3150),
            .I(N__3146));
    InMux I__370 (
            .O(N__3149),
            .I(N__3143));
    LocalMux I__369 (
            .O(N__3146),
            .I(N__3140));
    LocalMux I__368 (
            .O(N__3143),
            .I(delay_counter_8));
    Odrv4 I__367 (
            .O(N__3140),
            .I(delay_counter_8));
    InMux I__366 (
            .O(N__3135),
            .I(bfn_20_18_0_));
    InMux I__365 (
            .O(N__3132),
            .I(N__3128));
    InMux I__364 (
            .O(N__3131),
            .I(N__3125));
    LocalMux I__363 (
            .O(N__3128),
            .I(N__3122));
    LocalMux I__362 (
            .O(N__3125),
            .I(delay_counter_9));
    Odrv4 I__361 (
            .O(N__3122),
            .I(delay_counter_9));
    InMux I__360 (
            .O(N__3117),
            .I(n2826));
    InMux I__359 (
            .O(N__3114),
            .I(N__3111));
    LocalMux I__358 (
            .O(N__3111),
            .I(n3119));
    InMux I__357 (
            .O(N__3108),
            .I(N__3101));
    InMux I__356 (
            .O(N__3107),
            .I(N__3101));
    InMux I__355 (
            .O(N__3106),
            .I(N__3098));
    LocalMux I__354 (
            .O(N__3101),
            .I(blink_counter_21));
    LocalMux I__353 (
            .O(N__3098),
            .I(blink_counter_21));
    InMux I__352 (
            .O(N__3093),
            .I(N__3084));
    InMux I__351 (
            .O(N__3092),
            .I(N__3084));
    InMux I__350 (
            .O(N__3091),
            .I(N__3084));
    LocalMux I__349 (
            .O(N__3084),
            .I(blink_counter_24));
    CascadeMux I__348 (
            .O(N__3081),
            .I(N__3077));
    CascadeMux I__347 (
            .O(N__3080),
            .I(N__3074));
    InMux I__346 (
            .O(N__3077),
            .I(N__3068));
    InMux I__345 (
            .O(N__3074),
            .I(N__3068));
    InMux I__344 (
            .O(N__3073),
            .I(N__3065));
    LocalMux I__343 (
            .O(N__3068),
            .I(blink_counter_23));
    LocalMux I__342 (
            .O(N__3065),
            .I(blink_counter_23));
    InMux I__341 (
            .O(N__3060),
            .I(N__3053));
    InMux I__340 (
            .O(N__3059),
            .I(N__3053));
    InMux I__339 (
            .O(N__3058),
            .I(N__3050));
    LocalMux I__338 (
            .O(N__3053),
            .I(blink_counter_22));
    LocalMux I__337 (
            .O(N__3050),
            .I(blink_counter_22));
    InMux I__336 (
            .O(N__3045),
            .I(N__3042));
    LocalMux I__335 (
            .O(N__3042),
            .I(n3120));
    CascadeMux I__334 (
            .O(N__3039),
            .I(n13_adj_391_cascade_));
    InMux I__333 (
            .O(N__3036),
            .I(N__3033));
    LocalMux I__332 (
            .O(N__3033),
            .I(n14));
    CascadeMux I__331 (
            .O(N__3030),
            .I(n18_cascade_));
    CascadeMux I__330 (
            .O(N__3027),
            .I(n3114_cascade_));
    CascadeMux I__329 (
            .O(N__3024),
            .I(N__3020));
    InMux I__328 (
            .O(N__3023),
            .I(N__3017));
    InMux I__327 (
            .O(N__3020),
            .I(N__3014));
    LocalMux I__326 (
            .O(N__3017),
            .I(delay_counter_0));
    LocalMux I__325 (
            .O(N__3014),
            .I(delay_counter_0));
    InMux I__324 (
            .O(N__3009),
            .I(bfn_20_17_0_));
    InMux I__323 (
            .O(N__3006),
            .I(N__3002));
    InMux I__322 (
            .O(N__3005),
            .I(N__2999));
    LocalMux I__321 (
            .O(N__3002),
            .I(delay_counter_1));
    LocalMux I__320 (
            .O(N__2999),
            .I(delay_counter_1));
    InMux I__319 (
            .O(N__2994),
            .I(n2818));
    InMux I__318 (
            .O(N__2991),
            .I(N__2988));
    LocalMux I__317 (
            .O(N__2988),
            .I(n9));
    InMux I__316 (
            .O(N__2985),
            .I(n2892));
    InMux I__315 (
            .O(N__2982),
            .I(N__2979));
    LocalMux I__314 (
            .O(N__2979),
            .I(n8));
    InMux I__313 (
            .O(N__2976),
            .I(n2893));
    InMux I__312 (
            .O(N__2973),
            .I(N__2970));
    LocalMux I__311 (
            .O(N__2970),
            .I(n7));
    InMux I__310 (
            .O(N__2967),
            .I(n2894));
    InMux I__309 (
            .O(N__2964),
            .I(N__2961));
    LocalMux I__308 (
            .O(N__2961),
            .I(n6_adj_392));
    InMux I__307 (
            .O(N__2958),
            .I(n2895));
    InMux I__306 (
            .O(N__2955),
            .I(n2896));
    InMux I__305 (
            .O(N__2952),
            .I(n2897));
    InMux I__304 (
            .O(N__2949),
            .I(n2898));
    InMux I__303 (
            .O(N__2946),
            .I(bfn_17_20_0_));
    InMux I__302 (
            .O(N__2943),
            .I(n2900));
    InMux I__301 (
            .O(N__2940),
            .I(N__2936));
    InMux I__300 (
            .O(N__2939),
            .I(N__2933));
    LocalMux I__299 (
            .O(N__2936),
            .I(blink_counter_25));
    LocalMux I__298 (
            .O(N__2933),
            .I(blink_counter_25));
    InMux I__297 (
            .O(N__2928),
            .I(N__2925));
    LocalMux I__296 (
            .O(N__2925),
            .I(n17));
    InMux I__295 (
            .O(N__2922),
            .I(n2884));
    InMux I__294 (
            .O(N__2919),
            .I(N__2916));
    LocalMux I__293 (
            .O(N__2916),
            .I(n16));
    InMux I__292 (
            .O(N__2913),
            .I(n2885));
    InMux I__291 (
            .O(N__2910),
            .I(N__2907));
    LocalMux I__290 (
            .O(N__2907),
            .I(n15_adj_396));
    InMux I__289 (
            .O(N__2904),
            .I(n2886));
    InMux I__288 (
            .O(N__2901),
            .I(N__2898));
    LocalMux I__287 (
            .O(N__2898),
            .I(n14_adj_395));
    InMux I__286 (
            .O(N__2895),
            .I(n2887));
    InMux I__285 (
            .O(N__2892),
            .I(N__2889));
    LocalMux I__284 (
            .O(N__2889),
            .I(n13_adj_394));
    InMux I__283 (
            .O(N__2886),
            .I(n2888));
    InMux I__282 (
            .O(N__2883),
            .I(N__2880));
    LocalMux I__281 (
            .O(N__2880),
            .I(n12_adj_393));
    InMux I__280 (
            .O(N__2877),
            .I(n2889));
    InMux I__279 (
            .O(N__2874),
            .I(N__2871));
    LocalMux I__278 (
            .O(N__2871),
            .I(n11));
    InMux I__277 (
            .O(N__2868),
            .I(n2890));
    InMux I__276 (
            .O(N__2865),
            .I(N__2862));
    LocalMux I__275 (
            .O(N__2862),
            .I(n10));
    InMux I__274 (
            .O(N__2859),
            .I(bfn_17_19_0_));
    InMux I__273 (
            .O(N__2856),
            .I(N__2853));
    LocalMux I__272 (
            .O(N__2853),
            .I(n26));
    InMux I__271 (
            .O(N__2850),
            .I(bfn_17_17_0_));
    InMux I__270 (
            .O(N__2847),
            .I(N__2844));
    LocalMux I__269 (
            .O(N__2844),
            .I(n25_adj_402));
    InMux I__268 (
            .O(N__2841),
            .I(n2876));
    InMux I__267 (
            .O(N__2838),
            .I(N__2835));
    LocalMux I__266 (
            .O(N__2835),
            .I(n24_adj_401));
    InMux I__265 (
            .O(N__2832),
            .I(n2877));
    InMux I__264 (
            .O(N__2829),
            .I(N__2826));
    LocalMux I__263 (
            .O(N__2826),
            .I(n23_adj_400));
    InMux I__262 (
            .O(N__2823),
            .I(n2878));
    InMux I__261 (
            .O(N__2820),
            .I(N__2817));
    LocalMux I__260 (
            .O(N__2817),
            .I(n22_adj_399));
    InMux I__259 (
            .O(N__2814),
            .I(n2879));
    InMux I__258 (
            .O(N__2811),
            .I(N__2808));
    LocalMux I__257 (
            .O(N__2808),
            .I(n21));
    InMux I__256 (
            .O(N__2805),
            .I(n2880));
    InMux I__255 (
            .O(N__2802),
            .I(N__2799));
    LocalMux I__254 (
            .O(N__2799),
            .I(n20_adj_398));
    InMux I__253 (
            .O(N__2796),
            .I(n2881));
    InMux I__252 (
            .O(N__2793),
            .I(N__2790));
    LocalMux I__251 (
            .O(N__2790),
            .I(n19));
    InMux I__250 (
            .O(N__2787),
            .I(n2882));
    InMux I__249 (
            .O(N__2784),
            .I(N__2781));
    LocalMux I__248 (
            .O(N__2781),
            .I(n18_adj_397));
    InMux I__247 (
            .O(N__2778),
            .I(bfn_17_18_0_));
    IoInMux I__246 (
            .O(N__2775),
            .I(N__2772));
    LocalMux I__245 (
            .O(N__2772),
            .I(N__2769));
    IoSpan4Mux I__244 (
            .O(N__2769),
            .I(N__2766));
    Sp12to4 I__243 (
            .O(N__2766),
            .I(N__2763));
    Span12Mux_v I__242 (
            .O(N__2763),
            .I(N__2760));
    Odrv12 I__241 (
            .O(N__2760),
            .I(LED_c));
    IoInMux I__240 (
            .O(N__2757),
            .I(N__2754));
    LocalMux I__239 (
            .O(N__2754),
            .I(N__2751));
    IoSpan4Mux I__238 (
            .O(N__2751),
            .I(N__2748));
    IoSpan4Mux I__237 (
            .O(N__2748),
            .I(N__2745));
    IoSpan4Mux I__236 (
            .O(N__2745),
            .I(N__2742));
    Odrv4 I__235 (
            .O(N__2742),
            .I(CLK_pad_gb_input));
    INV \INVeeprom.i2c.i2c_scl_enable_123C  (
            .O(\INVeeprom.i2c.i2c_scl_enable_123C_net ),
            .I(N__6478));
    INV \INVeeprom.i2c.sda_out_132C  (
            .O(\INVeeprom.i2c.sda_out_132C_net ),
            .I(N__6459));
    INV \INVeeprom.i2c.write_enable_131C  (
            .O(\INVeeprom.i2c.write_enable_131C_net ),
            .I(N__6436));
    defparam IN_MUX_bfv_26_14_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_26_14_0_ (
            .carryinitin(),
            .carryinitout(bfn_26_14_0_));
    defparam IN_MUX_bfv_27_13_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_27_13_0_ (
            .carryinitin(),
            .carryinitout(bfn_27_13_0_));
    defparam IN_MUX_bfv_21_13_0_.C_INIT=2'b00;
    ICE_CARRY_IN_MUX IN_MUX_bfv_21_13_0_ (
            .carryinitin(),
            .carryinitout(bfn_21_13_0_));
    defparam IN_MUX_bfv_21_14_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_21_14_0_ (
            .carryinitin(\eeprom.n2863 ),
            .carryinitout(bfn_21_14_0_));
    defparam IN_MUX_bfv_17_17_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_17_17_0_ (
            .carryinitin(),
            .carryinitout(bfn_17_17_0_));
    defparam IN_MUX_bfv_17_18_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_17_18_0_ (
            .carryinitin(n2883),
            .carryinitout(bfn_17_18_0_));
    defparam IN_MUX_bfv_17_19_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_17_19_0_ (
            .carryinitin(n2891),
            .carryinitout(bfn_17_19_0_));
    defparam IN_MUX_bfv_17_20_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_17_20_0_ (
            .carryinitin(n2899),
            .carryinitout(bfn_17_20_0_));
    defparam IN_MUX_bfv_20_17_0_.C_INIT=2'b01;
    ICE_CARRY_IN_MUX IN_MUX_bfv_20_17_0_ (
            .carryinitin(),
            .carryinitout(bfn_20_17_0_));
    defparam IN_MUX_bfv_20_18_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_20_18_0_ (
            .carryinitin(n2825),
            .carryinitout(bfn_20_18_0_));
    defparam IN_MUX_bfv_20_19_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_20_19_0_ (
            .carryinitin(n2833),
            .carryinitout(bfn_20_19_0_));
    defparam IN_MUX_bfv_20_20_0_.C_INIT=2'b10;
    ICE_CARRY_IN_MUX IN_MUX_bfv_20_20_0_ (
            .carryinitin(n2841),
            .carryinitout(bfn_20_20_0_));
    ICE_GB CLK_pad_gb (
            .USERSIGNALTOGLOBALBUFFER(N__2757),
            .GLOBALBUFFEROUTPUT(CLK_c));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam i2105_3_lut_LC_16_20_3.C_ON=1'b0;
    defparam i2105_3_lut_LC_16_20_3.SEQ_MODE=4'b0000;
    defparam i2105_3_lut_LC_16_20_3.LUT_INIT=16'b0001000110111011;
    LogicCell40 i2105_3_lut_LC_16_20_3 (
            .in0(N__2940),
            .in1(N__3114),
            .in2(_gnd_net_),
            .in3(N__3045),
            .lcout(LED_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i0_LC_17_17_0.C_ON=1'b1;
    defparam blink_counter_410__i0_LC_17_17_0.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i0_LC_17_17_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i0_LC_17_17_0 (
            .in0(_gnd_net_),
            .in1(N__2856),
            .in2(_gnd_net_),
            .in3(N__2850),
            .lcout(n26),
            .ltout(),
            .carryin(bfn_17_17_0_),
            .carryout(n2876),
            .clk(N__6732),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i1_LC_17_17_1.C_ON=1'b1;
    defparam blink_counter_410__i1_LC_17_17_1.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i1_LC_17_17_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i1_LC_17_17_1 (
            .in0(_gnd_net_),
            .in1(N__2847),
            .in2(_gnd_net_),
            .in3(N__2841),
            .lcout(n25_adj_402),
            .ltout(),
            .carryin(n2876),
            .carryout(n2877),
            .clk(N__6732),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i2_LC_17_17_2.C_ON=1'b1;
    defparam blink_counter_410__i2_LC_17_17_2.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i2_LC_17_17_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i2_LC_17_17_2 (
            .in0(_gnd_net_),
            .in1(N__2838),
            .in2(_gnd_net_),
            .in3(N__2832),
            .lcout(n24_adj_401),
            .ltout(),
            .carryin(n2877),
            .carryout(n2878),
            .clk(N__6732),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i3_LC_17_17_3.C_ON=1'b1;
    defparam blink_counter_410__i3_LC_17_17_3.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i3_LC_17_17_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i3_LC_17_17_3 (
            .in0(_gnd_net_),
            .in1(N__2829),
            .in2(_gnd_net_),
            .in3(N__2823),
            .lcout(n23_adj_400),
            .ltout(),
            .carryin(n2878),
            .carryout(n2879),
            .clk(N__6732),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i4_LC_17_17_4.C_ON=1'b1;
    defparam blink_counter_410__i4_LC_17_17_4.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i4_LC_17_17_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i4_LC_17_17_4 (
            .in0(_gnd_net_),
            .in1(N__2820),
            .in2(_gnd_net_),
            .in3(N__2814),
            .lcout(n22_adj_399),
            .ltout(),
            .carryin(n2879),
            .carryout(n2880),
            .clk(N__6732),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i5_LC_17_17_5.C_ON=1'b1;
    defparam blink_counter_410__i5_LC_17_17_5.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i5_LC_17_17_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i5_LC_17_17_5 (
            .in0(_gnd_net_),
            .in1(N__2811),
            .in2(_gnd_net_),
            .in3(N__2805),
            .lcout(n21),
            .ltout(),
            .carryin(n2880),
            .carryout(n2881),
            .clk(N__6732),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i6_LC_17_17_6.C_ON=1'b1;
    defparam blink_counter_410__i6_LC_17_17_6.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i6_LC_17_17_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i6_LC_17_17_6 (
            .in0(_gnd_net_),
            .in1(N__2802),
            .in2(_gnd_net_),
            .in3(N__2796),
            .lcout(n20_adj_398),
            .ltout(),
            .carryin(n2881),
            .carryout(n2882),
            .clk(N__6732),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i7_LC_17_17_7.C_ON=1'b1;
    defparam blink_counter_410__i7_LC_17_17_7.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i7_LC_17_17_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i7_LC_17_17_7 (
            .in0(_gnd_net_),
            .in1(N__2793),
            .in2(_gnd_net_),
            .in3(N__2787),
            .lcout(n19),
            .ltout(),
            .carryin(n2882),
            .carryout(n2883),
            .clk(N__6732),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i8_LC_17_18_0.C_ON=1'b1;
    defparam blink_counter_410__i8_LC_17_18_0.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i8_LC_17_18_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i8_LC_17_18_0 (
            .in0(_gnd_net_),
            .in1(N__2784),
            .in2(_gnd_net_),
            .in3(N__2778),
            .lcout(n18_adj_397),
            .ltout(),
            .carryin(bfn_17_18_0_),
            .carryout(n2884),
            .clk(N__6733),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i9_LC_17_18_1.C_ON=1'b1;
    defparam blink_counter_410__i9_LC_17_18_1.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i9_LC_17_18_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i9_LC_17_18_1 (
            .in0(_gnd_net_),
            .in1(N__2928),
            .in2(_gnd_net_),
            .in3(N__2922),
            .lcout(n17),
            .ltout(),
            .carryin(n2884),
            .carryout(n2885),
            .clk(N__6733),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i10_LC_17_18_2.C_ON=1'b1;
    defparam blink_counter_410__i10_LC_17_18_2.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i10_LC_17_18_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i10_LC_17_18_2 (
            .in0(_gnd_net_),
            .in1(N__2919),
            .in2(_gnd_net_),
            .in3(N__2913),
            .lcout(n16),
            .ltout(),
            .carryin(n2885),
            .carryout(n2886),
            .clk(N__6733),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i11_LC_17_18_3.C_ON=1'b1;
    defparam blink_counter_410__i11_LC_17_18_3.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i11_LC_17_18_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i11_LC_17_18_3 (
            .in0(_gnd_net_),
            .in1(N__2910),
            .in2(_gnd_net_),
            .in3(N__2904),
            .lcout(n15_adj_396),
            .ltout(),
            .carryin(n2886),
            .carryout(n2887),
            .clk(N__6733),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i12_LC_17_18_4.C_ON=1'b1;
    defparam blink_counter_410__i12_LC_17_18_4.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i12_LC_17_18_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i12_LC_17_18_4 (
            .in0(_gnd_net_),
            .in1(N__2901),
            .in2(_gnd_net_),
            .in3(N__2895),
            .lcout(n14_adj_395),
            .ltout(),
            .carryin(n2887),
            .carryout(n2888),
            .clk(N__6733),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i13_LC_17_18_5.C_ON=1'b1;
    defparam blink_counter_410__i13_LC_17_18_5.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i13_LC_17_18_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i13_LC_17_18_5 (
            .in0(_gnd_net_),
            .in1(N__2892),
            .in2(_gnd_net_),
            .in3(N__2886),
            .lcout(n13_adj_394),
            .ltout(),
            .carryin(n2888),
            .carryout(n2889),
            .clk(N__6733),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i14_LC_17_18_6.C_ON=1'b1;
    defparam blink_counter_410__i14_LC_17_18_6.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i14_LC_17_18_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i14_LC_17_18_6 (
            .in0(_gnd_net_),
            .in1(N__2883),
            .in2(_gnd_net_),
            .in3(N__2877),
            .lcout(n12_adj_393),
            .ltout(),
            .carryin(n2889),
            .carryout(n2890),
            .clk(N__6733),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i15_LC_17_18_7.C_ON=1'b1;
    defparam blink_counter_410__i15_LC_17_18_7.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i15_LC_17_18_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i15_LC_17_18_7 (
            .in0(_gnd_net_),
            .in1(N__2874),
            .in2(_gnd_net_),
            .in3(N__2868),
            .lcout(n11),
            .ltout(),
            .carryin(n2890),
            .carryout(n2891),
            .clk(N__6733),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i16_LC_17_19_0.C_ON=1'b1;
    defparam blink_counter_410__i16_LC_17_19_0.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i16_LC_17_19_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i16_LC_17_19_0 (
            .in0(_gnd_net_),
            .in1(N__2865),
            .in2(_gnd_net_),
            .in3(N__2859),
            .lcout(n10),
            .ltout(),
            .carryin(bfn_17_19_0_),
            .carryout(n2892),
            .clk(N__6734),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i17_LC_17_19_1.C_ON=1'b1;
    defparam blink_counter_410__i17_LC_17_19_1.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i17_LC_17_19_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i17_LC_17_19_1 (
            .in0(_gnd_net_),
            .in1(N__2991),
            .in2(_gnd_net_),
            .in3(N__2985),
            .lcout(n9),
            .ltout(),
            .carryin(n2892),
            .carryout(n2893),
            .clk(N__6734),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i18_LC_17_19_2.C_ON=1'b1;
    defparam blink_counter_410__i18_LC_17_19_2.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i18_LC_17_19_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i18_LC_17_19_2 (
            .in0(_gnd_net_),
            .in1(N__2982),
            .in2(_gnd_net_),
            .in3(N__2976),
            .lcout(n8),
            .ltout(),
            .carryin(n2893),
            .carryout(n2894),
            .clk(N__6734),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i19_LC_17_19_3.C_ON=1'b1;
    defparam blink_counter_410__i19_LC_17_19_3.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i19_LC_17_19_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i19_LC_17_19_3 (
            .in0(_gnd_net_),
            .in1(N__2973),
            .in2(_gnd_net_),
            .in3(N__2967),
            .lcout(n7),
            .ltout(),
            .carryin(n2894),
            .carryout(n2895),
            .clk(N__6734),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i20_LC_17_19_4.C_ON=1'b1;
    defparam blink_counter_410__i20_LC_17_19_4.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i20_LC_17_19_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i20_LC_17_19_4 (
            .in0(_gnd_net_),
            .in1(N__2964),
            .in2(_gnd_net_),
            .in3(N__2958),
            .lcout(n6_adj_392),
            .ltout(),
            .carryin(n2895),
            .carryout(n2896),
            .clk(N__6734),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i21_LC_17_19_5.C_ON=1'b1;
    defparam blink_counter_410__i21_LC_17_19_5.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i21_LC_17_19_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i21_LC_17_19_5 (
            .in0(_gnd_net_),
            .in1(N__3106),
            .in2(_gnd_net_),
            .in3(N__2955),
            .lcout(blink_counter_21),
            .ltout(),
            .carryin(n2896),
            .carryout(n2897),
            .clk(N__6734),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i22_LC_17_19_6.C_ON=1'b1;
    defparam blink_counter_410__i22_LC_17_19_6.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i22_LC_17_19_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i22_LC_17_19_6 (
            .in0(_gnd_net_),
            .in1(N__3058),
            .in2(_gnd_net_),
            .in3(N__2952),
            .lcout(blink_counter_22),
            .ltout(),
            .carryin(n2897),
            .carryout(n2898),
            .clk(N__6734),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i23_LC_17_19_7.C_ON=1'b1;
    defparam blink_counter_410__i23_LC_17_19_7.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i23_LC_17_19_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i23_LC_17_19_7 (
            .in0(_gnd_net_),
            .in1(N__3073),
            .in2(_gnd_net_),
            .in3(N__2949),
            .lcout(blink_counter_23),
            .ltout(),
            .carryin(n2898),
            .carryout(n2899),
            .clk(N__6734),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i24_LC_17_20_0.C_ON=1'b1;
    defparam blink_counter_410__i24_LC_17_20_0.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i24_LC_17_20_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i24_LC_17_20_0 (
            .in0(_gnd_net_),
            .in1(N__3091),
            .in2(_gnd_net_),
            .in3(N__2946),
            .lcout(blink_counter_24),
            .ltout(),
            .carryin(bfn_17_20_0_),
            .carryout(n2900),
            .clk(N__6736),
            .ce(),
            .sr(_gnd_net_));
    defparam blink_counter_410__i25_LC_17_20_1.C_ON=1'b0;
    defparam blink_counter_410__i25_LC_17_20_1.SEQ_MODE=4'b1000;
    defparam blink_counter_410__i25_LC_17_20_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 blink_counter_410__i25_LC_17_20_1 (
            .in0(_gnd_net_),
            .in1(N__2939),
            .in2(_gnd_net_),
            .in3(N__2943),
            .lcout(blink_counter_25),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6736),
            .ce(),
            .sr(_gnd_net_));
    defparam i2103_4_lut_LC_17_20_2.C_ON=1'b0;
    defparam i2103_4_lut_LC_17_20_2.SEQ_MODE=4'b0000;
    defparam i2103_4_lut_LC_17_20_2.LUT_INIT=16'b1011101000100010;
    LogicCell40 i2103_4_lut_LC_17_20_2 (
            .in0(N__3107),
            .in1(N__3092),
            .in2(N__3080),
            .in3(N__3059),
            .lcout(n3119),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i2104_4_lut_LC_17_20_6.C_ON=1'b0;
    defparam i2104_4_lut_LC_17_20_6.SEQ_MODE=4'b0000;
    defparam i2104_4_lut_LC_17_20_6.LUT_INIT=16'b1110101011111000;
    LogicCell40 i2104_4_lut_LC_17_20_6 (
            .in0(N__3108),
            .in1(N__3093),
            .in2(N__3081),
            .in3(N__3060),
            .lcout(n3120),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i6_4_lut_LC_20_16_2.C_ON=1'b0;
    defparam i6_4_lut_LC_20_16_2.SEQ_MODE=4'b0000;
    defparam i6_4_lut_LC_20_16_2.LUT_INIT=16'b1111111111111110;
    LogicCell40 i6_4_lut_LC_20_16_2 (
            .in0(N__3209),
            .in1(N__3179),
            .in2(N__3228),
            .in3(N__3164),
            .lcout(n14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i5_4_lut_LC_20_16_3.C_ON=1'b0;
    defparam i5_4_lut_LC_20_16_3.SEQ_MODE=4'b0000;
    defparam i5_4_lut_LC_20_16_3.LUT_INIT=16'b1111111111111110;
    LogicCell40 i5_4_lut_LC_20_16_3 (
            .in0(N__3005),
            .in1(N__3242),
            .in2(N__3024),
            .in3(N__3194),
            .lcout(),
            .ltout(n13_adj_391_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i530_3_lut_LC_20_16_4.C_ON=1'b0;
    defparam i530_3_lut_LC_20_16_4.SEQ_MODE=4'b0000;
    defparam i530_3_lut_LC_20_16_4.LUT_INIT=16'b1100110011000000;
    LogicCell40 i530_3_lut_LC_20_16_4 (
            .in0(_gnd_net_),
            .in1(N__3150),
            .in2(N__3039),
            .in3(N__3036),
            .lcout(),
            .ltout(n18_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i3_4_lut_LC_20_16_5.C_ON=1'b0;
    defparam i3_4_lut_LC_20_16_5.SEQ_MODE=4'b0000;
    defparam i3_4_lut_LC_20_16_5.LUT_INIT=16'b1111111111111110;
    LogicCell40 i3_4_lut_LC_20_16_5 (
            .in0(N__3345),
            .in1(N__3327),
            .in2(N__3030),
            .in3(N__3132),
            .lcout(),
            .ltout(n3114_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i3_4_lut_adj_9_LC_20_16_6.C_ON=1'b0;
    defparam i3_4_lut_adj_9_LC_20_16_6.SEQ_MODE=4'b0000;
    defparam i3_4_lut_adj_9_LC_20_16_6.LUT_INIT=16'b1000000000000000;
    LogicCell40 i3_4_lut_adj_9_LC_20_16_6 (
            .in0(N__3291),
            .in1(N__3273),
            .in2(N__3027),
            .in3(N__3309),
            .lcout(n3069),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam delay_counter_i0_LC_20_17_0.C_ON=1'b1;
    defparam delay_counter_i0_LC_20_17_0.SEQ_MODE=4'b1000;
    defparam delay_counter_i0_LC_20_17_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i0_LC_20_17_0 (
            .in0(_gnd_net_),
            .in1(N__3023),
            .in2(_gnd_net_),
            .in3(N__3009),
            .lcout(delay_counter_0),
            .ltout(),
            .carryin(bfn_20_17_0_),
            .carryout(n2818),
            .clk(N__6735),
            .ce(N__4320),
            .sr(N__3940));
    defparam delay_counter_i1_LC_20_17_1.C_ON=1'b1;
    defparam delay_counter_i1_LC_20_17_1.SEQ_MODE=4'b1000;
    defparam delay_counter_i1_LC_20_17_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i1_LC_20_17_1 (
            .in0(_gnd_net_),
            .in1(N__3006),
            .in2(_gnd_net_),
            .in3(N__2994),
            .lcout(delay_counter_1),
            .ltout(),
            .carryin(n2818),
            .carryout(n2819),
            .clk(N__6735),
            .ce(N__4320),
            .sr(N__3940));
    defparam delay_counter_i2_LC_20_17_2.C_ON=1'b1;
    defparam delay_counter_i2_LC_20_17_2.SEQ_MODE=4'b1000;
    defparam delay_counter_i2_LC_20_17_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i2_LC_20_17_2 (
            .in0(_gnd_net_),
            .in1(N__3243),
            .in2(_gnd_net_),
            .in3(N__3231),
            .lcout(delay_counter_2),
            .ltout(),
            .carryin(n2819),
            .carryout(n2820),
            .clk(N__6735),
            .ce(N__4320),
            .sr(N__3940));
    defparam delay_counter_i3_LC_20_17_3.C_ON=1'b1;
    defparam delay_counter_i3_LC_20_17_3.SEQ_MODE=4'b1000;
    defparam delay_counter_i3_LC_20_17_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i3_LC_20_17_3 (
            .in0(_gnd_net_),
            .in1(N__3227),
            .in2(_gnd_net_),
            .in3(N__3213),
            .lcout(delay_counter_3),
            .ltout(),
            .carryin(n2820),
            .carryout(n2821),
            .clk(N__6735),
            .ce(N__4320),
            .sr(N__3940));
    defparam delay_counter_i4_LC_20_17_4.C_ON=1'b1;
    defparam delay_counter_i4_LC_20_17_4.SEQ_MODE=4'b1000;
    defparam delay_counter_i4_LC_20_17_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i4_LC_20_17_4 (
            .in0(_gnd_net_),
            .in1(N__3210),
            .in2(_gnd_net_),
            .in3(N__3198),
            .lcout(delay_counter_4),
            .ltout(),
            .carryin(n2821),
            .carryout(n2822),
            .clk(N__6735),
            .ce(N__4320),
            .sr(N__3940));
    defparam delay_counter_i5_LC_20_17_5.C_ON=1'b1;
    defparam delay_counter_i5_LC_20_17_5.SEQ_MODE=4'b1000;
    defparam delay_counter_i5_LC_20_17_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i5_LC_20_17_5 (
            .in0(_gnd_net_),
            .in1(N__3195),
            .in2(_gnd_net_),
            .in3(N__3183),
            .lcout(delay_counter_5),
            .ltout(),
            .carryin(n2822),
            .carryout(n2823),
            .clk(N__6735),
            .ce(N__4320),
            .sr(N__3940));
    defparam delay_counter_i6_LC_20_17_6.C_ON=1'b1;
    defparam delay_counter_i6_LC_20_17_6.SEQ_MODE=4'b1000;
    defparam delay_counter_i6_LC_20_17_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i6_LC_20_17_6 (
            .in0(_gnd_net_),
            .in1(N__3180),
            .in2(_gnd_net_),
            .in3(N__3168),
            .lcout(delay_counter_6),
            .ltout(),
            .carryin(n2823),
            .carryout(n2824),
            .clk(N__6735),
            .ce(N__4320),
            .sr(N__3940));
    defparam delay_counter_i7_LC_20_17_7.C_ON=1'b1;
    defparam delay_counter_i7_LC_20_17_7.SEQ_MODE=4'b1000;
    defparam delay_counter_i7_LC_20_17_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i7_LC_20_17_7 (
            .in0(_gnd_net_),
            .in1(N__3165),
            .in2(_gnd_net_),
            .in3(N__3153),
            .lcout(delay_counter_7),
            .ltout(),
            .carryin(n2824),
            .carryout(n2825),
            .clk(N__6735),
            .ce(N__4320),
            .sr(N__3940));
    defparam delay_counter_i8_LC_20_18_0.C_ON=1'b1;
    defparam delay_counter_i8_LC_20_18_0.SEQ_MODE=4'b1000;
    defparam delay_counter_i8_LC_20_18_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i8_LC_20_18_0 (
            .in0(_gnd_net_),
            .in1(N__3149),
            .in2(_gnd_net_),
            .in3(N__3135),
            .lcout(delay_counter_8),
            .ltout(),
            .carryin(bfn_20_18_0_),
            .carryout(n2826),
            .clk(N__6738),
            .ce(N__4319),
            .sr(N__3939));
    defparam delay_counter_i9_LC_20_18_1.C_ON=1'b1;
    defparam delay_counter_i9_LC_20_18_1.SEQ_MODE=4'b1000;
    defparam delay_counter_i9_LC_20_18_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i9_LC_20_18_1 (
            .in0(_gnd_net_),
            .in1(N__3131),
            .in2(_gnd_net_),
            .in3(N__3117),
            .lcout(delay_counter_9),
            .ltout(),
            .carryin(n2826),
            .carryout(n2827),
            .clk(N__6738),
            .ce(N__4319),
            .sr(N__3939));
    defparam delay_counter_i10_LC_20_18_2.C_ON=1'b1;
    defparam delay_counter_i10_LC_20_18_2.SEQ_MODE=4'b1000;
    defparam delay_counter_i10_LC_20_18_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i10_LC_20_18_2 (
            .in0(_gnd_net_),
            .in1(N__3344),
            .in2(_gnd_net_),
            .in3(N__3330),
            .lcout(delay_counter_10),
            .ltout(),
            .carryin(n2827),
            .carryout(n2828),
            .clk(N__6738),
            .ce(N__4319),
            .sr(N__3939));
    defparam delay_counter_i11_LC_20_18_3.C_ON=1'b1;
    defparam delay_counter_i11_LC_20_18_3.SEQ_MODE=4'b1000;
    defparam delay_counter_i11_LC_20_18_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i11_LC_20_18_3 (
            .in0(_gnd_net_),
            .in1(N__3326),
            .in2(_gnd_net_),
            .in3(N__3312),
            .lcout(delay_counter_11),
            .ltout(),
            .carryin(n2828),
            .carryout(n2829),
            .clk(N__6738),
            .ce(N__4319),
            .sr(N__3939));
    defparam delay_counter_i12_LC_20_18_4.C_ON=1'b1;
    defparam delay_counter_i12_LC_20_18_4.SEQ_MODE=4'b1000;
    defparam delay_counter_i12_LC_20_18_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i12_LC_20_18_4 (
            .in0(_gnd_net_),
            .in1(N__3308),
            .in2(_gnd_net_),
            .in3(N__3294),
            .lcout(delay_counter_12),
            .ltout(),
            .carryin(n2829),
            .carryout(n2830),
            .clk(N__6738),
            .ce(N__4319),
            .sr(N__3939));
    defparam delay_counter_i13_LC_20_18_5.C_ON=1'b1;
    defparam delay_counter_i13_LC_20_18_5.SEQ_MODE=4'b1000;
    defparam delay_counter_i13_LC_20_18_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i13_LC_20_18_5 (
            .in0(_gnd_net_),
            .in1(N__3290),
            .in2(_gnd_net_),
            .in3(N__3276),
            .lcout(delay_counter_13),
            .ltout(),
            .carryin(n2830),
            .carryout(n2831),
            .clk(N__6738),
            .ce(N__4319),
            .sr(N__3939));
    defparam delay_counter_i14_LC_20_18_6.C_ON=1'b1;
    defparam delay_counter_i14_LC_20_18_6.SEQ_MODE=4'b1000;
    defparam delay_counter_i14_LC_20_18_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i14_LC_20_18_6 (
            .in0(_gnd_net_),
            .in1(N__3272),
            .in2(_gnd_net_),
            .in3(N__3258),
            .lcout(delay_counter_14),
            .ltout(),
            .carryin(n2831),
            .carryout(n2832),
            .clk(N__6738),
            .ce(N__4319),
            .sr(N__3939));
    defparam delay_counter_i15_LC_20_18_7.C_ON=1'b1;
    defparam delay_counter_i15_LC_20_18_7.SEQ_MODE=4'b1000;
    defparam delay_counter_i15_LC_20_18_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i15_LC_20_18_7 (
            .in0(_gnd_net_),
            .in1(N__3749),
            .in2(_gnd_net_),
            .in3(N__3255),
            .lcout(delay_counter_15),
            .ltout(),
            .carryin(n2832),
            .carryout(n2833),
            .clk(N__6738),
            .ce(N__4319),
            .sr(N__3939));
    defparam delay_counter_i16_LC_20_19_0.C_ON=1'b1;
    defparam delay_counter_i16_LC_20_19_0.SEQ_MODE=4'b1000;
    defparam delay_counter_i16_LC_20_19_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i16_LC_20_19_0 (
            .in0(_gnd_net_),
            .in1(N__3774),
            .in2(_gnd_net_),
            .in3(N__3252),
            .lcout(delay_counter_16),
            .ltout(),
            .carryin(bfn_20_19_0_),
            .carryout(n2834),
            .clk(N__6739),
            .ce(N__4311),
            .sr(N__3941));
    defparam delay_counter_i17_LC_20_19_1.C_ON=1'b1;
    defparam delay_counter_i17_LC_20_19_1.SEQ_MODE=4'b1000;
    defparam delay_counter_i17_LC_20_19_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i17_LC_20_19_1 (
            .in0(_gnd_net_),
            .in1(N__3762),
            .in2(_gnd_net_),
            .in3(N__3249),
            .lcout(delay_counter_17),
            .ltout(),
            .carryin(n2834),
            .carryout(n2835),
            .clk(N__6739),
            .ce(N__4311),
            .sr(N__3941));
    defparam delay_counter_i18_LC_20_19_2.C_ON=1'b1;
    defparam delay_counter_i18_LC_20_19_2.SEQ_MODE=4'b1000;
    defparam delay_counter_i18_LC_20_19_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i18_LC_20_19_2 (
            .in0(_gnd_net_),
            .in1(N__4032),
            .in2(_gnd_net_),
            .in3(N__3246),
            .lcout(delay_counter_18),
            .ltout(),
            .carryin(n2835),
            .carryout(n2836),
            .clk(N__6739),
            .ce(N__4311),
            .sr(N__3941));
    defparam delay_counter_i19_LC_20_19_3.C_ON=1'b1;
    defparam delay_counter_i19_LC_20_19_3.SEQ_MODE=4'b1000;
    defparam delay_counter_i19_LC_20_19_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i19_LC_20_19_3 (
            .in0(_gnd_net_),
            .in1(N__3876),
            .in2(_gnd_net_),
            .in3(N__3372),
            .lcout(delay_counter_19),
            .ltout(),
            .carryin(n2836),
            .carryout(n2837),
            .clk(N__6739),
            .ce(N__4311),
            .sr(N__3941));
    defparam delay_counter_i20_LC_20_19_4.C_ON=1'b1;
    defparam delay_counter_i20_LC_20_19_4.SEQ_MODE=4'b1000;
    defparam delay_counter_i20_LC_20_19_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i20_LC_20_19_4 (
            .in0(_gnd_net_),
            .in1(N__3890),
            .in2(_gnd_net_),
            .in3(N__3369),
            .lcout(delay_counter_20),
            .ltout(),
            .carryin(n2837),
            .carryout(n2838),
            .clk(N__6739),
            .ce(N__4311),
            .sr(N__3941));
    defparam delay_counter_i21_LC_20_19_5.C_ON=1'b1;
    defparam delay_counter_i21_LC_20_19_5.SEQ_MODE=4'b1000;
    defparam delay_counter_i21_LC_20_19_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i21_LC_20_19_5 (
            .in0(_gnd_net_),
            .in1(N__3918),
            .in2(_gnd_net_),
            .in3(N__3366),
            .lcout(delay_counter_21),
            .ltout(),
            .carryin(n2838),
            .carryout(n2839),
            .clk(N__6739),
            .ce(N__4311),
            .sr(N__3941));
    defparam delay_counter_i22_LC_20_19_6.C_ON=1'b1;
    defparam delay_counter_i22_LC_20_19_6.SEQ_MODE=4'b1000;
    defparam delay_counter_i22_LC_20_19_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i22_LC_20_19_6 (
            .in0(_gnd_net_),
            .in1(N__4176),
            .in2(_gnd_net_),
            .in3(N__3363),
            .lcout(delay_counter_22),
            .ltout(),
            .carryin(n2839),
            .carryout(n2840),
            .clk(N__6739),
            .ce(N__4311),
            .sr(N__3941));
    defparam delay_counter_i23_LC_20_19_7.C_ON=1'b1;
    defparam delay_counter_i23_LC_20_19_7.SEQ_MODE=4'b1000;
    defparam delay_counter_i23_LC_20_19_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i23_LC_20_19_7 (
            .in0(_gnd_net_),
            .in1(N__3984),
            .in2(_gnd_net_),
            .in3(N__3360),
            .lcout(delay_counter_23),
            .ltout(),
            .carryin(n2840),
            .carryout(n2841),
            .clk(N__6739),
            .ce(N__4311),
            .sr(N__3941));
    defparam delay_counter_i24_LC_20_20_0.C_ON=1'b1;
    defparam delay_counter_i24_LC_20_20_0.SEQ_MODE=4'b1000;
    defparam delay_counter_i24_LC_20_20_0.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i24_LC_20_20_0 (
            .in0(_gnd_net_),
            .in1(N__4016),
            .in2(_gnd_net_),
            .in3(N__3357),
            .lcout(delay_counter_24),
            .ltout(),
            .carryin(bfn_20_20_0_),
            .carryout(n2842),
            .clk(N__6741),
            .ce(N__4315),
            .sr(N__3948));
    defparam delay_counter_i25_LC_20_20_1.C_ON=1'b1;
    defparam delay_counter_i25_LC_20_20_1.SEQ_MODE=4'b1000;
    defparam delay_counter_i25_LC_20_20_1.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i25_LC_20_20_1 (
            .in0(_gnd_net_),
            .in1(N__3906),
            .in2(_gnd_net_),
            .in3(N__3354),
            .lcout(delay_counter_25),
            .ltout(),
            .carryin(n2842),
            .carryout(n2843),
            .clk(N__6741),
            .ce(N__4315),
            .sr(N__3948));
    defparam delay_counter_i26_LC_20_20_2.C_ON=1'b1;
    defparam delay_counter_i26_LC_20_20_2.SEQ_MODE=4'b1000;
    defparam delay_counter_i26_LC_20_20_2.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i26_LC_20_20_2 (
            .in0(_gnd_net_),
            .in1(N__4151),
            .in2(_gnd_net_),
            .in3(N__3351),
            .lcout(delay_counter_26),
            .ltout(),
            .carryin(n2843),
            .carryout(n2844),
            .clk(N__6741),
            .ce(N__4315),
            .sr(N__3948));
    defparam delay_counter_i27_LC_20_20_3.C_ON=1'b1;
    defparam delay_counter_i27_LC_20_20_3.SEQ_MODE=4'b1000;
    defparam delay_counter_i27_LC_20_20_3.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i27_LC_20_20_3 (
            .in0(_gnd_net_),
            .in1(N__4001),
            .in2(_gnd_net_),
            .in3(N__3348),
            .lcout(delay_counter_27),
            .ltout(),
            .carryin(n2844),
            .carryout(n2845),
            .clk(N__6741),
            .ce(N__4315),
            .sr(N__3948));
    defparam delay_counter_i28_LC_20_20_4.C_ON=1'b1;
    defparam delay_counter_i28_LC_20_20_4.SEQ_MODE=4'b1000;
    defparam delay_counter_i28_LC_20_20_4.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i28_LC_20_20_4 (
            .in0(_gnd_net_),
            .in1(N__4137),
            .in2(_gnd_net_),
            .in3(N__3405),
            .lcout(delay_counter_28),
            .ltout(),
            .carryin(n2845),
            .carryout(n2846),
            .clk(N__6741),
            .ce(N__4315),
            .sr(N__3948));
    defparam delay_counter_i29_LC_20_20_5.C_ON=1'b1;
    defparam delay_counter_i29_LC_20_20_5.SEQ_MODE=4'b1000;
    defparam delay_counter_i29_LC_20_20_5.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i29_LC_20_20_5 (
            .in0(_gnd_net_),
            .in1(N__4046),
            .in2(_gnd_net_),
            .in3(N__3402),
            .lcout(delay_counter_29),
            .ltout(),
            .carryin(n2846),
            .carryout(n2847),
            .clk(N__6741),
            .ce(N__4315),
            .sr(N__3948));
    defparam delay_counter_i30_LC_20_20_6.C_ON=1'b1;
    defparam delay_counter_i30_LC_20_20_6.SEQ_MODE=4'b1000;
    defparam delay_counter_i30_LC_20_20_6.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i30_LC_20_20_6 (
            .in0(_gnd_net_),
            .in1(N__4164),
            .in2(_gnd_net_),
            .in3(N__3399),
            .lcout(delay_counter_30),
            .ltout(),
            .carryin(n2847),
            .carryout(n2848),
            .clk(N__6741),
            .ce(N__4315),
            .sr(N__3948));
    defparam delay_counter_i31_LC_20_20_7.C_ON=1'b0;
    defparam delay_counter_i31_LC_20_20_7.SEQ_MODE=4'b1000;
    defparam delay_counter_i31_LC_20_20_7.LUT_INIT=16'b1100001100111100;
    LogicCell40 delay_counter_i31_LC_20_20_7 (
            .in0(_gnd_net_),
            .in1(N__3968),
            .in2(_gnd_net_),
            .in3(N__3396),
            .lcout(delay_counter_31),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6741),
            .ce(N__4315),
            .sr(N__3948));
    defparam \eeprom.i15_4_lut_LC_21_12_0 .C_ON=1'b0;
    defparam \eeprom.i15_4_lut_LC_21_12_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i15_4_lut_LC_21_12_0 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i15_4_lut_LC_21_12_0  (
            .in0(N__3384),
            .in1(N__3378),
            .in2(N__4062),
            .in3(N__3390),
            .lcout(\eeprom.n1704 ),
            .ltout(\eeprom.n1704_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2156_2_lut_3_lut_4_lut_LC_21_12_1 .C_ON=1'b0;
    defparam \eeprom.i2156_2_lut_3_lut_4_lut_LC_21_12_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2156_2_lut_3_lut_4_lut_LC_21_12_1 .LUT_INIT=16'b0000000000010000;
    LogicCell40 \eeprom.i2156_2_lut_3_lut_4_lut_LC_21_12_1  (
            .in0(N__6126),
            .in1(N__5541),
            .in2(N__3393),
            .in3(N__5881),
            .lcout(\eeprom.n730 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i9_4_lut_LC_21_12_2 .C_ON=1'b0;
    defparam \eeprom.i9_4_lut_LC_21_12_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i9_4_lut_LC_21_12_2 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i9_4_lut_LC_21_12_2  (
            .in0(N__3681),
            .in1(N__3723),
            .in2(N__3519),
            .in3(N__3455),
            .lcout(\eeprom.n25 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i10_4_lut_LC_21_12_4 .C_ON=1'b0;
    defparam \eeprom.i10_4_lut_LC_21_12_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i10_4_lut_LC_21_12_4 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i10_4_lut_LC_21_12_4  (
            .in0(N__3485),
            .in1(N__3419),
            .in2(N__3441),
            .in3(N__3702),
            .lcout(\eeprom.n26_adj_385 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i11_4_lut_LC_21_12_5 .C_ON=1'b0;
    defparam \eeprom.i11_4_lut_LC_21_12_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i11_4_lut_LC_21_12_5 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i11_4_lut_LC_21_12_5  (
            .in0(N__3663),
            .in1(N__3470),
            .in2(N__3504),
            .in3(N__3534),
            .lcout(\eeprom.n27 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_LC_21_12_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_LC_21_12_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_LC_21_12_6 .LUT_INIT=16'b0100010001000100;
    LogicCell40 \eeprom.i2c.i1_2_lut_LC_21_12_6  (
            .in0(N__5700),
            .in1(N__5993),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(\eeprom.i2c.n7 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.delay_counter_i0_i0_LC_21_13_0 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i0_LC_21_13_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i0_LC_21_13_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i0_LC_21_13_0  (
            .in0(_gnd_net_),
            .in1(N__3518),
            .in2(N__3609),
            .in3(_gnd_net_),
            .lcout(\eeprom.delay_counter_0 ),
            .ltout(),
            .carryin(bfn_21_13_0_),
            .carryout(\eeprom.n2856 ),
            .clk(N__6747),
            .ce(N__3834),
            .sr(N__3807));
    defparam \eeprom.delay_counter_i0_i1_LC_21_13_1 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i1_LC_21_13_1 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i1_LC_21_13_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i1_LC_21_13_1  (
            .in0(_gnd_net_),
            .in1(N__3503),
            .in2(N__3613),
            .in3(N__3489),
            .lcout(\eeprom.delay_counter_1 ),
            .ltout(),
            .carryin(\eeprom.n2856 ),
            .carryout(\eeprom.n2857 ),
            .clk(N__6747),
            .ce(N__3834),
            .sr(N__3807));
    defparam \eeprom.delay_counter_i0_i2_LC_21_13_2 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i2_LC_21_13_2 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i2_LC_21_13_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i2_LC_21_13_2  (
            .in0(_gnd_net_),
            .in1(N__3486),
            .in2(N__3610),
            .in3(N__3474),
            .lcout(\eeprom.delay_counter_2 ),
            .ltout(),
            .carryin(\eeprom.n2857 ),
            .carryout(\eeprom.n2858 ),
            .clk(N__6747),
            .ce(N__3834),
            .sr(N__3807));
    defparam \eeprom.delay_counter_i0_i3_LC_21_13_3 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i3_LC_21_13_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i3_LC_21_13_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i3_LC_21_13_3  (
            .in0(_gnd_net_),
            .in1(N__3471),
            .in2(N__3614),
            .in3(N__3459),
            .lcout(\eeprom.delay_counter_3 ),
            .ltout(),
            .carryin(\eeprom.n2858 ),
            .carryout(\eeprom.n2859 ),
            .clk(N__6747),
            .ce(N__3834),
            .sr(N__3807));
    defparam \eeprom.delay_counter_i0_i4_LC_21_13_4 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i4_LC_21_13_4 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i4_LC_21_13_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i4_LC_21_13_4  (
            .in0(_gnd_net_),
            .in1(N__3456),
            .in2(N__3611),
            .in3(N__3444),
            .lcout(\eeprom.delay_counter_4 ),
            .ltout(),
            .carryin(\eeprom.n2859 ),
            .carryout(\eeprom.n2860 ),
            .clk(N__6747),
            .ce(N__3834),
            .sr(N__3807));
    defparam \eeprom.delay_counter_i0_i5_LC_21_13_5 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i5_LC_21_13_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i5_LC_21_13_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i5_LC_21_13_5  (
            .in0(_gnd_net_),
            .in1(N__3440),
            .in2(N__3615),
            .in3(N__3426),
            .lcout(\eeprom.delay_counter_5 ),
            .ltout(),
            .carryin(\eeprom.n2860 ),
            .carryout(\eeprom.n2861 ),
            .clk(N__6747),
            .ce(N__3834),
            .sr(N__3807));
    defparam \eeprom.delay_counter_i0_i6_LC_21_13_6 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i6_LC_21_13_6 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i6_LC_21_13_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i6_LC_21_13_6  (
            .in0(_gnd_net_),
            .in1(N__4074),
            .in2(N__3612),
            .in3(N__3423),
            .lcout(\eeprom.delay_counter_6 ),
            .ltout(),
            .carryin(\eeprom.n2861 ),
            .carryout(\eeprom.n2862 ),
            .clk(N__6747),
            .ce(N__3834),
            .sr(N__3807));
    defparam \eeprom.delay_counter_i0_i7_LC_21_13_7 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i7_LC_21_13_7 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i7_LC_21_13_7 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i7_LC_21_13_7  (
            .in0(_gnd_net_),
            .in1(N__3420),
            .in2(N__3616),
            .in3(N__3408),
            .lcout(\eeprom.delay_counter_7 ),
            .ltout(),
            .carryin(\eeprom.n2862 ),
            .carryout(\eeprom.n2863 ),
            .clk(N__6747),
            .ce(N__3834),
            .sr(N__3807));
    defparam \eeprom.delay_counter_i0_i8_LC_21_14_0 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i8_LC_21_14_0 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i8_LC_21_14_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i8_LC_21_14_0  (
            .in0(_gnd_net_),
            .in1(N__4088),
            .in2(N__3639),
            .in3(N__3726),
            .lcout(\eeprom.delay_counter_8 ),
            .ltout(),
            .carryin(bfn_21_14_0_),
            .carryout(\eeprom.n2864 ),
            .clk(N__6746),
            .ce(N__3830),
            .sr(N__3806));
    defparam \eeprom.delay_counter_i0_i9_LC_21_14_1 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i9_LC_21_14_1 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i9_LC_21_14_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i9_LC_21_14_1  (
            .in0(_gnd_net_),
            .in1(N__3722),
            .in2(N__3643),
            .in3(N__3708),
            .lcout(\eeprom.delay_counter_9 ),
            .ltout(),
            .carryin(\eeprom.n2864 ),
            .carryout(\eeprom.n2865 ),
            .clk(N__6746),
            .ce(N__3830),
            .sr(N__3806));
    defparam \eeprom.delay_counter_i0_i10_LC_21_14_2 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i10_LC_21_14_2 .SEQ_MODE=4'b1001;
    defparam \eeprom.delay_counter_i0_i10_LC_21_14_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i10_LC_21_14_2  (
            .in0(_gnd_net_),
            .in1(N__4101),
            .in2(N__3640),
            .in3(N__3705),
            .lcout(\eeprom.delay_counter_10 ),
            .ltout(),
            .carryin(\eeprom.n2865 ),
            .carryout(\eeprom.n2866 ),
            .clk(N__6746),
            .ce(N__3830),
            .sr(N__3806));
    defparam \eeprom.delay_counter_i0_i11_LC_21_14_3 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i11_LC_21_14_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i11_LC_21_14_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i11_LC_21_14_3  (
            .in0(_gnd_net_),
            .in1(N__3701),
            .in2(N__3644),
            .in3(N__3687),
            .lcout(\eeprom.delay_counter_11 ),
            .ltout(),
            .carryin(\eeprom.n2866 ),
            .carryout(\eeprom.n2867 ),
            .clk(N__6746),
            .ce(N__3830),
            .sr(N__3806));
    defparam \eeprom.delay_counter_i0_i12_LC_21_14_4 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i12_LC_21_14_4 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i12_LC_21_14_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i12_LC_21_14_4  (
            .in0(_gnd_net_),
            .in1(N__4113),
            .in2(N__3641),
            .in3(N__3684),
            .lcout(\eeprom.delay_counter_12 ),
            .ltout(),
            .carryin(\eeprom.n2867 ),
            .carryout(\eeprom.n2868 ),
            .clk(N__6746),
            .ce(N__3830),
            .sr(N__3806));
    defparam \eeprom.delay_counter_i0_i13_LC_21_14_5 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i13_LC_21_14_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i13_LC_21_14_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i13_LC_21_14_5  (
            .in0(_gnd_net_),
            .in1(N__3680),
            .in2(N__3645),
            .in3(N__3666),
            .lcout(\eeprom.delay_counter_13 ),
            .ltout(),
            .carryin(\eeprom.n2868 ),
            .carryout(\eeprom.n2869 ),
            .clk(N__6746),
            .ce(N__3830),
            .sr(N__3806));
    defparam \eeprom.delay_counter_i0_i14_LC_21_14_6 .C_ON=1'b1;
    defparam \eeprom.delay_counter_i0_i14_LC_21_14_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i14_LC_21_14_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.delay_counter_i0_i14_LC_21_14_6  (
            .in0(_gnd_net_),
            .in1(N__3662),
            .in2(N__3642),
            .in3(N__3648),
            .lcout(\eeprom.delay_counter_14 ),
            .ltout(),
            .carryin(\eeprom.n2869 ),
            .carryout(\eeprom.n2870 ),
            .clk(N__6746),
            .ce(N__3830),
            .sr(N__3806));
    defparam \eeprom.delay_counter_i0_i15_LC_21_14_7 .C_ON=1'b0;
    defparam \eeprom.delay_counter_i0_i15_LC_21_14_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.delay_counter_i0_i15_LC_21_14_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \eeprom.delay_counter_i0_i15_LC_21_14_7  (
            .in0(N__3533),
            .in1(N__3629),
            .in2(_gnd_net_),
            .in3(N__3537),
            .lcout(\eeprom.delay_counter_15 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6746),
            .ce(N__3830),
            .sr(N__3806));
    defparam i7_4_lut_LC_21_15_1.C_ON=1'b0;
    defparam i7_4_lut_LC_21_15_1.SEQ_MODE=4'b0000;
    defparam i7_4_lut_LC_21_15_1.LUT_INIT=16'b1111111111101111;
    LogicCell40 i7_4_lut_LC_21_15_1 (
            .in0(N__4383),
            .in1(N__4344),
            .in2(N__5043),
            .in3(N__4338),
            .lcout(n15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.mux_217_Mux_0_i1_4_lut_LC_21_15_2 .C_ON=1'b0;
    defparam \eeprom.mux_217_Mux_0_i1_4_lut_LC_21_15_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.mux_217_Mux_0_i1_4_lut_LC_21_15_2 .LUT_INIT=16'b0100010001001110;
    LogicCell40 \eeprom.mux_217_Mux_0_i1_4_lut_LC_21_15_2  (
            .in0(N__5151),
            .in1(N__4936),
            .in2(N__5017),
            .in3(N__4558),
            .lcout(),
            .ltout(n805_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.rw_43_LC_21_15_3 .C_ON=1'b0;
    defparam \eeprom.rw_43_LC_21_15_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.rw_43_LC_21_15_3 .LUT_INIT=16'b1101110010001100;
    LogicCell40 \eeprom.rw_43_LC_21_15_3  (
            .in0(N__5209),
            .in1(N__4868),
            .in2(N__3837),
            .in3(N__5152),
            .lcout(rw),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6742),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i1_3_lut_LC_21_15_6 .C_ON=1'b0;
    defparam \eeprom.i1_3_lut_LC_21_15_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i1_3_lut_LC_21_15_6 .LUT_INIT=16'b0011001100100010;
    LogicCell40 \eeprom.i1_3_lut_LC_21_15_6  (
            .in0(N__5149),
            .in1(N__5208),
            .in2(_gnd_net_),
            .in3(N__4935),
            .lcout(\eeprom.n1796 ),
            .ltout(\eeprom.n1796_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i1002_2_lut_LC_21_15_7 .C_ON=1'b0;
    defparam \eeprom.i1002_2_lut_LC_21_15_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i1002_2_lut_LC_21_15_7 .LUT_INIT=16'b0000000011110000;
    LogicCell40 \eeprom.i1002_2_lut_LC_21_15_7  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__3810),
            .in3(N__5150),
            .lcout(\eeprom.n1929 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.enable_39_LC_21_16_1 .C_ON=1'b0;
    defparam \eeprom.enable_39_LC_21_16_1 .SEQ_MODE=4'b1000;
    defparam \eeprom.enable_39_LC_21_16_1 .LUT_INIT=16'b0100010001001110;
    LogicCell40 \eeprom.enable_39_LC_21_16_1  (
            .in0(N__5153),
            .in1(N__4934),
            .in2(N__5022),
            .in3(N__4559),
            .lcout(\eeprom.enable ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6740),
            .ce(),
            .sr(N__5214));
    defparam \eeprom.data_ready_42_LC_21_17_0 .C_ON=1'b0;
    defparam \eeprom.data_ready_42_LC_21_17_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.data_ready_42_LC_21_17_0 .LUT_INIT=16'b1010101110100000;
    LogicCell40 \eeprom.data_ready_42_LC_21_17_0  (
            .in0(N__3783),
            .in1(N__5021),
            .in2(N__5154),
            .in3(N__5210),
            .lcout(data_ready),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6737),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_2_lut_LC_21_17_3.C_ON=1'b0;
    defparam i1_2_lut_LC_21_17_3.SEQ_MODE=4'b0000;
    defparam i1_2_lut_LC_21_17_3.LUT_INIT=16'b0011001100000000;
    LogicCell40 i1_2_lut_LC_21_17_3 (
            .in0(_gnd_net_),
            .in1(N__4246),
            .in2(_gnd_net_),
            .in3(N__3782),
            .lcout(n6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam read_26_LC_21_17_5.C_ON=1'b0;
    defparam read_26_LC_21_17_5.SEQ_MODE=4'b1000;
    defparam read_26_LC_21_17_5.LUT_INIT=16'b0000000000110011;
    LogicCell40 read_26_LC_21_17_5 (
            .in0(_gnd_net_),
            .in1(N__4218),
            .in2(_gnd_net_),
            .in3(N__4247),
            .lcout(read),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6737),
            .ce(),
            .sr(_gnd_net_));
    defparam i526_4_lut_LC_21_18_0.C_ON=1'b0;
    defparam i526_4_lut_LC_21_18_0.SEQ_MODE=4'b0000;
    defparam i526_4_lut_LC_21_18_0.LUT_INIT=16'b1100110011001000;
    LogicCell40 i526_4_lut_LC_21_18_0 (
            .in0(N__3773),
            .in1(N__3761),
            .in2(N__3750),
            .in3(N__3735),
            .lcout(),
            .ltout(n36_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i8_4_lut_LC_21_18_1.C_ON=1'b0;
    defparam i8_4_lut_LC_21_18_1.SEQ_MODE=4'b0000;
    defparam i8_4_lut_LC_21_18_1.LUT_INIT=16'b1111111111111110;
    LogicCell40 i8_4_lut_LC_21_18_1 (
            .in0(N__4047),
            .in1(N__4031),
            .in2(N__4020),
            .in3(N__4017),
            .lcout(),
            .ltout(n22_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i11_3_lut_LC_21_18_2.C_ON=1'b0;
    defparam i11_3_lut_LC_21_18_2.SEQ_MODE=4'b0000;
    defparam i11_3_lut_LC_21_18_2.LUT_INIT=16'b1111111111111010;
    LogicCell40 i11_3_lut_LC_21_18_2 (
            .in0(N__4002),
            .in1(_gnd_net_),
            .in2(N__3987),
            .in3(N__3983),
            .lcout(),
            .ltout(n25_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1422_4_lut_LC_21_18_3.C_ON=1'b0;
    defparam i1422_4_lut_LC_21_18_3.SEQ_MODE=4'b0000;
    defparam i1422_4_lut_LC_21_18_3.LUT_INIT=16'b0101010101010100;
    LogicCell40 i1422_4_lut_LC_21_18_3 (
            .in0(N__3972),
            .in1(N__4125),
            .in2(N__3954),
            .in3(N__3864),
            .lcout(n104),
            .ltout(n104_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i995_2_lut_LC_21_18_4.C_ON=1'b0;
    defparam i995_2_lut_LC_21_18_4.SEQ_MODE=4'b0000;
    defparam i995_2_lut_LC_21_18_4.LUT_INIT=16'b1010000010100000;
    LogicCell40 i995_2_lut_LC_21_18_4 (
            .in0(N__4298),
            .in1(_gnd_net_),
            .in2(N__3951),
            .in3(_gnd_net_),
            .lcout(n1891),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam ID_READOUT_FSM_state__i0_LC_21_19_0.C_ON=1'b0;
    defparam ID_READOUT_FSM_state__i0_LC_21_19_0.SEQ_MODE=4'b1000;
    defparam ID_READOUT_FSM_state__i0_LC_21_19_0.LUT_INIT=16'b0101000001011100;
    LogicCell40 ID_READOUT_FSM_state__i0_LC_21_19_0 (
            .in0(N__3849),
            .in1(N__4185),
            .in2(N__4217),
            .in3(N__3858),
            .lcout(ID_READOUT_FSM_state_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6743),
            .ce(),
            .sr(_gnd_net_));
    defparam i9_4_lut_LC_21_19_1.C_ON=1'b0;
    defparam i9_4_lut_LC_21_19_1.SEQ_MODE=4'b0000;
    defparam i9_4_lut_LC_21_19_1.LUT_INIT=16'b1111111111111110;
    LogicCell40 i9_4_lut_LC_21_19_1 (
            .in0(N__3917),
            .in1(N__3905),
            .in2(N__3894),
            .in3(N__3875),
            .lcout(n23),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i2007_2_lut_3_lut_LC_21_19_2.C_ON=1'b0;
    defparam i2007_2_lut_3_lut_LC_21_19_2.SEQ_MODE=4'b0000;
    defparam i2007_2_lut_3_lut_LC_21_19_2.LUT_INIT=16'b0100010011001100;
    LogicCell40 i2007_2_lut_3_lut_LC_21_19_2 (
            .in0(N__4262),
            .in1(N__4240),
            .in2(_gnd_net_),
            .in3(N__4271),
            .lcout(n20),
            .ltout(n20_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i24_3_lut_LC_21_19_3.C_ON=1'b0;
    defparam i24_3_lut_LC_21_19_3.SEQ_MODE=4'b0000;
    defparam i24_3_lut_LC_21_19_3.LUT_INIT=16'b1100111100000011;
    LogicCell40 i24_3_lut_LC_21_19_3 (
            .in0(_gnd_net_),
            .in1(N__4209),
            .in2(N__3852),
            .in3(N__3848),
            .lcout(),
            .ltout(n1836_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam ID_READOUT_FSM_state__i1_LC_21_19_4.C_ON=1'b0;
    defparam ID_READOUT_FSM_state__i1_LC_21_19_4.SEQ_MODE=4'b1000;
    defparam ID_READOUT_FSM_state__i1_LC_21_19_4.LUT_INIT=16'b1010110000001100;
    LogicCell40 ID_READOUT_FSM_state__i1_LC_21_19_4 (
            .in0(N__4213),
            .in1(N__4245),
            .in2(N__4323),
            .in3(N__4184),
            .lcout(ID_READOUT_FSM_state_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6743),
            .ce(),
            .sr(_gnd_net_));
    defparam i625_2_lut_3_lut_LC_21_19_6.C_ON=1'b0;
    defparam i625_2_lut_3_lut_LC_21_19_6.SEQ_MODE=4'b0000;
    defparam i625_2_lut_3_lut_LC_21_19_6.LUT_INIT=16'b0010001000000000;
    LogicCell40 i625_2_lut_3_lut_LC_21_19_6 (
            .in0(N__4263),
            .in1(N__4207),
            .in2(_gnd_net_),
            .in3(N__4241),
            .lcout(n1507),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1484_2_lut_3_lut_4_lut_LC_21_19_7.C_ON=1'b0;
    defparam i1484_2_lut_3_lut_4_lut_LC_21_19_7.SEQ_MODE=4'b0000;
    defparam i1484_2_lut_3_lut_4_lut_LC_21_19_7.LUT_INIT=16'b1111111101111111;
    LogicCell40 i1484_2_lut_3_lut_4_lut_LC_21_19_7 (
            .in0(N__4272),
            .in1(N__4261),
            .in2(N__4248),
            .in3(N__4208),
            .lcout(n2414),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i10_4_lut_LC_21_20_5.C_ON=1'b0;
    defparam i10_4_lut_LC_21_20_5.SEQ_MODE=4'b0000;
    defparam i10_4_lut_LC_21_20_5.LUT_INIT=16'b1111111111111110;
    LogicCell40 i10_4_lut_LC_21_20_5 (
            .in0(N__4175),
            .in1(N__4163),
            .in2(N__4152),
            .in3(N__4136),
            .lcout(n24),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_i0_i2_LC_22_13_4 .C_ON=1'b0;
    defparam \eeprom.i2c.state_i0_i2_LC_22_13_4 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.state_i0_i2_LC_22_13_4 .LUT_INIT=16'b0000000001010101;
    LogicCell40 \eeprom.i2c.state_i0_i2_LC_22_13_4  (
            .in0(N__5418),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__4817),
            .lcout(\eeprom.i2c.state_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6427),
            .ce(N__4752),
            .sr(N__4395));
    defparam \eeprom.i2c.state_7__I_0_142_i10_2_lut_LC_22_14_0 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_142_i10_2_lut_LC_22_14_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_142_i10_2_lut_LC_22_14_0 .LUT_INIT=16'b1100110011111111;
    LogicCell40 \eeprom.i2c.state_7__I_0_142_i10_2_lut_LC_22_14_0  (
            .in0(_gnd_net_),
            .in1(N__5959),
            .in2(_gnd_net_),
            .in3(N__5688),
            .lcout(\eeprom.i2c.n10_adj_381 ),
            .ltout(\eeprom.i2c.n10_adj_381_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2132_4_lut_LC_22_14_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i2132_4_lut_LC_22_14_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2132_4_lut_LC_22_14_1 .LUT_INIT=16'b0000110111001101;
    LogicCell40 \eeprom.i2c.i2132_4_lut_LC_22_14_1  (
            .in0(N__4590),
            .in1(N__5422),
            .in2(N__4116),
            .in3(N__5513),
            .lcout(\eeprom.i2c.n3133 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i12_4_lut_LC_22_14_2 .C_ON=1'b0;
    defparam \eeprom.i12_4_lut_LC_22_14_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i12_4_lut_LC_22_14_2 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i12_4_lut_LC_22_14_2  (
            .in0(N__4112),
            .in1(N__4100),
            .in2(N__4089),
            .in3(N__4073),
            .lcout(\eeprom.n28 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2178_2_lut_LC_22_14_3 .C_ON=1'b0;
    defparam \eeprom.i2c.i2178_2_lut_LC_22_14_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2178_2_lut_LC_22_14_3 .LUT_INIT=16'b0011001100000000;
    LogicCell40 \eeprom.i2c.i2178_2_lut_LC_22_14_3  (
            .in0(_gnd_net_),
            .in1(N__4613),
            .in2(_gnd_net_),
            .in3(N__4719),
            .lcout(\eeprom.i2c.n2388 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_7__I_0_139_i11_2_lut_4_lut_LC_22_14_4 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_139_i11_2_lut_4_lut_LC_22_14_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_139_i11_2_lut_4_lut_LC_22_14_4 .LUT_INIT=16'b1111111111011111;
    LogicCell40 \eeprom.i2c.state_7__I_0_139_i11_2_lut_4_lut_LC_22_14_4  (
            .in0(N__6121),
            .in1(N__5960),
            .in2(N__5866),
            .in3(N__5689),
            .lcout(\eeprom.i2c.n11_adj_374 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i3_LC_22_14_6 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i3_LC_22_14_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i3_LC_22_14_6 .LUT_INIT=16'b1010101010111000;
    LogicCell40 \eeprom.i2c.data_out_i0_i3_LC_22_14_6  (
            .in0(N__4355),
            .in1(N__4773),
            .in2(N__5442),
            .in3(N__5341),
            .lcout(data_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6486),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i5_LC_22_14_7 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i5_LC_22_14_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i5_LC_22_14_7 .LUT_INIT=16'b1100110011011000;
    LogicCell40 \eeprom.i2c.data_out_i0_i5_LC_22_14_7  (
            .in0(N__5342),
            .in1(N__4382),
            .in2(N__5443),
            .in3(N__4674),
            .lcout(data_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6486),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2176_3_lut_4_lut_LC_22_15_0 .C_ON=1'b0;
    defparam \eeprom.i2c.i2176_3_lut_4_lut_LC_22_15_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2176_3_lut_4_lut_LC_22_15_0 .LUT_INIT=16'b0001000000000000;
    LogicCell40 \eeprom.i2c.i2176_3_lut_4_lut_LC_22_15_0  (
            .in0(N__5971),
            .in1(N__6116),
            .in2(N__4736),
            .in3(N__5723),
            .lcout(\eeprom.i2c.n3082 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i0_LC_22_15_1 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i0_LC_22_15_1 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i0_LC_22_15_1 .LUT_INIT=16'b1100110011011000;
    LogicCell40 \eeprom.i2c.data_out_i0_i0_LC_22_15_1  (
            .in0(N__4435),
            .in1(N__4370),
            .in2(N__5444),
            .in3(N__6144),
            .lcout(data_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6482),
            .ce(),
            .sr(_gnd_net_));
    defparam i5_4_lut_adj_10_LC_22_15_2.C_ON=1'b0;
    defparam i5_4_lut_adj_10_LC_22_15_2.SEQ_MODE=4'b0000;
    defparam i5_4_lut_adj_10_LC_22_15_2.LUT_INIT=16'b1111111111111110;
    LogicCell40 i5_4_lut_adj_10_LC_22_15_2 (
            .in0(N__4371),
            .in1(N__4446),
            .in2(N__4362),
            .in3(N__5310),
            .lcout(n13),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i4_2_lut_LC_22_15_3.C_ON=1'b0;
    defparam i4_2_lut_LC_22_15_3.SEQ_MODE=4'b0000;
    defparam i4_2_lut_LC_22_15_3.LUT_INIT=16'b1111111111001100;
    LogicCell40 i4_2_lut_LC_22_15_3 (
            .in0(_gnd_net_),
            .in1(N__4425),
            .in2(_gnd_net_),
            .in3(N__4332),
            .lcout(n12),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i4_LC_22_15_4 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i4_LC_22_15_4 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i4_LC_22_15_4 .LUT_INIT=16'b1010101010111000;
    LogicCell40 \eeprom.i2c.data_out_i0_i4_LC_22_15_4  (
            .in0(N__4331),
            .in1(N__4670),
            .in2(N__5446),
            .in3(N__4436),
            .lcout(data_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6482),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_adj_7_LC_22_15_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_adj_7_LC_22_15_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_adj_7_LC_22_15_5 .LUT_INIT=16'b1111111110101010;
    LogicCell40 \eeprom.i2c.i1_2_lut_adj_7_LC_22_15_5  (
            .in0(N__6669),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__5072),
            .lcout(n1718),
            .ltout(n1718_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i2_LC_22_15_6 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i2_LC_22_15_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i2_LC_22_15_6 .LUT_INIT=16'b1100110011001010;
    LogicCell40 \eeprom.i2c.data_out_i0_i2_LC_22_15_6  (
            .in0(N__5432),
            .in1(N__4445),
            .in2(N__4449),
            .in3(N__4766),
            .lcout(data_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6482),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i6_LC_22_15_7 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i6_LC_22_15_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i6_LC_22_15_7 .LUT_INIT=16'b1101100011001100;
    LogicCell40 \eeprom.i2c.data_out_i0_i6_LC_22_15_7  (
            .in0(N__4437),
            .in1(N__4424),
            .in2(N__5445),
            .in3(N__4653),
            .lcout(data_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6482),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.enable_slow_120_LC_22_16_0 .C_ON=1'b0;
    defparam \eeprom.i2c.enable_slow_120_LC_22_16_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.enable_slow_120_LC_22_16_0 .LUT_INIT=16'b0000000111111111;
    LogicCell40 \eeprom.i2c.enable_slow_120_LC_22_16_0  (
            .in0(N__5880),
            .in1(N__5523),
            .in2(N__6125),
            .in3(N__4843),
            .lcout(state_7_N_270_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6744),
            .ce(N__4572),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.write_enable_131_LC_23_11_3 .C_ON=1'b0;
    defparam \eeprom.i2c.write_enable_131_LC_23_11_3 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.write_enable_131_LC_23_11_3 .LUT_INIT=16'b0000000000100010;
    LogicCell40 \eeprom.i2c.write_enable_131_LC_23_11_3  (
            .in0(N__4901),
            .in1(N__5859),
            .in2(_gnd_net_),
            .in3(N__5724),
            .lcout(sda_enable),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.write_enable_131C_net ),
            .ce(N__4404),
            .sr(N__4416));
    defparam \eeprom.i2c.i1_3_lut_adj_4_LC_23_12_0 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_3_lut_adj_4_LC_23_12_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_3_lut_adj_4_LC_23_12_0 .LUT_INIT=16'b0011001100100010;
    LogicCell40 \eeprom.i2c.i1_3_lut_adj_4_LC_23_12_0  (
            .in0(N__6248),
            .in1(N__6095),
            .in2(_gnd_net_),
            .in3(N__4509),
            .lcout(\eeprom.i2c.n1928 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2129_2_lut_LC_23_12_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i2129_2_lut_LC_23_12_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2129_2_lut_LC_23_12_1 .LUT_INIT=16'b0000000011001100;
    LogicCell40 \eeprom.i2c.i2129_2_lut_LC_23_12_1  (
            .in0(_gnd_net_),
            .in1(N__4789),
            .in2(_gnd_net_),
            .in3(N__6186),
            .lcout(),
            .ltout(\eeprom.i2c.n3130_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2128_4_lut_LC_23_12_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i2128_4_lut_LC_23_12_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2128_4_lut_LC_23_12_2 .LUT_INIT=16'b1001100000000000;
    LogicCell40 \eeprom.i2c.i2128_4_lut_LC_23_12_2  (
            .in0(N__6228),
            .in1(N__6665),
            .in2(N__4407),
            .in3(N__6097),
            .lcout(\eeprom.i2c.n3123 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2152_4_lut_4_lut_LC_23_12_7 .C_ON=1'b0;
    defparam \eeprom.i2c.i2152_4_lut_4_lut_LC_23_12_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2152_4_lut_4_lut_LC_23_12_7 .LUT_INIT=16'b1100110011000100;
    LogicCell40 \eeprom.i2c.i2152_4_lut_4_lut_LC_23_12_7  (
            .in0(N__6096),
            .in1(N__4497),
            .in2(N__4900),
            .in3(N__5690),
            .lcout(\eeprom.i2c.n1153 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_i0_i0_LC_23_13_1 .C_ON=1'b0;
    defparam \eeprom.i2c.state_i0_i0_LC_23_13_1 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.state_i0_i0_LC_23_13_1 .LUT_INIT=16'b0011001100110111;
    LogicCell40 \eeprom.i2c.state_i0_i0_LC_23_13_1  (
            .in0(N__5801),
            .in1(N__4806),
            .in2(N__4641),
            .in3(N__6058),
            .lcout(\eeprom.state_0_adj_384 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6432),
            .ce(N__4750),
            .sr(N__4599));
    defparam \eeprom.i2c.i56_3_lut_3_lut_LC_23_13_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i56_3_lut_3_lut_LC_23_13_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i56_3_lut_3_lut_LC_23_13_2 .LUT_INIT=16'b0100010001100110;
    LogicCell40 \eeprom.i2c.i56_3_lut_3_lut_LC_23_13_2  (
            .in0(N__5948),
            .in1(N__5797),
            .in2(_gnd_net_),
            .in3(N__5663),
            .lcout(\eeprom.i2c.n33 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_4_lut_4_lut_LC_23_13_3 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_4_lut_4_lut_LC_23_13_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_4_lut_4_lut_LC_23_13_3 .LUT_INIT=16'b0001001100010010;
    LogicCell40 \eeprom.i2c.i1_4_lut_4_lut_LC_23_13_3  (
            .in0(N__5664),
            .in1(N__5949),
            .in2(N__5845),
            .in3(N__6055),
            .lcout(\eeprom.i2c.n37 ),
            .ltout(\eeprom.i2c.n37_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_3_lut_LC_23_13_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_3_lut_LC_23_13_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_3_lut_LC_23_13_4 .LUT_INIT=16'b1111010111110000;
    LogicCell40 \eeprom.i2c.i1_3_lut_LC_23_13_4  (
            .in0(N__6056),
            .in1(_gnd_net_),
            .in2(N__4512),
            .in3(N__4508),
            .lcout(\eeprom.i2c.n39 ),
            .ltout(\eeprom.i2c.n39_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2148_4_lut_LC_23_13_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i2148_4_lut_LC_23_13_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2148_4_lut_LC_23_13_5 .LUT_INIT=16'b0001000011110000;
    LogicCell40 \eeprom.i2c.i2148_4_lut_LC_23_13_5  (
            .in0(N__5665),
            .in1(N__4458),
            .in2(N__4491),
            .in3(N__6057),
            .lcout(\eeprom.i2c.n2967 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_i0_i3_LC_23_14_0 .C_ON=1'b0;
    defparam \eeprom.i2c.state_i0_i3_LC_23_14_0 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.state_i0_i3_LC_23_14_0 .LUT_INIT=16'b1101100000000000;
    LogicCell40 \eeprom.i2c.state_i0_i3_LC_23_14_0  (
            .in0(N__5804),
            .in1(N__4488),
            .in2(N__4482),
            .in3(N__6094),
            .lcout(\eeprom.state_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6458),
            .ce(N__4749),
            .sr(N__4467));
    defparam \eeprom.i2c.i1_3_lut_3_lut_LC_23_14_3 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_3_lut_3_lut_LC_23_14_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_3_lut_3_lut_LC_23_14_3 .LUT_INIT=16'b0000000011001100;
    LogicCell40 \eeprom.i2c.i1_3_lut_3_lut_LC_23_14_3  (
            .in0(_gnd_net_),
            .in1(N__5803),
            .in2(_gnd_net_),
            .in3(N__5951),
            .lcout(\eeprom.i2c.n13 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_7__I_0_143_i11_2_lut_3_lut_4_lut_LC_23_15_0 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_143_i11_2_lut_3_lut_4_lut_LC_23_15_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_143_i11_2_lut_3_lut_4_lut_LC_23_15_0 .LUT_INIT=16'b1111110111111111;
    LogicCell40 \eeprom.i2c.state_7__I_0_143_i11_2_lut_3_lut_4_lut_LC_23_15_0  (
            .in0(N__5703),
            .in1(N__5851),
            .in2(N__5975),
            .in3(N__6076),
            .lcout(\eeprom.i2c.n15 ),
            .ltout(\eeprom.i2c.n15_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1433_4_lut_LC_23_15_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i1433_4_lut_LC_23_15_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1433_4_lut_LC_23_15_1 .LUT_INIT=16'b1111000010110000;
    LogicCell40 \eeprom.i2c.i1433_4_lut_LC_23_15_1  (
            .in0(N__5468),
            .in1(N__5958),
            .in2(N__4452),
            .in3(N__5705),
            .lcout(\eeprom.i2c.n2358 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1427_2_lut_LC_23_15_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i1427_2_lut_LC_23_15_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1427_2_lut_LC_23_15_2 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \eeprom.i2c.i1427_2_lut_LC_23_15_2  (
            .in0(_gnd_net_),
            .in1(N__5847),
            .in2(_gnd_net_),
            .in3(N__6074),
            .lcout(\eeprom.i2c.n2352 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_7__I_0_138_i11_2_lut_3_lut_4_lut_LC_23_15_3 .C_ON=1'b0;
    defparam \eeprom.i2c.state_7__I_0_138_i11_2_lut_3_lut_4_lut_LC_23_15_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.state_7__I_0_138_i11_2_lut_3_lut_4_lut_LC_23_15_3 .LUT_INIT=16'b1111111111111101;
    LogicCell40 \eeprom.i2c.state_7__I_0_138_i11_2_lut_3_lut_4_lut_LC_23_15_3  (
            .in0(N__6075),
            .in1(N__5953),
            .in2(N__5874),
            .in3(N__5702),
            .lcout(\eeprom.i2c.n11_adj_378 ),
            .ltout(\eeprom.i2c.n11_adj_378_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_4_lut_LC_23_15_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_4_lut_LC_23_15_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_4_lut_LC_23_15_4 .LUT_INIT=16'b0000110001001100;
    LogicCell40 \eeprom.i2c.i1_4_lut_LC_23_15_4  (
            .in0(N__4637),
            .in1(N__6279),
            .in2(N__4626),
            .in3(N__5852),
            .lcout(),
            .ltout(\eeprom.i2c.n1734_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2162_4_lut_LC_23_15_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i2162_4_lut_LC_23_15_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2162_4_lut_LC_23_15_5 .LUT_INIT=16'b0000001100000111;
    LogicCell40 \eeprom.i2c.i2162_4_lut_LC_23_15_5  (
            .in0(N__4623),
            .in1(N__5957),
            .in2(N__4617),
            .in3(N__5704),
            .lcout(\eeprom.i2c.n1063 ),
            .ltout(\eeprom.i2c.n1063_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i996_4_lut_LC_23_15_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i996_4_lut_LC_23_15_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i996_4_lut_LC_23_15_6 .LUT_INIT=16'b0011000010110000;
    LogicCell40 \eeprom.i2c.i996_4_lut_LC_23_15_6  (
            .in0(N__4850),
            .in1(N__4614),
            .in2(N__4602),
            .in3(N__4991),
            .lcout(\eeprom.i2c.n1923 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_40_i10_2_lut_LC_23_15_7 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_40_i10_2_lut_LC_23_15_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_40_i10_2_lut_LC_23_15_7 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \eeprom.i2c.equal_40_i10_2_lut_LC_23_15_7  (
            .in0(_gnd_net_),
            .in1(N__5952),
            .in2(_gnd_net_),
            .in3(N__5701),
            .lcout(\eeprom.n10 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_3_lut_4_lut_LC_23_16_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_3_lut_4_lut_LC_23_16_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_3_lut_4_lut_LC_23_16_4 .LUT_INIT=16'b1111111111001000;
    LogicCell40 \eeprom.i2c.i1_2_lut_3_lut_4_lut_LC_23_16_4  (
            .in0(N__5234),
            .in1(N__4842),
            .in2(N__5531),
            .in3(N__4589),
            .lcout(\eeprom.i2c.n1761 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_adj_3_LC_23_16_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_adj_3_LC_23_16_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_adj_3_LC_23_16_5 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \eeprom.i2c.i1_2_lut_adj_3_LC_23_16_5  (
            .in0(_gnd_net_),
            .in1(N__6106),
            .in2(_gnd_net_),
            .in3(N__5709),
            .lcout(),
            .ltout(\eeprom.n26_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i3_4_lut_LC_23_16_6 .C_ON=1'b0;
    defparam \eeprom.i3_4_lut_LC_23_16_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i3_4_lut_LC_23_16_6 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i3_4_lut_LC_23_16_6  (
            .in0(N__4560),
            .in1(N__5867),
            .in2(N__4533),
            .in3(N__5987),
            .lcout(n2913),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.sda_out_132_LC_24_12_3 .C_ON=1'b0;
    defparam \eeprom.i2c.sda_out_132_LC_24_12_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.sda_out_132_LC_24_12_3 .LUT_INIT=16'b0000000000111010;
    LogicCell40 \eeprom.i2c.sda_out_132_LC_24_12_3  (
            .in0(N__4530),
            .in1(N__5835),
            .in2(N__4902),
            .in3(N__5725),
            .lcout(\eeprom.i2c.sda_out_adj_375 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.sda_out_132C_net ),
            .ce(N__4524),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i22_3_lut_3_lut_LC_24_13_3 .C_ON=1'b0;
    defparam \eeprom.i2c.i22_3_lut_3_lut_LC_24_13_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i22_3_lut_3_lut_LC_24_13_3 .LUT_INIT=16'b0001000110101010;
    LogicCell40 \eeprom.i2c.i22_3_lut_3_lut_LC_24_13_3  (
            .in0(N__5802),
            .in1(N__6059),
            .in2(_gnd_net_),
            .in3(N__5950),
            .lcout(\eeprom.i2c.n11 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.saved_addr__i1_LC_24_13_7 .C_ON=1'b0;
    defparam \eeprom.i2c.saved_addr__i1_LC_24_13_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.saved_addr__i1_LC_24_13_7 .LUT_INIT=16'b1110111100100000;
    LogicCell40 \eeprom.i2c.saved_addr__i1_LC_24_13_7  (
            .in0(N__4875),
            .in1(N__5006),
            .in2(N__4857),
            .in3(N__4790),
            .lcout(saved_addr_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6431),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.state_i0_i1_LC_24_14_0 .C_ON=1'b0;
    defparam \eeprom.i2c.state_i0_i1_LC_24_14_0 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.state_i0_i1_LC_24_14_0 .LUT_INIT=16'b0011011100110011;
    LogicCell40 \eeprom.i2c.state_i0_i1_LC_24_14_0  (
            .in0(N__4821),
            .in1(N__4805),
            .in2(N__5453),
            .in3(N__4791),
            .lcout(\eeprom.state_1_adj_386 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6476),
            .ce(N__4751),
            .sr(N__4686));
    defparam \eeprom.i2c.equal_58_i4_2_lut_LC_24_15_0 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_58_i4_2_lut_LC_24_15_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_58_i4_2_lut_LC_24_15_0 .LUT_INIT=16'b1111000011111111;
    LogicCell40 \eeprom.i2c.equal_58_i4_2_lut_LC_24_15_0  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__6236),
            .in3(N__6187),
            .lcout(n4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_42_i9_2_lut_LC_24_15_1 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_42_i9_2_lut_LC_24_15_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_42_i9_2_lut_LC_24_15_1 .LUT_INIT=16'b1100110011111111;
    LogicCell40 \eeprom.i2c.equal_42_i9_2_lut_LC_24_15_1  (
            .in0(_gnd_net_),
            .in1(N__6070),
            .in2(_gnd_net_),
            .in3(N__5846),
            .lcout(\eeprom.i2c.n9_adj_377 ),
            .ltout(\eeprom.i2c.n9_adj_377_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2181_4_lut_LC_24_15_2 .C_ON=1'b0;
    defparam \eeprom.i2c.i2181_4_lut_LC_24_15_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2181_4_lut_LC_24_15_2 .LUT_INIT=16'b0000010000001100;
    LogicCell40 \eeprom.i2c.i2181_4_lut_LC_24_15_2  (
            .in0(N__5967),
            .in1(N__4720),
            .in2(N__4689),
            .in3(N__5730),
            .lcout(\eeprom.i2c.n3050 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_56_i4_2_lut_LC_24_15_3 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_56_i4_2_lut_LC_24_15_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_56_i4_2_lut_LC_24_15_3 .LUT_INIT=16'b1011101110111011;
    LogicCell40 \eeprom.i2c.equal_56_i4_2_lut_LC_24_15_3  (
            .in0(N__6189),
            .in1(N__6229),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(n4_adj_389),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1419_2_lut_LC_24_15_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i1419_2_lut_LC_24_15_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1419_2_lut_LC_24_15_4 .LUT_INIT=16'b1111000000000000;
    LogicCell40 \eeprom.i2c.i1419_2_lut_LC_24_15_4  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__6237),
            .in3(N__6188),
            .lcout(n2344),
            .ltout(n2344_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i7_LC_24_15_5 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i7_LC_24_15_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i7_LC_24_15_5 .LUT_INIT=16'b1100110010101100;
    LogicCell40 \eeprom.i2c.data_out_i0_i7_LC_24_15_5  (
            .in0(N__5454),
            .in1(N__5033),
            .in2(N__4644),
            .in3(N__5343),
            .lcout(data_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6475),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_40_i11_2_lut_4_lut_LC_24_15_6 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_40_i11_2_lut_4_lut_LC_24_15_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_40_i11_2_lut_4_lut_LC_24_15_6 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i2c.equal_40_i11_2_lut_4_lut_LC_24_15_6  (
            .in0(N__5966),
            .in1(N__5858),
            .in2(N__6101),
            .in3(N__5729),
            .lcout(enable_slow_N_373),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i1492_2_lut_3_lut_4_lut_LC_24_16_0 .C_ON=1'b0;
    defparam \eeprom.i1492_2_lut_3_lut_4_lut_LC_24_16_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i1492_2_lut_3_lut_4_lut_LC_24_16_0 .LUT_INIT=16'b1111111111111011;
    LogicCell40 \eeprom.i1492_2_lut_3_lut_4_lut_LC_24_16_0  (
            .in0(N__5123),
            .in1(N__5187),
            .in2(N__5532),
            .in3(N__5232),
            .lcout(n2382),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1400_2_lut_LC_24_16_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i1400_2_lut_LC_24_16_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1400_2_lut_LC_24_16_1 .LUT_INIT=16'b1111111110101010;
    LogicCell40 \eeprom.i2c.i1400_2_lut_LC_24_16_1  (
            .in0(N__6105),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__5882),
            .lcout(\eeprom.n9 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i28_3_lut_LC_24_16_2 .C_ON=1'b0;
    defparam \eeprom.i28_3_lut_LC_24_16_2 .SEQ_MODE=4'b0000;
    defparam \eeprom.i28_3_lut_LC_24_16_2 .LUT_INIT=16'b0100010011101110;
    LogicCell40 \eeprom.i28_3_lut_LC_24_16_2  (
            .in0(N__5121),
            .in1(N__4943),
            .in2(_gnd_net_),
            .in3(N__4957),
            .lcout(),
            .ltout(\eeprom.n14_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2126_4_lut_LC_24_16_3 .C_ON=1'b0;
    defparam \eeprom.i2126_4_lut_LC_24_16_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2126_4_lut_LC_24_16_3 .LUT_INIT=16'b0101000001110010;
    LogicCell40 \eeprom.i2126_4_lut_LC_24_16_3  (
            .in0(N__5189),
            .in1(N__5007),
            .in2(N__4971),
            .in3(N__5125),
            .lcout(\eeprom.n3142 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i2_3_lut_4_lut_LC_24_16_4.C_ON=1'b0;
    defparam i2_3_lut_4_lut_LC_24_16_4.SEQ_MODE=4'b0000;
    defparam i2_3_lut_4_lut_LC_24_16_4.LUT_INIT=16'b0000000000100010;
    LogicCell40 i2_3_lut_4_lut_LC_24_16_4 (
            .in0(N__5126),
            .in1(N__5188),
            .in2(_gnd_net_),
            .in3(N__4959),
            .lcout(),
            .ltout(n3051_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.state__i1_LC_24_16_5 .C_ON=1'b0;
    defparam \eeprom.state__i1_LC_24_16_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.state__i1_LC_24_16_5 .LUT_INIT=16'b1100100011000000;
    LogicCell40 \eeprom.state__i1_LC_24_16_5  (
            .in0(N__5190),
            .in1(N__4968),
            .in2(N__4962),
            .in3(N__4908),
            .lcout(state_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6748),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i546_3_lut_3_lut_4_lut_LC_24_16_6 .C_ON=1'b0;
    defparam \eeprom.i546_3_lut_3_lut_4_lut_LC_24_16_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i546_3_lut_3_lut_4_lut_LC_24_16_6 .LUT_INIT=16'b1100110011001000;
    LogicCell40 \eeprom.i546_3_lut_3_lut_4_lut_LC_24_16_6  (
            .in0(N__5122),
            .in1(N__5186),
            .in2(N__5533),
            .in3(N__5233),
            .lcout(),
            .ltout(n1113_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i2_4_lut_LC_24_16_7.C_ON=1'b0;
    defparam i2_4_lut_LC_24_16_7.SEQ_MODE=4'b0000;
    defparam i2_4_lut_LC_24_16_7.LUT_INIT=16'b1111100011111111;
    LogicCell40 i2_4_lut_LC_24_16_7 (
            .in0(N__4958),
            .in1(N__5124),
            .in2(N__4947),
            .in3(N__4944),
            .lcout(n3109),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.state__i0_LC_24_17_6 .C_ON=1'b0;
    defparam \eeprom.state__i0_LC_24_17_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.state__i0_LC_24_17_6 .LUT_INIT=16'b0011001000110011;
    LogicCell40 \eeprom.state__i0_LC_24_17_6  (
            .in0(N__5235),
            .in1(N__5133),
            .in2(N__5540),
            .in3(N__5191),
            .lcout(state_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6745),
            .ce(N__5082),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2c_clk_121_LC_26_13_0 .C_ON=1'b0;
    defparam \eeprom.i2c.i2c_clk_121_LC_26_13_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.i2c_clk_121_LC_26_13_0 .LUT_INIT=16'b0011001111001100;
    LogicCell40 \eeprom.i2c.i2c_clk_121_LC_26_13_0  (
            .in0(_gnd_net_),
            .in1(N__6367),
            .in2(_gnd_net_),
            .in3(N__6680),
            .lcout(\eeprom.i2c.i2c_clk ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6749),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i4_4_lut_LC_26_13_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i4_4_lut_LC_26_13_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i4_4_lut_LC_26_13_6 .LUT_INIT=16'b1000000000000000;
    LogicCell40 \eeprom.i2c.i4_4_lut_LC_26_13_6  (
            .in0(N__5579),
            .in1(N__6761),
            .in2(N__6783),
            .in3(N__5564),
            .lcout(),
            .ltout(\eeprom.i2c.n10_adj_380_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i5_3_lut_LC_26_13_7 .C_ON=1'b0;
    defparam \eeprom.i2c.i5_3_lut_LC_26_13_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i5_3_lut_LC_26_13_7 .LUT_INIT=16'b1100000000000000;
    LogicCell40 \eeprom.i2c.i5_3_lut_LC_26_13_7  (
            .in0(_gnd_net_),
            .in1(N__5595),
            .in2(N__5076),
            .in3(N__5610),
            .lcout(\eeprom.i2c.n1930 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_adj_8_LC_26_14_0 .C_ON=1'b1;
    defparam \eeprom.i2c.i1_2_lut_adj_8_LC_26_14_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_adj_8_LC_26_14_0 .LUT_INIT=16'b1111111100110011;
    LogicCell40 \eeprom.i2c.i1_2_lut_adj_8_LC_26_14_0  (
            .in0(_gnd_net_),
            .in1(N__6657),
            .in2(_gnd_net_),
            .in3(N__5073),
            .lcout(n1723),
            .ltout(),
            .carryin(bfn_26_14_0_),
            .carryout(\eeprom.i2c.n2849 ),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.counter_i1_LC_26_14_1 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i1_LC_26_14_1 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.counter_i1_LC_26_14_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i1_LC_26_14_1  (
            .in0(_gnd_net_),
            .in1(N__6567),
            .in2(N__6178),
            .in3(N__5055),
            .lcout(\eeprom.i2c.counter_1 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2849 ),
            .carryout(\eeprom.i2c.n2850 ),
            .clk(N__6368),
            .ce(N__6629),
            .sr(N__6599));
    defparam \eeprom.i2c.counter_i2_LC_26_14_2 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i2_LC_26_14_2 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.counter_i2_LC_26_14_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i2_LC_26_14_2  (
            .in0(_gnd_net_),
            .in1(N__6214),
            .in2(N__6580),
            .in3(N__5052),
            .lcout(\eeprom.i2c.counter_2 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2850 ),
            .carryout(\eeprom.i2c.n2851 ),
            .clk(N__6368),
            .ce(N__6629),
            .sr(N__6599));
    defparam \eeprom.i2c.counter_i3_LC_26_14_3 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i3_LC_26_14_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i3_LC_26_14_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i3_LC_26_14_3  (
            .in0(_gnd_net_),
            .in1(N__6571),
            .in2(N__5280),
            .in3(N__5049),
            .lcout(\eeprom.i2c.counter_3 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2851 ),
            .carryout(\eeprom.i2c.n2852 ),
            .clk(N__6368),
            .ce(N__6629),
            .sr(N__6599));
    defparam \eeprom.i2c.counter_i4_LC_26_14_4 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i4_LC_26_14_4 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i4_LC_26_14_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i4_LC_26_14_4  (
            .in0(_gnd_net_),
            .in1(N__6294),
            .in2(N__6581),
            .in3(N__5046),
            .lcout(\eeprom.i2c.counter_4 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2852 ),
            .carryout(\eeprom.i2c.n2853 ),
            .clk(N__6368),
            .ce(N__6629),
            .sr(N__6599));
    defparam \eeprom.i2c.counter_i5_LC_26_14_5 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i5_LC_26_14_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i5_LC_26_14_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i5_LC_26_14_5  (
            .in0(_gnd_net_),
            .in1(N__6575),
            .in2(N__5265),
            .in3(N__5550),
            .lcout(\eeprom.i2c.counter_5 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2853 ),
            .carryout(\eeprom.i2c.n2854 ),
            .clk(N__6368),
            .ce(N__6629),
            .sr(N__6599));
    defparam \eeprom.i2c.counter_i6_LC_26_14_6 .C_ON=1'b1;
    defparam \eeprom.i2c.counter_i6_LC_26_14_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i6_LC_26_14_6 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter_i6_LC_26_14_6  (
            .in0(_gnd_net_),
            .in1(N__5292),
            .in2(N__6582),
            .in3(N__5547),
            .lcout(\eeprom.i2c.counter_6 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2854 ),
            .carryout(\eeprom.i2c.n2855 ),
            .clk(N__6368),
            .ce(N__6629),
            .sr(N__6599));
    defparam \eeprom.i2c.counter_i7_LC_26_14_7 .C_ON=1'b0;
    defparam \eeprom.i2c.counter_i7_LC_26_14_7 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter_i7_LC_26_14_7 .LUT_INIT=16'b1001100101100110;
    LogicCell40 \eeprom.i2c.counter_i7_LC_26_14_7  (
            .in0(N__5247),
            .in1(N__6579),
            .in2(_gnd_net_),
            .in3(N__5544),
            .lcout(\eeprom.i2c.counter_7 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6368),
            .ce(N__6629),
            .sr(N__6599));
    defparam \eeprom.i2c.i2024_2_lut_3_lut_LC_26_15_0 .C_ON=1'b0;
    defparam \eeprom.i2c.i2024_2_lut_3_lut_LC_26_15_0 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2024_2_lut_3_lut_LC_26_15_0 .LUT_INIT=16'b1010101010001000;
    LogicCell40 \eeprom.i2c.i2024_2_lut_3_lut_LC_26_15_0  (
            .in0(N__5411),
            .in1(N__5530),
            .in2(_gnd_net_),
            .in3(N__5472),
            .lcout(\eeprom.i2c.n3039 ),
            .ltout(\eeprom.i2c.n3039_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2008_2_lut_4_lut_LC_26_15_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i2008_2_lut_4_lut_LC_26_15_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i2008_2_lut_4_lut_LC_26_15_1 .LUT_INIT=16'b0000000000000010;
    LogicCell40 \eeprom.i2c.i2008_2_lut_4_lut_LC_26_15_1  (
            .in0(N__5876),
            .in1(N__5989),
            .in2(N__5457),
            .in3(N__5727),
            .lcout(\eeprom.i2c.n1924 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.data_out_i0_i1_LC_26_15_2 .C_ON=1'b0;
    defparam \eeprom.i2c.data_out_i0_i1_LC_26_15_2 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.data_out_i0_i1_LC_26_15_2 .LUT_INIT=16'b1111111000000100;
    LogicCell40 \eeprom.i2c.data_out_i0_i1_LC_26_15_2  (
            .in0(N__6140),
            .in1(N__5410),
            .in2(N__5337),
            .in3(N__5303),
            .lcout(data_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6446),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1_2_lut_3_lut_LC_26_15_3 .C_ON=1'b0;
    defparam \eeprom.i2c.i1_2_lut_3_lut_LC_26_15_3 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1_2_lut_3_lut_LC_26_15_3 .LUT_INIT=16'b0000000000100010;
    LogicCell40 \eeprom.i2c.i1_2_lut_3_lut_LC_26_15_3  (
            .in0(N__5875),
            .in1(N__5988),
            .in2(_gnd_net_),
            .in3(N__5726),
            .lcout(\eeprom.i2c.n1172 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i5_4_lut_LC_26_15_4 .C_ON=1'b0;
    defparam \eeprom.i2c.i5_4_lut_LC_26_15_4 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i5_4_lut_LC_26_15_4 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i2c.i5_4_lut_LC_26_15_4  (
            .in0(N__5291),
            .in1(N__5276),
            .in2(N__5264),
            .in3(N__6651),
            .lcout(),
            .ltout(\eeprom.i2c.n12_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i6_4_lut_LC_26_15_5 .C_ON=1'b0;
    defparam \eeprom.i2c.i6_4_lut_LC_26_15_5 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i6_4_lut_LC_26_15_5 .LUT_INIT=16'b1111111111111110;
    LogicCell40 \eeprom.i2c.i6_4_lut_LC_26_15_5  (
            .in0(N__5246),
            .in1(N__6293),
            .in2(N__6282),
            .in3(N__6139),
            .lcout(\eeprom.i2c.n1056 ),
            .ltout(\eeprom.i2c.n1056_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i17_4_lut_LC_26_15_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i17_4_lut_LC_26_15_6 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i17_4_lut_LC_26_15_6 .LUT_INIT=16'b0111001000100010;
    LogicCell40 \eeprom.i2c.i17_4_lut_LC_26_15_6  (
            .in0(N__6270),
            .in1(N__6264),
            .in2(N__6258),
            .in3(N__6255),
            .lcout(\eeprom.i2c.n1757 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.equal_59_i4_2_lut_LC_26_15_7 .C_ON=1'b0;
    defparam \eeprom.i2c.equal_59_i4_2_lut_LC_26_15_7 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.equal_59_i4_2_lut_LC_26_15_7 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \eeprom.i2c.equal_59_i4_2_lut_LC_26_15_7  (
            .in0(_gnd_net_),
            .in1(N__6210),
            .in2(_gnd_net_),
            .in3(N__6165),
            .lcout(n4_adj_390),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i2c_scl_enable_123_LC_26_16_6 .C_ON=1'b0;
    defparam \eeprom.i2c.i2c_scl_enable_123_LC_26_16_6 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.i2c_scl_enable_123_LC_26_16_6 .LUT_INIT=16'b1111111111101010;
    LogicCell40 \eeprom.i2c.i2c_scl_enable_123_LC_26_16_6  (
            .in0(N__6117),
            .in1(N__5994),
            .in2(N__5883),
            .in3(N__5728),
            .lcout(scl_enable),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(\INVeeprom.i2c.i2c_scl_enable_123C_net ),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.counter2_411_412__i1_LC_27_13_0 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_411_412__i1_LC_27_13_0 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_411_412__i1_LC_27_13_0 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_411_412__i1_LC_27_13_0  (
            .in0(_gnd_net_),
            .in1(N__5609),
            .in2(_gnd_net_),
            .in3(N__5598),
            .lcout(\eeprom.i2c.counter2_0 ),
            .ltout(),
            .carryin(bfn_27_13_0_),
            .carryout(\eeprom.i2c.n2871 ),
            .clk(N__6750),
            .ce(),
            .sr(N__6687));
    defparam \eeprom.i2c.counter2_411_412__i2_LC_27_13_1 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_411_412__i2_LC_27_13_1 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_411_412__i2_LC_27_13_1 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_411_412__i2_LC_27_13_1  (
            .in0(_gnd_net_),
            .in1(N__5594),
            .in2(_gnd_net_),
            .in3(N__5583),
            .lcout(\eeprom.i2c.counter2_1 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2871 ),
            .carryout(\eeprom.i2c.n2872 ),
            .clk(N__6750),
            .ce(),
            .sr(N__6687));
    defparam \eeprom.i2c.counter2_411_412__i3_LC_27_13_2 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_411_412__i3_LC_27_13_2 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_411_412__i3_LC_27_13_2 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_411_412__i3_LC_27_13_2  (
            .in0(_gnd_net_),
            .in1(N__5580),
            .in2(_gnd_net_),
            .in3(N__5568),
            .lcout(\eeprom.i2c.counter2_2 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2872 ),
            .carryout(\eeprom.i2c.n2873 ),
            .clk(N__6750),
            .ce(),
            .sr(N__6687));
    defparam \eeprom.i2c.counter2_411_412__i4_LC_27_13_3 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_411_412__i4_LC_27_13_3 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_411_412__i4_LC_27_13_3 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_411_412__i4_LC_27_13_3  (
            .in0(_gnd_net_),
            .in1(N__5565),
            .in2(_gnd_net_),
            .in3(N__5553),
            .lcout(\eeprom.i2c.counter2_3 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2873 ),
            .carryout(\eeprom.i2c.n2874 ),
            .clk(N__6750),
            .ce(),
            .sr(N__6687));
    defparam \eeprom.i2c.counter2_411_412__i5_LC_27_13_4 .C_ON=1'b1;
    defparam \eeprom.i2c.counter2_411_412__i5_LC_27_13_4 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_411_412__i5_LC_27_13_4 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_411_412__i5_LC_27_13_4  (
            .in0(_gnd_net_),
            .in1(N__6782),
            .in2(_gnd_net_),
            .in3(N__6768),
            .lcout(\eeprom.i2c.counter2_4 ),
            .ltout(),
            .carryin(\eeprom.i2c.n2874 ),
            .carryout(\eeprom.i2c.n2875 ),
            .clk(N__6750),
            .ce(),
            .sr(N__6687));
    defparam \eeprom.i2c.counter2_411_412__i6_LC_27_13_5 .C_ON=1'b0;
    defparam \eeprom.i2c.counter2_411_412__i6_LC_27_13_5 .SEQ_MODE=4'b1000;
    defparam \eeprom.i2c.counter2_411_412__i6_LC_27_13_5 .LUT_INIT=16'b1100001100111100;
    LogicCell40 \eeprom.i2c.counter2_411_412__i6_LC_27_13_5  (
            .in0(_gnd_net_),
            .in1(N__6762),
            .in2(_gnd_net_),
            .in3(N__6765),
            .lcout(\eeprom.i2c.counter2_5 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6750),
            .ce(),
            .sr(N__6687));
    defparam \eeprom.i2c.counter_i0_LC_27_14_0 .C_ON=1'b0;
    defparam \eeprom.i2c.counter_i0_LC_27_14_0 .SEQ_MODE=4'b1001;
    defparam \eeprom.i2c.counter_i0_LC_27_14_0 .LUT_INIT=16'b1010010101011010;
    LogicCell40 \eeprom.i2c.counter_i0_LC_27_14_0  (
            .in0(N__6566),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__6658),
            .lcout(\eeprom.i2c.counter_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__6391),
            .ce(N__6630),
            .sr(N__6606));
    defparam CONSTANT_ONE_LUT4_LC_27_15_0.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_27_15_0.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_27_15_0.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_27_15_0 (
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
    defparam \eeprom.i2c.i471_2_lut_LC_30_7_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i471_2_lut_LC_30_7_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i471_2_lut_LC_30_7_1 .LUT_INIT=16'b1100110000000000;
    LogicCell40 \eeprom.i2c.i471_2_lut_LC_30_7_1  (
            .in0(_gnd_net_),
            .in1(N__6543),
            .in2(_gnd_net_),
            .in3(N__6518),
            .lcout(sda_out),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \eeprom.i2c.i1404_2_lut_LC_32_20_1 .C_ON=1'b0;
    defparam \eeprom.i2c.i1404_2_lut_LC_32_20_1 .SEQ_MODE=4'b0000;
    defparam \eeprom.i2c.i1404_2_lut_LC_32_20_1 .LUT_INIT=16'b1100110011111111;
    LogicCell40 \eeprom.i2c.i1404_2_lut_LC_32_20_1  (
            .in0(_gnd_net_),
            .in1(N__6477),
            .in2(_gnd_net_),
            .in3(N__6326),
            .lcout(scl_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // TinyFPGA_B
