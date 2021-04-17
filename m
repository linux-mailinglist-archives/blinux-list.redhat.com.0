Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BE8D73630C0
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 16:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618671341;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wK0Ugs0EtpX4qrtsAa2Ov3yIG2F/SeizZaSln5/0sk0=;
	b=Ma+kT48CP/2IDD1qnWq3wLwYF6Kw83uNkZkFJfQG8wQZmPBLfMni5am7jcIT1uthGi8z+i
	Vdbkqm3KsxPWmMBa9H2sas5APnJ5x+li9dR43tKyJHYZIcNEEhvWmstOfnt7hDhiU9oXm2
	ZGEQzXOPTX8AA6+qAFIndpoyyPjeWBU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-G4T7BrAcNfGHFzHYI-aJ_w-1; Sat, 17 Apr 2021 10:55:40 -0400
X-MC-Unique: G4T7BrAcNfGHFzHYI-aJ_w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F28B2189C47E;
	Sat, 17 Apr 2021 14:55:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EF985D9C0;
	Sat, 17 Apr 2021 14:55:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BB8944A5E;
	Sat, 17 Apr 2021 14:55:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HEpRkX024775 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 10:51:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4665611301DC; Sat, 17 Apr 2021 14:51:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40FAB11301C2
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 14:51:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B7FC805F44
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 14:51:24 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
	(mail-bn8nam11olkn2014.outbound.protection.outlook.com [40.92.20.14])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-185-cj8H6llbMSqIxJLhKLWXug-1; Sat, 17 Apr 2021 10:51:22 -0400
X-MC-Unique: cj8H6llbMSqIxJLhKLWXug-1
Received: from BN8NAM11FT008.eop-nam11.prod.protection.outlook.com
	(2a01:111:e400:fc4b::4e) by
	BN8NAM11HT077.eop-nam11.prod.protection.outlook.com
	(2a01:111:e400:fc4b::235) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16;
	Sat, 17 Apr 2021 14:51:21 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	(2a01:111:e400:fc4b::4b) by BN8NAM11FT008.mail.protection.outlook.com
	(2a01:111:e400:fc4b::351) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via
	Frontend Transport; Sat, 17 Apr 2021 14:51:21 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::d093:57ee:eee8:ab8b]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::d093:57ee:eee8:ab8b%3]) with mapi id 15.20.4042.021;
	Sat, 17 Apr 2021 14:51:21 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: SL's response to all inquiries re: Readspeaker voices
Thread-Topic: SL's response to all inquiries re: Readspeaker voices
Thread-Index: AQHXMwtlCe2VAg1bREiaZDCky8d01aq31Xv8gAADcQCAAA4+JIAAEkvOgAAbLdyAALc0sA==
Date: Sat, 17 Apr 2021 14:51:21 +0000
Message-ID: <PH0PR14MB429642F093EFD405F66B6FE7C84B9@PH0PR14MB4296.namprd14.prod.outlook.com>
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
In-Reply-To: <161863093723.7.7991468665084930791.5941189@slmail.me>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:38466A2D9C66B29287D1381B8C8AC702C34FC47EBB89DF4CA45B19B2A897F220;
	UpperCasedChecksum:F41461E96289803F0676D82A65F41FFD042B18BB31CABDAE50007BFAC9E477E5;
	SizeAsReceived:7394; Count:43
x-tmn: [CzbpxCMCLecChSTZLZQzNrXfALFA/idk]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: bac82f2d-8f36-40e7-e908-08d901b043f7
x-ms-traffictypediagnostic: BN8NAM11HT077:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: h+UAf1h+bhqYaao8/o9rDDA6mgOZRa6Yv0k6pZPVtBARh4ImZTB6YzFT+riKx44xK0RsiuweTOO6IFsPNfGHIDpjDfGNtRfzht2tvvQUwBcMFyDePBezgpO2yNsJ6fbfmFpnKf+uYxBw/fknonWzx00qHd5vEObEeoNgmSbw8OZ5LIHy1BaZnnMpN22LhoX+gpSFwibuUZvFGy9NH2uwR4NlcG8BXqZR3Jt7cQJ07mHNv/7dBetoPIfEtKblU1QdPjQhTl4LaxLwd9rmXFI2hDzjJNR/FA9oGzh9o29Z60eHWxCqpE0Yewp7+alnL5xh84yD2AsNENg1ueW2yuyv+Vj32oO14FDJh/oPmOwojUUd0HN0j5uSM3fAboq3VuUVLMWIiYlxwipAvi2B04Hudx3KKdF06w+W+soqY8FTpfk6+ap5kOiAqkMwPGhM5M1C
x-ms-exchange-antispam-messagedata: O18Jktr9ck5hkzZqDbahsaHqrjJlISHVtW28PhbXwRTHPzlGeS3cEOXffzb0YD1nFTgqpdltkhIdOywaluNtb7tFgGhH/nW0W2tYV2rTy19ixXF6gJ6AmQW3ziAMG1ZU8/0ej54Ryja+EzT82psSmQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT008.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bac82f2d-8f36-40e7-e908-08d901b043f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2021 14:51:21.5310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM11HT077
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13HEpRkX024775
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

I don't see the message being referred to below, but what's the danger of Thunderbird being discontinued? Is it in more jeopardy then other open source applications?

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Friday, April 16, 2021 10:42 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices

Hi Kare,
Thanks so much for explaining that.
I've never used Thunderbird before, and if there is a chance that it might be discontinued, then I might as well start by trying the least involved method first, saving documents as .txt in LibreOffice before pasting.
I'll try a test with that tomorrow with just a test document and see how it formats.
Thanks for the suggestions.
If I need to ask any more questions about email clients and text editors, I will do so in a seperate dedicated thread, as I know this formatting fiasco has kinda derailed the subject matter of the thread here.
So if anyone has any further questions, comments, or ideas pertaining to Readspeaker voices, go ahead and either post them in this thread, or in the other thread I started titled: "Sending Reformatted: SL's responses to all inquiries" in which my post is correctly legible for those who couldn't make sense of the jumbled email that began this thread.
I'm signing off for tonight, I'll check back in tomorrow.
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

