Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E91763234B7
	for <lists+blinux-list@lfdr.de>; Wed, 24 Feb 2021 01:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614127961;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XlfE56r2ecPk/O7YPB0Pw6aKUrKYU3lZzMVw0RPAIY4=;
	b=AFFD/S3JUHNpJUFYSj1+Ft4HIWc6SCxyfMe9VlMbaEKFDMHzV/yN2vCAeVvybJa6Fn2xr/
	YFfEBKSbD+0FPaWTUgAeLetcXwv1sQWV/I5XvpLRTcEtreJfM+Cd9VDaW3s9vyQXsi7g7W
	sjYOIxPNfJlkG8p8tTwru5hmBAUufmQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-yviBqdMBMOG_EULi1LAU8Q-1; Tue, 23 Feb 2021 19:52:39 -0500
X-MC-Unique: yviBqdMBMOG_EULi1LAU8Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 007F979EC2;
	Wed, 24 Feb 2021 00:52:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA0125D9D0;
	Wed, 24 Feb 2021 00:52:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 852164EEF6;
	Wed, 24 Feb 2021 00:52:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11O0q8vU027467 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Feb 2021 19:52:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C11C710EB2A1; Wed, 24 Feb 2021 00:52:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBBA010EB2A4
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 00:52:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3075C858EEB
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 00:52:06 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
	(mail-mw2nam08olkn2088.outbound.protection.outlook.com [40.92.46.88])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-527-2RmX14k5PhSucQyHsFLjfw-1; Tue, 23 Feb 2021 19:52:03 -0500
X-MC-Unique: 2RmX14k5PhSucQyHsFLjfw-1
Received: from BN3NAM04FT061.eop-NAM04.prod.protection.outlook.com
	(10.152.92.57) by BN3NAM04HT029.eop-NAM04.prod.protection.outlook.com
	(10.152.92.198) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27;
	Wed, 24 Feb 2021 00:52:01 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	(2a01:111:e400:7e4e::49) by BN3NAM04FT061.mail.protection.outlook.com
	(2a01:111:e400:7e4e::233) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via
	Frontend Transport; Wed, 24 Feb 2021 00:52:01 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::1d66:b5f7:9c0a:4989]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::1d66:b5f7:9c0a:4989%3]) with mapi id 15.20.3868.033;
	Wed, 24 Feb 2021 00:52:01 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Recently mentioned cheap Braille display?
Thread-Topic: Recently mentioned cheap Braille display?
Thread-Index: AQHXChp4MtzWxVG9Hku8rl+Q/A4Z7apmehKw
Date: Wed, 24 Feb 2021 00:52:01 +0000
Message-ID: <PH0PR14MB429611433997276E3B0339E4C89F9@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <20210223130829.6fec2676@bigbox.attlocal.net>
In-Reply-To: <20210223130829.6fec2676@bigbox.attlocal.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:4A9B8FA1530E60402A408E11F3197AEE5EEE97304DC795A37FBC58CE535CF501;
	UpperCasedChecksum:D7AF299A893CA4B48B8589714F466035856D56F62DF0F225A99F14FF22AB7054;
	SizeAsReceived:6774; Count:43
x-tmn: [ddMHCpYS7BTWb5LckvT3+uAPHZ03JNAb]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 5173d380-e295-4d76-0b43-08d8d85e65c1
x-ms-traffictypediagnostic: BN3NAM04HT029:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: JB3JdfLFSCwXIdVIXZzv1rPK5qN/elVHgLFMiKfWNzld1XIsKR8NXEBm1cgTnSBnAlgyTs65cR9F+N1+5pM91bu3W5c8UVWJXiREcbGrS0KBLZiChqPzXZOVQIrRDCt4WhmcjrneG/ThVG1FWr4MvwnzWjro+AG9DcrY8XKPwOmraQF6BmzyHbNVGKUj4cGfHGpoGJk7xujJTpgfA9tEIbJggzuUAvKGxmwK5LcpOznJnfnYvgZ7lz8JadXTDIdEyKfcqwDvbYk1b5ovOeiawH5HsIQFg2DBOP49eslzmn55aceUf5BHYfa1uumjxwz3p3tNJ1qFueCUHNgAB17VCP3LuJoGmQJoWNf6EkMmhRP9EstIrfv9B4de/hCs6yy3GhyLuSeMKH4biUeX4LVpqRxGzRwPtDu0qdc0pE7fqtxxMZQrfcMPzRpH2a/jwj/h
x-ms-exchange-antispam-messagedata: uCRaqYD8MZCUOQdkNzXHthYJtB+xEUcsKEt+ihF3fxN/ipTn9c80KZV7yV7cBfKFKYGVixTWhp1vbUCRE7NMnkv7nTjynIEReYbo4YqzZQCZPTBMyxG6yuoN2ojQpwFFGAKsKW0ONESZMacInotntw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: BN3NAM04FT061.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5173d380-e295-4d76-0b43-08d8d85e65c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2021 00:52:01.7625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT029
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11O0q8vU027467
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You might be thinking of the Orbit Reader 20, which advertises itself as the world's most affordable braille display. It costs $600 US. You can find out more about it at https://www.orbitresearch.com/product/orbit-reader-20/

--
Christopher (AKA CJ)
Chaltain at Outlook

> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Tuesday, February 23, 2021 1:08 PM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Recently mentioned cheap Braille display?
> 
> I was pretty certain that someone on this list had recently mentioned a notably
> cheaper Braille display that had recently come on the market.  Does this sound
> familiar to anybody here?  However, I can't find any such message in my folder
> of Blinux mailing-list messages.
> One of the OpenBSD developers was asking about picking up a cheap Braille
> display for testing accessibility but didn't have a lot of cash to drop on it.  So I
> wanted to share that info with them.
> 
> Thanks!
> 
> -Tim
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

