Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4F887363321
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 04:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618711403;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=o5fWFIwzlds6YqWhRRlnADWcLqKqUQJOVNiyyXdwvbE=;
	b=db1lc7e7y4YFBaqbTZqXPgOMCFoOeDHVm7dx7Xqtb/N6a6sV5LI+OeFtFwcu/x99p0NRUi
	sqPkVUBsHdz2tgR4j2qokejPnGSe7pCPM9Db52lz+SnQP8hkvG/RJTJv28RPOhFlkrfxFx
	WaaQ7uEwbdiJY9VRKW7I9m+B69GmE4I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-588-z5Xaye-iPq-EhSk489d4DQ-1; Sat, 17 Apr 2021 22:03:21 -0400
X-MC-Unique: z5Xaye-iPq-EhSk489d4DQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9B00623;
	Sun, 18 Apr 2021 02:03:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0A815D74B;
	Sun, 18 Apr 2021 02:03:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 54D8B1806D0E;
	Sun, 18 Apr 2021 02:03:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I230mm010497 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 22:03:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27673345BC; Sun, 18 Apr 2021 02:03:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20B1E345BB
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 02:02:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9F9628001A6
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 02:02:56 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
	(mail-dm6nam10olkn2093.outbound.protection.outlook.com [40.92.41.93])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-194-A-TaWKOkN3idt__8SNJb6A-1; Sat, 17 Apr 2021 22:02:54 -0400
X-MC-Unique: A-TaWKOkN3idt__8SNJb6A-1
Received: from MW2NAM10FT040.eop-nam10.prod.protection.outlook.com
	(2a01:111:e400:7e87::4d) by
	MW2NAM10HT097.eop-nam10.prod.protection.outlook.com
	(2a01:111:e400:7e87::376) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16;
	Sun, 18 Apr 2021 02:02:53 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	(2a01:111:e400:7e87::41) by MW2NAM10FT040.mail.protection.outlook.com
	(2a01:111:e400:7e87::414) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via
	Frontend Transport; Sun, 18 Apr 2021 02:02:53 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::d093:57ee:eee8:ab8b]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::d093:57ee:eee8:ab8b%3]) with mapi id 15.20.4042.024;
	Sun, 18 Apr 2021 02:02:53 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: SL's response to all inquiries re: Readspeaker voices
Thread-Topic: SL's response to all inquiries re: Readspeaker voices
Thread-Index: AQHXMwtlCe2VAg1bREiaZDCky8d01aq31Xv8gAADcQCAAA4+JIAAEkvOgAAbLdyAALc0sIAAMFiAgAAsmdCAAA2ogIAAT/5w
Date: Sun, 18 Apr 2021 02:02:53 +0000
Message-ID: <PH0PR14MB4296E365532F0179B11C4CCBC84A9@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
	<161861948053.7.16244801545361401537.5938331@simplelogin.co>
	<161862148227.7.18281104954975477453.5938888@slmail.me>
	<161862282677.7.2491104836224406595.5939316@simplelogin.co>
	<161862548310.8.16722362767692903606.5940024@slmail.me>
	<161862814448.7.6659849185338098597.5940568@simplelogin.co>
	<161863093723.7.7991468665084930791.5941189@slmail.me>
	<PH0PR14MB429642F093EFD405F66B6FE7C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
	<Pine.LNX.4.64.2104171340500.2504722@server2.shellworld.net>
	<PH0PR14MB4296CF10E5C271F1BA6B10C3C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
	<CAO2sX30YXDpUgbUXuA-r9UjBhkJz=JEDbV+gaRbCXO5tKKdrEg@mail.gmail.com>
In-Reply-To: <CAO2sX30YXDpUgbUXuA-r9UjBhkJz=JEDbV+gaRbCXO5tKKdrEg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8F3D461F4A2FA50CCE2B3A867016F2D3350D48F2DDCB8B5CB73729B19BE47A9B;
	UpperCasedChecksum:9613C43548F022ACE4BE6E2E29B929800516867EA0C3DE94E236D146EF533E5C;
	SizeAsReceived:7734; Count:43
x-tmn: [IAQkDFz68nbIgWkU0r3Xa1KQHkQZRbz2]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 15a4a69c-6bd3-4d8e-8db1-08d9020e13c6
x-ms-traffictypediagnostic: MW2NAM10HT097:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: oDuRNUweQN3ilO8KPe567CI4fC8JRO+G2a7S8Y+MaV6vaP4ZSgzLDElr65cV6rqYyDs+FO0k/G9JqCP2WCfvbkKLqOOez3CtDt+nK6TRtWp9OpphTfbeaI33rkI+fWY3Xaf25ED2e6/zy3VuQtW7amOHvn6MScu0bbwYWkjNRbEQoI0QH+UbVkpWH1cClsXQxQ4cbkD62OOnObUlZeohUrkpuYAnBUNMxX6fDZxLbACnZx0/Q8lcgHUMpxZDeGC6AK6YjylpyBB5nHrVucpug1EgHxVtO2acDyXG5itzx8rf+zWXRJ4g39N+FCS6Egie9PzJ/HJ67CLVEDr9zKnzJERXl94Dw0bIyzF2l9j6T/ULNLc2Hez0L1pSCWs7AMIOXu6wMKwAU/Df/WNEkv3+iqQpo1aE5wsPDauVlmfHJbnW9rdReT7hmc1l+Erczjlt
x-ms-exchange-antispam-messagedata: SKPVLp2/9gKCzS1jp2tB0lbPYTgx1hzFrE0g7FN7qou2rrWJlY2mAUZjfum3buv56gwgghxPVAZBxsJdH83LAUWo8LE9JMqZbHzS2P9+OgtDV2oMrapbTPYp6fhVVKTPAf1c2ZoLjbOLoUsqTnr+vw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT040.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a4a69c-6bd3-4d8e-8db1-08d9020e13c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2021 02:02:53.3585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM10HT097
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13I230mm010497
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I can't tell if you're responding to my post or not, but much of what you said has already happened with respect to Mozilla and its relationship to Thunderbird, and Thunderbird is still here.

When you say you aren't using an email client, I wonder how you're participating on these email lists. I assume it must be because you're just using a web interface. The statement that you don't get the point of an email client doesn't make any sense to me at all. The point is the same as it would be for any application. Of course, you could use a web interface to read your mail or take notes or edit a document but when using an application you skip the web interface layer and you get more direct access to the features of the applications with things like short cut keys, menus and so on.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Saturday, April 17, 2021 4:12 PM
To: blinux-list@redhat.com
Subject: Re: SL's response to all inquiries re: Readspeaker voices

I don't use an e-mail client, be it Thunderbird or something else, and don't really get the point of them, but best I can tell from a quick Google search, Mozilla has been treating Thunderbird like the proverbial red-headed step-child for nearly a decade and yet it remains the dominant graphical e-mail client under Linux best I can tell, retaining a sizeable number of users even among those who have ditched Firefox in favor of Chromium. The future is hard to predict, but I have a feeling that, even if Mozilla drops their involvement altogether, the worse that's likely to happen to Thunderbird is someone pulls a LibreOffice, releases an initial version of a new client that's identical to the last Thunderbird version in all but name, and a new organization is formed to be the nominal owners of the fork.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

