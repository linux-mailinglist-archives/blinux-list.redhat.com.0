Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E8E463C7F
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:05:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638291903;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tnsuJIb62gVwn+52L41drgztEYg1iSyxMIzU0hvl2D0=;
	b=H1vTBwNGQePHYZDhWiQzcxnPYEBh+jEgujvKPE2YzD+G9jcbnii1487VIDmDqq8NiVdKMD
	vmJs1WaMC9naWk1VvcmBIBPPbFyTq26/h02sEwbFR1nCeXzn/AamU2uaFENp65FpDdD3oL
	Ja6oIGH1nCUSEvlH6uw9RMUD3Xl+wyY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-197-JETZIyyaPleqPIxe5sXp_Q-1; Tue, 30 Nov 2021 12:05:01 -0500
X-MC-Unique: JETZIyyaPleqPIxe5sXp_Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2F91874980;
	Tue, 30 Nov 2021 17:04:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B16295D740;
	Tue, 30 Nov 2021 17:04:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B0B914BB7C;
	Tue, 30 Nov 2021 17:04:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUH4pjc007300 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:04:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4CBE51402406; Tue, 30 Nov 2021 17:04:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47C491402400
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:04:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D2778032EB
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:04:51 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
	(mail-mw2nam10olkn2079.outbound.protection.outlook.com [40.92.42.79])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-135-XaOF8HBHOJe1XxHtx7hkcQ-1; Tue, 30 Nov 2021 12:04:49 -0500
X-MC-Unique: XaOF8HBHOJe1XxHtx7hkcQ-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by PH0PR14MB4310.namprd14.prod.outlook.com (2603:10b6:510:27::10)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22;
	Tue, 30 Nov 2021 17:04:46 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581%7]) with mapi id 15.20.4755.011;
	Tue, 30 Nov 2021 17:04:46 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: What is the easiest and most accessible editor?
Thread-Topic: What is the easiest and most accessible editor?
Thread-Index: AQHX5VdoRbix9fGhXE6qTZuiU9GhqawbBkUAgAAIgoCAAAjmAIAAD+EAgAAOnICAAIOcAIAAaHIAgAAq66A=
Date: Tue, 30 Nov 2021 17:04:46 +0000
Message-ID: <PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
In-Reply-To: <CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [1acaHrbE8wj+2HgVvdKy7M9N3sZVw0eh]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec171987-d306-4234-425b-08d9b423834b
x-ms-traffictypediagnostic: PH0PR14MB4310:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: xb+LmLOQwbLYgeYSAxypazoCOIzQtUcvJewlv3Wi551EuLttOPBEY3wb8zw/OqBY2nQqR1HizNEOYjvfN46DT+U+EI6EzFXA9LFWEXpgNfEvod6PUaqdSXs97auRBhyKu4Qk9JB9WEmUkWd+i0aJMoKOPTrk38DY8+utVbyB2RuE5vn3mIzzdCwZGHgkwF/0KxubmgqSiZ8jJYsr5BXIcF71cNEwu5Ly14Lk61TwfM3vko+5XRshDsvbFXuEsUrrt2sAroa4YsXtIhEphkoX6k1cFwbClZKWsLrNKmsSTyXjnHiOQ9nJ08O7DowzqCzkGhoOkMJPhjKQCtnC6nYkYTfu8/z+Ifw6rmT64DqXsqP/yxUwYdfR83CzXe4EwVSpxWG5NRbH2QRgVM5CQ+FxY+juP0IT+2Ud7Xb6GuuPIuftgnL2VBR+X8wT3RANMxe169M51LdlOnTNcuK5RKMrsLwqaypXe/WDBnHvfeQz0mHuX99U9mqM9X/ZhKa7cWJCkUXo6amc8Yhiz/LTq7qQOv/VznXcxnfV9EfOCWetjNG1YAyhVQE639frJQ696etfHpggx33E4z4yxyviN9UIS4JH7REWhbldPbPOYwVbu1UrJXf/RCW20BwsoHVScPL1
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: t/mFwHPpD6Ggw4U/+NOcBtH04iRtvLfeqx4JmfUx5DDd0N6hD2pMjcXiHcJkfZvOVwYDlU2g3KrEF/+rGE7aS2oHhyrxsLuLgvOFcOY7wiVoFFcIvCji0sCf3sGR3gN2Zqv+fI4C+zSZYvC4flFSfNV/r455meOYYm7kyljxnOPnv3Ljb8Jta26l3qWFZi6qSwZDYNERDkIIL+78ZL1bcbC5LVlGw3+R9GnRbmDe1fwv3oFCAHZcsQ6MJxfsMSf4XlR8q7I09wuS2BVK8IEpQrOr6yYhOPPYMqNR71J0y5iF/8jk3oBh6Q6wyPnrTgG8rZYkFnCxCNVc6xC51Ne09D1IEls+W6ERNNI3aKDWBqyMpNRJ+spFBn1TALSKUwT+dwKkNbN2lcW1oauFmE0yOHqwX16OqJX2SxvdsVw+en33+l1Va1IMmT6DSNgpRCwcZvddGf+UJ6reNte8CmdefTNoqSCdU1CKaNUJT3slduCblx/YmGLnMmfp+qvNtyqQqtxFEypXhh4nJtz2eTC4uHQs0IvgX3deOpou22Zr8/WhmK6eBiwWYQV/0mtFtkW2anddWPDOcuVXwPrKYBAWAr7GAStWJ23LBrkuSCwzRAKRVMap5dhcfv2LgFtF/BjqyTGp6UO3wd5fMPJj8qQT8a2ToDkBtDOVGCTx5Z9mvDNXwB1dUrbhV2YcfUwV5pHz04EFlDlQ4HNLAiuwAEnWKg==
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ec171987-d306-4234-425b-08d9b423834b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 17:04:46.8541 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4310
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUH4pjc007300
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

I agree, and although I know you're not saying this, I would say that I don't think this discussion has turned into any editor wars. I've found it just a good discussion on the options out there and their relative merits of each.

BTW, I do tend to like applications that let me get started quickly, but in the case of Emacs with Emacspeak, the benefits are so important to me that it was worth the learning curve. It's also a bit of a misnomer to think of Emacs as just a text editor. For example, it can be used as a file manager, a development environment, a personal organizer and more.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Tuesday, November 30, 2021 8:28 AM
To: blinux-list@redhat.com
Subject: Re: What is the easiest and most accessible editor?

I tend to find the editor wars, as well as the browser wars, console wars, various fandom wars, etc. to be rather silly, but I'll say this
much:

I prefer tools I can jump right into with minimal foreknowledge and be able to do the basics within minutes, learning how to use more advanced features as needed, and if I need to do more than read through the output of -h or --help to get started, I'm most likely going to start searching for an alternative tool for what I'm trying to do.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cb58a14268aa848504e8a08d9b40da3a4%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637738792938719255%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=Xb6b8aTf44hj%2FPxtekLNbFaetBcY3bdEQStNrVWqajw%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

