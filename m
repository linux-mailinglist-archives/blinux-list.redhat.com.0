Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F399B4167D8
	for <lists+blinux-list@lfdr.de>; Fri, 24 Sep 2021 00:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632435116;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=idu7Ny8PUowGZSszNylZXyq04lXZwY8pIYdtWjmjm/U=;
	b=Gvg223TG1+sKsQifAhaR37F8zFdkIOIWa43BVdmnkY/BJ0DaBlvs2QbpdjG46xkSSoBFo+
	32QIFS4xJzqsXDLGexmzC3Rbw9Uh5EULAc5U1BcScSWayodViZp0xChSAD7f2UL2+InCVZ
	kwWNug7FvfM+owMcquIHVpJQk+iguF8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-547-MP8RKI0WMzq80PRRwJN17g-1; Thu, 23 Sep 2021 18:11:54 -0400
X-MC-Unique: MP8RKI0WMzq80PRRwJN17g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A46E802B9F;
	Thu, 23 Sep 2021 22:11:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C65860BF1;
	Thu, 23 Sep 2021 22:11:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 75470180598A;
	Thu, 23 Sep 2021 22:11:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18NMBSv0004988 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Sep 2021 18:11:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BC128102F134; Thu, 23 Sep 2021 22:11:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6B42102F131
	for <blinux-list@redhat.com>; Thu, 23 Sep 2021 22:11:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B213E866DF8
	for <blinux-list@redhat.com>; Thu, 23 Sep 2021 22:11:25 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
	(mail-mw2nam12olkn2012.outbound.protection.outlook.com [40.92.23.12])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-534-vkcXLYAbOmKbrAejAaW3kw-1; Thu, 23 Sep 2021 18:11:24 -0400
X-MC-Unique: vkcXLYAbOmKbrAejAaW3kw-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by PH0PR14MB4768.namprd14.prod.outlook.com (2603:10b6:510:88::15)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14;
	Thu, 23 Sep 2021 22:11:22 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::ac9e:4fc3:5802:3ef]) by PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::ac9e:4fc3:5802:3ef%9]) with mapi id 15.20.4544.015;
	Thu, 23 Sep 2021 22:11:22 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: [raspberry-vi] Re: Possibly Off-Topic: Android Smartphone
	Recommendations.
Thread-Topic: [raspberry-vi] Re: Possibly Off-Topic: Android Smartphone
	Recommendations.
Thread-Index: AQHXsJsW/zrBZ2L5TUKREbWF3QTidKux/SiAgAAvgxA=
Date: Thu, 23 Sep 2021 22:11:22 +0000
Message-ID: <PH0PR14MB4296432866144C7867E9AF1AC8A39@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <CAO2sX33aWL4__RHq2RZkFW+PimVh7Z7g=_TS1wudsG7sAeiBQA@mail.gmail.com>
	<A4E5D55F-F90B-4069-9848-C21414621974@hxcore.ol>
	<CAO2sX31tRhsEv_p2-Zp4b=B5GVWNtoariLePU-DQ=ngaT-OJuA@mail.gmail.com>
	<07faf20a-0d9c-27c9-96fd-0740bf315ceb@gmail.com>
In-Reply-To: <07faf20a-0d9c-27c9-96fd-0740bf315ceb@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [akk5IoAYc4eX6RdBL6kdJcEXCX2bgxoL]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3bfe3831-73c3-4ea4-1fd2-08d97edf13c2
x-ms-traffictypediagnostic: PH0PR14MB4768:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: x1WezfFkCHAW6Oxv+jU08RI0M2LjQY6DoCnLJ176Go9yFjTDbR3cww+OR9WGM2tQ+80GHM916x/q2LQOeUjJ6DAD8C/X4WDhIpcgk83g8oL8XSnSF6VItcAt3npX66La6dV2D/mAkzcKeFWCOkgNbl2QsX1zouD14rlp7PfrOUVrTX4Z/Q7G3rp0E8mU30BGk4cWbsI3rIRLOxeIntMsP/pR62X6IeUCecU2jjSMqL26SuymeV/ldqcdILzUfNH3w0ri2Ag7KcKaol8Jfx+A7dhb9Pn4bgt6V68H+KsDWjNaceGxFcBLLhblO0cj1h/T4oztGY3Yb1BKXmVMU5JA5Iw01KAQLRpgAwgH7HI5q+SMG6NMEg4dZlRZUJyNyIrSJu70AfrqlYOcmxKuVbOBpaEPylorr+tSPhFIt+dWcwJtnn4UqS0AQWb2xsRT7r6VwmaCrVpb6kXJE5x3g2I4DwqYQp00ZHTGx/XXm5KV5eg=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: vxgGPxwqfkGPBEZ3B+2xMyZeA0cDE2V19/18yy7jAiHOWIxpt4pPJ2i3S6R6ow7ktrpe/pSWxsPjLVs46Yblhxs3ARWDNSoVcaMsFyYvJTSEqzkXZ5mKvFognO71GPslI1ZFzw/Mn1jqWqQikowU6w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bfe3831-73c3-4ea4-1fd2-08d97edf13c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2021 22:11:22.2537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4768
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18NMBSv0004988
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm in the Apple ecosystem at the moment, but my last Android phone was a Samsung S7, and if I were in the market for a new phone right now, I'd start by looking at the Samsung phones. They have many price points, so you can still get a Samsung device without paying for a high end phone. You do get some Samsung apps, but you can still go to the Play Store to get other launchers, file managers, browsers and so on. I know some people consider this bloatware, but I think of it as just more choices. Even when Samsung had Voice Assistant on their phones, you could still ditch this and go with Talk Back. I liked the option to check out another screen reader, in case I was having some trouble with one of them.

After checking out what Samsung has to offer, I'd look at my other options as well, especially Asus and OnePlus. Of course, I'd also consider Motorola, Nokia and Google as well.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Thursday, September 23, 2021 2:14 PM
To: blinux-list@redhat.com
Subject: Re: [raspberry-vi] Re: Possibly Off-Topic: Android Smartphone Recommendations.

I would avoid both Samsung and Google. Samsung has enormous prices and tries to reinvent everything from the browser to at one point the screen reader, which it changed up dramatically and made part of the OS that could only be updated with a system update, no Play Store support. I believe in recent updates they returned to the Android Accessibility suite with Talkback, but that little experiment left a bad taste in my mouth, especially after I couldn't even figure out how to use their voice assist screen reader effectively and productively as I can use Talkback. They also remove the headphone jacks in recent versions. 
Google's phones have always been substandard for the price, because they have never had removable storage, and they removed the headphone jacks from their phones as well. My personal recommendation is Motorola phones, which all keep the headphone jack right on the phone and never lost the SD slot either. Aside from Moto Actions and rebranding the launcher, Android is a pretty stock experience, including built-in Talkback that can be updated from the Play Store in the Android Accessibility Suite. Their phones also include fair amounts of internal storage and RAM. Most of these still have the fingerprint sensor, which is getting harder to find now for some reason, and some of their phones even ship with NFC if you want to be able to quickly pair some bluetooth devices by tapping them with your phone, send files from one phone to another by letting them kiss, or make contactless payments using GPay. 
My current phone, the G(7+), has 64GB internal storage, I have expanded it for under $30 with an additional 256GB removeable, which can be adopted as internal if desired, and it has 4GB RAM. It's not 8GB RAM, but the $150 price tag makes all the difference in the world. It's running Android 10, which is definitely new enough, and still gets security updates.


If newness of the OS and getting full OS updates rather than just the security patches is a concern, then your best bet is a phone that is in the Android 1 program. Several Nokia phones fall into this category, and although their prices are higher and you get less internal storage, you still can plug headphones into them and add a MicroSD. I think one of Nokia's Android 1 phones may still even have a battery that can be replaced easily without tools, which is something that is becoming impossible to find these days. If price is a concern, I don't think you'll find many of their phones that are more than $500.


Unfortunately, your carrier is a bit odd and has very little compatibility, so it looks like Moto is your best bet overall. In any case, do go with something that is factory unlocked, as although you are locked into your carrier for now, you don't want to extend that lock-in any further than you absolutely have to, and you will want to be able to carry that phone with you elsewhere when the need arises, or even put free service like the $5 TextNow SIM into it if you want to experiment or just have a spare phone that can make calls and send texts, and do most other things on wifi. Every other carrier in the country has now switched up its network to be compatible with most factory unlocked phones now, so in the future, finding one that is compatible with your network should you decide to change carriers will no longer be a concern, although Moto has had very broad compatibility for years, all while keeping the price relatively low. I hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cf0e8d4d15d1047e1233408d97ec65c12%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637680212675563174%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=GhNldfX2GvYjDNEKwdIohajwY9k96w3dunULbviIEhk%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

