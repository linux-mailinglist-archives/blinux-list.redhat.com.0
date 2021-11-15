Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 126EF450F23
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 19:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637000658;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zfFIeUxG+ZTZM0O+uct5XKK/lxYMXetqRH3r4X+qlGM=;
	b=AJq977Rg9IT4rCb2q3wpAsq8Tt5LxFaek9o9u3ivFAadHRzDhjvbc/HhtcUW4ieTUNAgN9
	Z8d4XG2r+x5QnFRkl+0ylLA1c6JAooCfBwY2lPWOeZCJlobk1GvKe69CrdwAzYnySYqoNw
	LXRzKSg/SHcermqIyIL1EjsO9gLy6qQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-72-N0E9a7CNMeGoxCNBULlJSg-1; Mon, 15 Nov 2021 13:24:14 -0500
X-MC-Unique: N0E9a7CNMeGoxCNBULlJSg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E933102CC3C;
	Mon, 15 Nov 2021 18:24:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F5135C1A1;
	Mon, 15 Nov 2021 18:24:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 661234A703;
	Mon, 15 Nov 2021 18:24:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFINxnQ005959 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 13:24:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B3CD240CFD10; Mon, 15 Nov 2021 18:23:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD3ED40CFD07
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:23:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93354858EEE
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 18:23:59 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
	(mail-dm6nam12olkn2046.outbound.protection.outlook.com [40.92.22.46])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-270-i-KJ-W7DNRSyPQ2ePSAlQw-1; Mon, 15 Nov 2021 13:23:58 -0500
X-MC-Unique: i-KJ-W7DNRSyPQ2ePSAlQw-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by PH0PR14MB4422.namprd14.prod.outlook.com (2603:10b6:510:27::20)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.18;
	Mon, 15 Nov 2021 18:23:56 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581%7]) with mapi id 15.20.4690.027;
	Mon, 15 Nov 2021 18:23:56 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Gui vs. cli software
Thread-Topic: Gui vs. cli software
Thread-Index: AQHX2kqjJ2lWjQ6Tr02UzWKQpWlf4awE5ISAgAABl4A=
Date: Mon, 15 Nov 2021 18:23:56 +0000
Message-ID: <PH0PR14MB4296A33A9FD84FE8899D0067C8989@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
In-Reply-To: <6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [nRBVIhgohEDT0ZvzjfoX+zcjuwGDH956]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da6602b2-6f80-4cc6-5b08-08d9a8651641
x-ms-traffictypediagnostic: PH0PR14MB4422:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: g8lE0YjBvk2WYKynLyPRvGKTVi9fpuPpU+VYf+S20pMAhRQVc0SM7okdyKAhxoKOIO+J2aZtVMcgJGmPFeCtZY0Tb3/gS3wCNaxZdwLxjgX0QASpDpQDOi4pWyiNzzEv1iqw5E6JKNYimm3Qwgf2qedVlWACGLS+wtmBbTqwuPFOat1bCHv7emGW+7y4qP7DRl2prik8mrhlkSwC0HzmNeDPU2yysaM+buxxmMlXg9kBw78lOAYFkxVLOFz9pqCydvvcnhCAfiGIdVDrjKUwNkqe2FPX2HCU1XyjT1X96oSocfo4zfg1FsO/Y8p6AuJ+G+CazeV3KhcAoXgTG9jXzIrOwN8Q4EhiG5tqy9zD0Kvbggg/AA70zKg5Fkqr1Ou5ZpX1UKcUshEejUInmpsJKB8IRWQjZus62ykXpzLuM2cUQu/qxHz5meerC9BS5s1GiNiu31RlGCbNQyvREeofRKAYy3V/loDKctHTgFgaDhZPj0G7Jh1+uGzf1/TvvEgClBvULGxrpnQc76YtY4N0Ad0/opyseedldj5+qwERNuPiLF0wvipEt5/GQLnSvyZWOMfdzDrITenOFjoLD1fDDg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: BzFjq8axddRTZAHSK2vEpAQ33lrbGRHTJsF0j7qebI35YCLxK3rFF72cV3Oop7mCflVwBYe8KhXsBTy4bYKkEe5aQJlczOhLamzMDU0gTfIogF3byLRZeaF4wYBPth1qUJIBdvLQ1ZQ0ZjKp7nd7/3mmrVKvSYbHR9GH9JyrvTEJBVgyAWgZYxO9TBlADTY9Jdy2g6wBgUv0LTFnmtqhy/l4eiMW5+fX2cTlYkCANifb1stjYze3pZlLn26UcqXHlU2WWPKWavE7H+cqn4D2A/C71l75e+HbAGAJtRC9e5JYrMF5Yw8hcCBucqEas98qJDJLt8OlByt5SuumxwpUrqIaEJ22bVtbkNUaUOg0aDkgee/gQP4X6b1tX6gYiR2UtLHlLos8KVmPLzAuaIVUsgA97E3GlIU7hw98urGpF1KcH+5M9pUVN8o86+Zbs4JefbJt3epi3CNN42N/3cziM2ryPBd7xdeSoynHaOfZ1umLBYj+K2xSuJFOT/4t4n5LSFQ6xeC7d8CM7f5pVHtPGGDT0xqZFZgjDk69GL2l/JmQ072XceQhdna2Ft5JunMUl0KYHF06ggXqbnlIPIg3DGmGRy/yP7KK1YcRCLcwoK+dcPT2T6MKDIwimnQVxqKZz2mYT3529MkY8Z02BiC+GGuJKabpmJdxI8C4ocs/kPq9WN3ebEvdEuch058CQ5vspEIrawer62KNxSXVSNuV+Q==
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: da6602b2-6f80-4cc6-5b08-08d9a8651641
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2021 18:23:56.7215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4422
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AFINxnQ005959
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, I for one don't think there's even such a thing ass CLI versus GUI. IMHO, it's not a competition and no one is keeping score. They each have their strengths and weaknesses and people are free to use whatever tools work for them, whether they be CLI or GUI.

I don't think CLI applications automatically allow for a greater deal of individual control. It still comes down to what the developer makes available through command line parameters or configuration files, and the same is true for GUI applications.

Also, GUI's have more benefits then just being easier to learn and having sexy flashy graphics.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Monday, November 15, 2021 12:14 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Gui vs. cli software

Hello,

I prefer gui apps, because is 21st century, not time of first computers. 
If we want linux will more popular, it must have more gui apps. I agree, cli is better for older and slow computers or if you want work without spinning computer ventilators, but learn with gui is in my oppinion easier than cli.

Take care.

Best regards

Vojta.

Dne 15. 11. 21 v 18:59 Linux for blind general discussion napsal(a):
> 
> The topic of using gui vs. cli came up recently.  My view is the cli 
> allows much more individual control over software functions.  The gui 
> is oftn limited to what the developer decides is best for you as to 
> function and individual control.  The gui was originally sold as an easier way to use computers; which meant in practice the developer trying to guess how users might want to use it at the cost of greater individual control.
> 
> Menu driven cli software is the obvious middle ground for ease of 
> learning and using programs, which could easily use mouse input.  The 
> developer could have a default setup for ease of beginner use.  But it was at the time not the new sexy flash bang eye candy which graphics allowed.
> 
> 
>   -- ent- XR
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistm
> an.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7
> Cc315b8be646349a5c5c208d9a863bf02%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7
> C1%7C0%7C637725968624740905%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=sKqZ
> zukENLNq8fgS8jEiwOxsz9Di%2FCdH65pxoIHPGA0%3D&amp;reserved=0
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cc315b8be646349a5c5c208d9a863bf02%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637725968624740905%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=sKqZzukENLNq8fgS8jEiwOxsz9Di%2FCdH65pxoIHPGA0%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

