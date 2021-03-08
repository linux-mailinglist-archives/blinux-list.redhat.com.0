Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DE4EC33090B
	for <lists+blinux-list@lfdr.de>; Mon,  8 Mar 2021 08:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615190263;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MD+J0vcsMWLghvmk5Wi+P0o6AH9AP+W7mDyFwP3wRkA=;
	b=Q0xygXRri7eMHmVCkrAgE0uYOIWO09b5aDwaJTjeeOSC5enFuMAZ52XvSeNLDEXpztAs7U
	tMWpps5kr5LSpOh+bQF8+2a5F0DIZc6rhLsvJI6Pk+pu9OSH8QxuF5CMgSXBVZjGk8QO0O
	bepg2Wml5xiGo7rRCw4PpWlHs+zyNj4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-517-f2XdFSmxMGKlvS8i8M9OKQ-1; Mon, 08 Mar 2021 02:57:40 -0500
X-MC-Unique: f2XdFSmxMGKlvS8i8M9OKQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01417804339;
	Mon,  8 Mar 2021 07:57:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E09860C04;
	Mon,  8 Mar 2021 07:57:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 72B645002E;
	Mon,  8 Mar 2021 07:57:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1287vLTx028823 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Mar 2021 02:57:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5D49D4369D; Mon,  8 Mar 2021 07:57:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56C1143693
	for <blinux-list@redhat.com>; Mon,  8 Mar 2021 07:57:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A6738551E2
	for <blinux-list@redhat.com>; Mon,  8 Mar 2021 07:57:18 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
	(mail-bn8nam11olkn2045.outbound.protection.outlook.com [40.92.20.45])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-591-SHOfGM3rPluax_OZgzGsXQ-1; Mon, 08 Mar 2021 02:57:16 -0500
X-MC-Unique: SHOfGM3rPluax_OZgzGsXQ-1
Received: from CO1NAM11FT056.eop-nam11.prod.protection.outlook.com
	(2a01:111:e400:3861::51) by
	CO1NAM11HT138.eop-nam11.prod.protection.outlook.com
	(2a01:111:e400:3861::112) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17;
	Mon, 8 Mar 2021 07:57:15 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	(2a01:111:e400:3861::46) by CO1NAM11FT056.mail.protection.outlook.com
	(2a01:111:e400:3861::363) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via
	Frontend Transport; Mon, 8 Mar 2021 07:57:15 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::1d66:b5f7:9c0a:4989]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::1d66:b5f7:9c0a:4989%3]) with mapi id 15.20.3912.027;
	Mon, 8 Mar 2021 07:57:14 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: New laptop, alt F1 is not bringing up the menus
Thread-Topic: New laptop, alt F1 is not bringing up the menus
Thread-Index: AQHXE9BuaQjZTXDK1UySWon1UIAs66p5uQBg
Date: Mon, 8 Mar 2021 07:57:14 +0000
Message-ID: <PH0PR14MB4296FC51C2F872C19123F5DAC8939@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <161517600216.7.8525648975641765810.4519676@slmail.me>
In-Reply-To: <161517600216.7.8525648975641765810.4519676@slmail.me>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:7BC81875C9D45B7670051243F0B999A0516701916CE6E98A8DB9BB52AC7712DD;
	UpperCasedChecksum:7F3977C2B80974B2A1B5B56707F15022D499333E1EA85682733A7FD8C105D86C;
	SizeAsReceived:6818; Count:43
x-tmn: [1/c3EjdfKvAfe8K4fxUxliVelpdmyMfk]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: bd75a045-024c-468d-9247-08d8e207c98c
x-ms-traffictypediagnostic: CO1NAM11HT138:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: e7J6TgQwsbuOTHRV0hX4Chc3G1EeMlliaVuE6Cx6wpUeYpzo+UgbY0y2k4Vxz5J/bqm0fv1jvQt5OIiVkJjNJFG8kXcnxUrelbj4jLKsqC2OdaFaLhezOrCjtENMKgYrvBOMwmUIfK2fFf+nc/mfJWDblXN2bDddikW3kv7ODt4AX8J5Cx45tD8QcxAvxo+4TnBcwjnF+w627EYSJ/E2devpK1BMoWZ7NxU7j5HCXJFtZX+lqs1uLyELr/u0eq0V9zV0bIynoKej7S80QhIa6IFNpodLzIB7tPK8j27AvTyoZb1aRCFEO7xYpfAR73gwNiAWz6rFnKeWpvWZOdrEmLA7pCaZWCJsicwxHkcQHjpWxBq91fBCoxu94jYSDPnXkA+d3qdIocV6NclEW8fSl8niAvNdgTVYdb+tLZBtGNI=
x-ms-exchange-antispam-messagedata: EJqcSIhMIGJQkS1InK6G+Icgg/tzKnqi5vozNnCac73xIMzHxjdT/1cbhNhSrleHJunkmnsTOnNlVrJkIW8t2K6bSfqcWPVWLNt7lrl/HqAK4qcJuYgWDvCPJjOej4qGmmeKrEd6Fatg7ZtzokfO/w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT056.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bd75a045-024c-468d-9247-08d8e207c98c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2021 07:57:14.5951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT138
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1287vLTx028823
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

Sounds like what I've seen in Windows where the function keys are mapped to multimedia functions by default. Try using the function key in combination with the function keys to see if this makes a difference. If so, you might want to check out the Lenovo BIOS to change the default behavior of your function keys.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Sunday, March 7, 2021 10:00 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: New laptop, alt F1 is not bringing up the menus

Hi,
I just got a new Lenovo Ideapad and installed Linux Mint MATE on it which works just fine on my HP.
But on this Lenovo, alt F1 is not pulling up my menus.
On my HP with Linux Mint, all I have to do is press alt F1 and it brings up my menus in GUI so i can get to systems or internet etc.
On this Lenovo, when I press alt F1, it just mutes the speech.
So then I have to press F1 again to unmute the speech.
 Its like the laptop completely ignores the input of alt and it only acknowledges F1 and mutes it.
To be fair, even with the copy of Windows10 that it came with, even with Windows it would not acknowledge the alt F4 to close a window.
Its like the F keys on this laptop are not doing what they are traditionally assigned to do. So now in Linux alt F1 is not pulling up my menus so I can't navigate my GUI.
I bought the laptop locally, so if this cannot be solved, then I will return it and get a different one instead.
Do any of you have issues with Lenovo Ideapads and the F keys?
Any other ways to bring up the menus in GUI?
Otherwise I'll have to return it and replace it.
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

