Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A2C48FFD7
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 02:08:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642381730;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=75fJlhIfkO/VfXjCAuSBsn5VvJC2p8r+hMWnhP66cxM=;
	b=LDBAWbVWjqtpyMqmQQ37MysRZN7Hlyav/J78wfynjpfg++f3cyn0ze958ZBwCjeXOJyj2z
	vIHUoI2VU7ltOmqPOqcPyjTGtv0fXxmkqduk/Fw9xLKPZGsyMMD6+BB2hXqMy6krNmW5a/
	jAMfRW3DU+q4UyOfSsj2eFPZWPlwrTo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-217-wxprhfJZO4a5lUBkpC1Y7Q-1; Sun, 16 Jan 2022 20:08:46 -0500
X-MC-Unique: wxprhfJZO4a5lUBkpC1Y7Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47AF31083F64;
	Mon, 17 Jan 2022 01:08:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DD226060F;
	Mon, 17 Jan 2022 01:08:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CFE171809CB8;
	Mon, 17 Jan 2022 01:08:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H15RYq001503 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 20:05:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7BFF31410DD5; Mon, 17 Jan 2022 01:05:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76544140EBFE
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 01:05:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 565FE28F43AA
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 01:05:27 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
	(mail-dm6nam08olkn2095.outbound.protection.outlook.com [40.92.45.95])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-29-ZCZ4CPCjMVyYq7aGFfmr2Q-1; Sun, 16 Jan 2022 20:05:25 -0500
X-MC-Unique: ZCZ4CPCjMVyYq7aGFfmr2Q-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by PH0PR14MB4232.namprd14.prod.outlook.com (2603:10b6:510:49::18)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9;
	Mon, 17 Jan 2022 01:05:23 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::fdbf:7949:d13c:6dd1]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::fdbf:7949:d13c:6dd1%6]) with mapi id 15.20.4888.013;
	Mon, 17 Jan 2022 01:05:23 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Getting Started with linux
Thread-Topic: Getting Started with linux
Thread-Index: AQHYCu0WtIRhmWtoJkWVi8/h0tLrIaxlzNIAgACZjVA=
Date: Mon, 17 Jan 2022 01:05:23 +0000
Message-ID: <PH0PR14MB429684C61B04748E06FC0EC4C8579@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<574571f2-a341-c700-d94a-415f76bc936e@gmail.com>
In-Reply-To: <574571f2-a341-c700-d94a-415f76bc936e@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [0XBf5PsZmp4Ly17YiLYxyHlNSTZyZOhw]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6474507d-ba2b-4abd-d95b-08d9d95570ba
x-ms-traffictypediagnostic: PH0PR14MB4232:EE_
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: oGDfk0w6jNN5vnA0vE+p7ktu8TWQdFntm8hNXbfhsaceT4gfspWGLXEYBNpGCzG8zfjip9iXgyxM6HF5+W32vO2RSioKP+V17uQc+NUXb19H5cas/VX1wJOo2LlX6MOK84SOlaN6GC+3m+UDX6fy45BkJHUc0cW59AEHT3P8XybM4rcUSbr+2uIyz3DicaX6Rj0IPV4rpioG8aBBKHSUkWUtmEzHXUkQp0GEOPdv0bdjHqv/ng4asTE9o3S/kDGqARulJYG+hREGG5U0W6NSqf01CMjxAPLVX3KAxFbU+qt4K7WogOnRGrB+KKBIbB36B0fd3BTuWCT4c+Nkv79PHkdn+hoCVrec2I9a2puHrKi1t4zKK+fbXeAwwHpPJnodowz2v9QB+cVEVOy7xX8M7AKa8/47v8aw+gam82jKh671jLOKX2b3EjQsOmKV3eAzqet6zILl1Hj4GzKjJnJxHRN4sqRwLJo7VIInRngFW/mqC1gWMxCIyLBBzeHoDji5pH5yZ5xTSqr+qS9GBD5YU/m3My3BF61ECtmUt2rePsz2LWSpDR/c0SK5Q3dCm1V59x5rMFza62hJ3XN617qp+2nYa2Wca85lQlOBaXhy6HJEWXs7Vlp8AjWWG5R88C4xqiLKxrvY9OuELmGxqJEJp8RMNmTJ3DHFD6FlONx9MKw=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: kHf2XvYpSdnH2Qyx/aytLXXsTcvtXK/PRmMKSgUO8mDIPYeU+wv0wOyLMdFdOrVyfUCsSN75uQX+rV3Z3Lu8XkyTddkC6jMKPOlx32fj9h9XDgO3w4YNDQLd9oss5w+tiqoaYQakiatBudoFOyrGHZCRtQM38mp8TMxgAP9hqJ9x7dfO0P/Ow48xdDRwAk2pf5mqHzftD1rilEUK1W8xYapzd+8Gr15JqpruoLsDV4q9dmfvWL/IYTJ41jM4EgLo8lMqbmXEetjgb+cu3AaRDx1WQDA1wt5fggadn9V+YX62lx9Q0zVuFPzsDgeRloZwgExf493ZMCM4HEtMim6wLpsvllHF/AUg/OBZW0CnODBdAGDT3GmL51y5DFOcdKEhXMkOloNphtv7MawJt9/AG5w43oK2MFWPpE0Dsfz+BgWSjN4E43D1DPJWzgCCEet2F2J401wzTB2txsW7fA8lvGn8lmG1M1+GzKFwCvWTps2xsvTv4xQ1rcN2uZ7ErHIeQv6MurT7d10hJKZ3dw3fg3s3ELl8/q3h/Vv0lAhXcMKDs0Bu4T8x8QfAhhkc9oXfZmHe5dNvzvS0G2GBasz/dW5u+LTifmUial46Yk8+aJ9ORWxmNUEjN4OxEIPJ3H3co3jE+W77+u7ydGdYa6MTJrf4AyCQzb6n+KUdDAQEyETbBQuOogYH8mFmQRNMziHTYGTWO6TWBqvlIYPiLkyekLp2ckkBG/MIWT03OMX1qbhXsjvMQT2TCmMEKTvSjg1eECqe9IP3Z0cjZuSh/aD+xoMGzGW4yxPaSoHLYHnBHoG/NbE09OS44kVVIfzDTNYfBYFshYEg0tMz3I8mQn6DP1yAnm6dcKTnUXkfBSD/FfSQOJpEAlJudXVmGs/8a454GxDp0QJ+Yv78voL6s+SXf5T+oD03as9w/Skm/b+pF9WHkZ4ay3Qa6+aGiEKo8E7m
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6474507d-ba2b-4abd-d95b-08d9d95570ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2022 01:05:23.5752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4232
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20H15RYq001503
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Well, simpler is a subjective term. I prefer Gnome over Mate and I find Gno=
me to use a lot of the same concepts that I use on my Windows 10 desktop.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Be=
half Of Linux for blind general discussion
Sent: Sunday, January 16, 2022 9:54 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Getting Started with linux

Hi,


I personally do not like vanilla Ubuntu, simply because the Gnome desktop d=
oes not make any sence to me at all. If it was me, and at one point, long, =
long ago, it was, I'd download Ubuntu Mate, simply because the desktop is a=
 hell of a lot simpler to get use to, and also a lot more like the traditio=
nal Windows Desktop in the sence that you can, if you so wish, put all your=
 crap on it, unlike Gnome.

Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

On 2022/01/16 17:19, Linux for blind general discussion wrote:
> Well, it sounds like you're telling me to run linux under windows?=20
> That isn't what I had in mind.=A0 Here's what I've learned thus far:
> I need to download a linux OS; then make a bootable media and install=20
> the linux ISO to it.
>
> Well, I did that:
> downloaded ubuntu-20.04.3-desktop-amd64.iso and (for flashing it to=20
> the thumb drive) balenaEtcher-Portable-1.7.3.exe made a bootable thumb=20
> drive and installed ubuntu on it.
>
>
> Now I need to learn how to install ubuntu from the thumb drive.=A0 I=20
> must search for instructions to go on from here.
>
> Thanks.
> Howard
>
>
> On 1/15/2022 5:53 PM, Linux for blind general discussion wrote:
>> Ubuntu or Fedora could do that for you. alt-windows-s toggles speech=20
>> on and off and you want to choose try ubuntu or try fedora buttons on=20
>> the desktop screen.=A0 Desktop screen is windows-d once system boots=20
>> and you have speech.
>>
>>
>> On Sat, 15 Jan 2022, Linux for blind general discussion wrote:
>>
>>> Hello all,
>>>
>>> I've been wanting to try out linux but haven't wanted to give up or=20
>>> mess up any of my working windows systems.=A0 Would it be possible to=
=20
>>> install some version of linux on a CD or a DVD; then just boot a=20
>>> computer from that disk bypassing windows altogether?=A0 If so, I'd=20
>>> have to make it either talk or drive a Braille display.
>>>
>>> Wonder if anyone would have any suggestions?=A0 Thank you.
>>>
>>> Howard
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flis
>>> tman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=3D04%7C01%
>>> 7C%7Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaa
>>> aaaa%7C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
>>> 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;
>>> sdata=3Dl%2FF6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;res
>>> erved=3D0
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flist
>> man.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=3D04%7C01%7C
>> %7Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaa
>> a%7C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLj
>> AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata
>> =3Dl%2FF6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=
=3D
>> 0
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flistm
> an.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=3D04%7C01%7C%7
> Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7
> C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3Dl%2F
> F6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=3D0

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flistman.=
redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=3D04%7C01%7C%7Cfe38b=
46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C63=
7779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMz=
IiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3Dl%2FF6pHvWTMOK02cIEtBbN=
m%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=3D0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

