Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3915C363244
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 22:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618692450;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qb41VlZFAYFd3iw3ESMIxEYreMoeAuOBn91N20s73Uo=;
	b=JUkqWVj5LfHhnfAvtJUI2X3n5mD1cO/xlSZ+MCKRzRjKVxIxmzzG0qv/8x3Ou7Y6SqOJpN
	RcjOD7uxIeRfnTLD7uUDsgncKfXySU3mC1P5UkbaxCPLwLT0sxCxJAEz+H3rdtZyWLdiw9
	mHyoh/XKcFiFIU5qJa3fljV9pyMXbpk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-fGbXXlnaM_OTG45azHA-1A-1; Sat, 17 Apr 2021 16:47:28 -0400
X-MC-Unique: fGbXXlnaM_OTG45azHA-1A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CFD5A817469;
	Sat, 17 Apr 2021 20:47:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3004960875;
	Sat, 17 Apr 2021 20:47:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D6B4544A5B;
	Sat, 17 Apr 2021 20:47:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HKl434020913 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 16:47:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 22D152087A5F; Sat, 17 Apr 2021 20:47:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C3EB2087A5A
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 20:47:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B6FA185A7A5
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 20:47:01 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092009078.outbound.protection.outlook.com [40.92.9.78])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-112-Kg7fQcZiON--7RzG9YDCFg-1; Sat, 17 Apr 2021 16:46:58 -0400
X-MC-Unique: Kg7fQcZiON--7RzG9YDCFg-1
Received: from BN8NAM04FT017.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e85::46) by
	BN8NAM04HT201.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e85::186) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16;
	Sat, 17 Apr 2021 20:46:57 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	(2a01:111:e400:7e85::4f) by BN8NAM04FT017.mail.protection.outlook.com
	(2a01:111:e400:7e85::392) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via
	Frontend Transport; Sat, 17 Apr 2021 20:46:57 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::d093:57ee:eee8:ab8b]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::d093:57ee:eee8:ab8b%3]) with mapi id 15.20.4042.021;
	Sat, 17 Apr 2021 20:46:57 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: SL's response to all inquiries re: Readspeaker voices
Thread-Topic: SL's response to all inquiries re: Readspeaker voices
Thread-Index: AQHXMwtlCe2VAg1bREiaZDCky8d01aq31Xv8gAADcQCAAA4+JIAAEkvOgAAbLdyAALc0sIAAMFiAgAAsmdA=
Date: Sat, 17 Apr 2021 20:46:57 +0000
Message-ID: <PH0PR14MB4296CF10E5C271F1BA6B10C3C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
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
In-Reply-To: <Pine.LNX.4.64.2104171340500.2504722@server2.shellworld.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:32119ABC8D87945B7C931D7F6A565EFCAF9B8831B552E2EE2D1BA6B3A1CB1A1E;
	UpperCasedChecksum:91A505C31ADE64F1A5EBAC3389B7551D7157A8C0DCED87524A70B2ED4F11B529;
	SizeAsReceived:7549; Count:43
x-tmn: [SBKL8iaXflhx1ID4wZegGSQ4c4hlaBsu]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: cb11d82d-0eb6-4a9e-d80e-08d901e1f15c
x-ms-traffictypediagnostic: BN8NAM04HT201:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: MgrUxYG4Kk6p55GNbwhqNCmAQ6fn1ctEbLzTyan3x9mdGYN1Icqxf1ob3tpFsaC2umExheoSOraqSFwrFqOourpphhaYx2JHri7g/ntvWwGNIg3EoozfqE+019zYmI8eghWhQbUf9Gps/mas0KA0PMXwW0sKpEDZs2W8fJQ8qqM0tV5oopTwMCZBuABs4jN01AQaC/bGRQAUAAQa8IyiPZ44b40pYd3M6QeA4veJgyG/lVGQ02M5Wqvw1VKqJMLXV0xoTC+oLNXxvYi8C7FE+wOVKxsd3v/R4xBywDLsFQaS/sstNujsuxkFDbzXKFEiqdBxgOS/g27NBU1MPQkjy245/PcdlxBZJ01HmHpw6xsagucg/yZwGs7co8rZdCeM+MPVUsyNngrgjRq3PN/ql0D41EPk1GjrsJRuQkSLJqCRKYkM4KoZgvLMmehZeaFw
x-ms-exchange-antispam-messagedata: 7RnveC7NJLpuTy8uKjzN2gJx4WcyxBM64VU45jJdT3l22cyEH5wNKACiUFUmmPAD8HHwdryRkPSB2MTr8Nu7ob0cKaQ027pUhxqwuo8kN/XRuT5amNfIB0zGXAdR/aSZMHOSJScxbOOGWd2pL4A/eQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM04FT017.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: cb11d82d-0eb6-4a9e-d80e-08d901e1f15c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2021 20:46:57.7930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM04HT201
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13HKl434020913
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, I don't run Debian, so I'm not sure why I should subscribe to a Debian list just to get clarification on something someone posted to this list.

I found this roadmap on the web for Thunderbird, which talks about 2021 and beyond, so it doesn't sound like thunderbird is going away any time soon. https://www.ghacks.net/2021/02/10/thunderbird-team-outlines-plans-for-the-email-client/

There's also this blog article from 2020 that talks about Thunderbird being moved to MVLA, a subsidiary of Mozilla. https://blog.thunderbird.net/

I also found this knowledge base article from 2014 that talks about Mozilla's change in 2012 to let the community handle more of Thunderbird's maintenance. http://kb.mozillazine.org/Future_of_Thunderbird

Therefore, " Mozilla has pulled developers from the Thunderbird project" is not new news and thunderbird is maintained by an open source community, which is true of most open source projects. What you're saying may be true, but I'd need more information than just your understanding.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Saturday, April 17, 2021 12:43 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: SL's response to all inquiries re: Readspeaker voices

I would  suggest your asking the question on the main Debian list.
My understanding from there is that Mozilla has pulled developers from the Thunderbird project.
Additionally, articles documenting the same were circulated via  my local lug.


On Sat, 17 Apr 2021, Linux for blind general discussion wrote:

> I don't see the message being referred to below, but what's the danger of Thunderbird being discontinued? Is it in more jeopardy then other open source applications?
>
> --
> Christopher (AKA CJ)
> Chaltain at Outlook
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> 
> On Behalf Of Linux for blind general discussion
> Sent: Friday, April 16, 2021 10:42 PM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: SL's response to all inquiries re: Readspeaker voices
>
> Hi Kare,
> Thanks so much for explaining that.
> I've never used Thunderbird before, and if there is a chance that it might be discontinued, then I might as well start by trying the least involved method first, saving documents as .txt in LibreOffice before pasting.
> I'll try a test with that tomorrow with just a test document and see how it formats.
> Thanks for the suggestions.
> If I need to ask any more questions about email clients and text editors, I will do so in a seperate dedicated thread, as I know this formatting fiasco has kinda derailed the subject matter of the thread here.
> So if anyone has any further questions, comments, or ideas pertaining to Readspeaker voices, go ahead and either post them in this thread, or in the other thread I started titled: "Sending Reformatted: SL's responses to all inquiries" in which my post is correctly legible for those who couldn't make sense of the jumbled email that began this thread.
> I'm signing off for tonight, I'll check back in tomorrow.
> Thanks,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

