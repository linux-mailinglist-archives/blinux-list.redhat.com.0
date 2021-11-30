Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BAA463CA2
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638292642;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BQ3iFwzY/t7jE4zNHXcrXB3NQpUpewfvrJ9gfzVaS78=;
	b=gs4wa4fM6XI5NedjvY1DAazpl5MZNMqXGfhPnii+zMs9ky1mjFeAMqTQFHC5yaObQcpW6Q
	17qCT+pS4OXOlj7D1DRnrQILzyOCBXmzqR9ZyynH7tgvblF0OqY84lhy31QXqm5oJ2dOOv
	E/hCtl1/huXcaPCRfgnFI6uVK0/qYXs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-223-2N6eisiEN8iwKIUkLocypQ-1; Tue, 30 Nov 2021 12:17:19 -0500
X-MC-Unique: 2N6eisiEN8iwKIUkLocypQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 046AF8042EA;
	Tue, 30 Nov 2021 17:17:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE7CA794D4;
	Tue, 30 Nov 2021 17:17:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 188CD4BB7C;
	Tue, 30 Nov 2021 17:17:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHH8Dq008157 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:17:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B4541492CA3; Tue, 30 Nov 2021 17:17:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF6BA492C38
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:17:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 946A7823F6F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:17:08 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
	(mail-bn8nam11olkn2078.outbound.protection.outlook.com [40.92.20.78])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-599-93jLsjw-MYSGFaba5YcWbQ-1; Tue, 30 Nov 2021 12:17:06 -0500
X-MC-Unique: 93jLsjw-MYSGFaba5YcWbQ-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by PH0PR14MB4766.namprd14.prod.outlook.com (2603:10b6:510:86::10)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23;
	Tue, 30 Nov 2021 17:17:05 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581%7]) with mapi id 15.20.4755.011;
	Tue, 30 Nov 2021 17:17:05 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: What is the easiest and most accessible editor?
Thread-Topic: What is the easiest and most accessible editor?
Thread-Index: AQHX5VdoRbix9fGhXE6qTZuiU9GhqawbBkUAgAAIgoCAAAjmAIAAD+EAgAAOnICAAIOcAIAAaHIAgAAq66CAAAIwAIAAAOzQ
Date: Tue, 30 Nov 2021 17:17:05 +0000
Message-ID: <PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
In-Reply-To: <4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [lbiIzCOtamWNe3hZFwf2pOxdh+DYlotf]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 682329f2-7521-42d3-a540-08d9b4253b5f
x-ms-traffictypediagnostic: PH0PR14MB4766:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: +U5wTHVwGP+lRIJhZeICKWSmyHx5NhEmotquzHeZaVFgJWzx6ru18RNcORYa3pf+wjttw4tcylcHoTEQjpWSvP1o6pI6LFv2xnx8WlFq7zmlqKiL6COPuFQuW1b3+k5B7XZKqniWe7gXP1MsaU9BkIqMniszYqvmDAfJxjErD9PHyTpRbyYw3SGxtuF9SRYJdoWcDBo1QgGJJJ77c3/7ztokjyKYanok4fziUc5E6+nmrCeObT2tQVfu5umoa9oTp9ptMj52hfmfJmOyN2obilGHz6OcaCLYCqk51+x3rCA62bzRjDsErxwy3rYi3gDzx/dZiUKkkoSiVGjVWCUONp66GdTVGNS4zgHs4mVWkCkXrpBROIGBn5OQ9NGlau2HZZ+njETenm3gqarkO/FDbK+pRmcS4xriDAdGmjEKfMOA/HmxaYrKuwft6RPKUxihoIZoTmH9ADmU1MoCb8ZphjQZKBGE+fjFskY5mDtieGJ7Psm3rJWsXZPrK7rCMmwvVL7IoNGgI6uMSc0S72JTeiwPNiJhA0nkarJ3NIkHkvrad1KqUdO1pXN5nPcXEfEs1aLrYNlahUWsMBs3xnajBuv1kYatVGl4hCoqru8rviFH7qZ7C3c7kdhxe6rO7KCZ
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: h2ksPOKQzflAQMIS8k6rU+Kfcr/xlcszTir2gOZgGp4lPFrXes/RY1LR5csEnABxHSBP6lkJzLW1LuCdJF6bvBnKxEumWEDY38aJJc227ArdG39bSG/GVVl562qNqFS9EiOOWlz8V+/OAkreidQ16R/hdLMq+M5PG3/bZyCTqs/OpaCmquMTCxIPmhUe4xXU6UChNQj0o2GzaMJvEYNSnpBfbhTyGjvoLwIU21LhN8Kq9vn4leiZ4d9tp9rrOMkN2poXtDC6zPqy2byXFku7aqbdJ3KBsbIMBhVaom+E4rqcWHyQiXuicEIgAGaeHieKKStzL9VguTXpvjHleY1BxYFw3O0/Q++MC4Fq3kmC2JPxopN/gHFHnpdS47G3sFg0b84WA68k7vrm7kGgzpptSKvOlo1/qySqJO48nJNlzLjWmMxAtJVJ4gVQNq2LU6de/7F1wCybaUDSGk5l+5QegJADLJYHtLripEOoVYFJ4Z6D8fGZ69GVJWnz8ssXWMVikoZK+Sh2Z0bGEs2soTlFupWFvK37WTqFCVjd+BrQaIkbYC5Fwf4KbgsINUlRwruIfa8KLi/bcK+0GPmmiGtjm/ziv+RrFRTnRemL88ipwlUWkiaET0/tMV+Yv+h2rz6PoxVi/bIlV+3uA8Ry6UdJLTtvHS8FJAjftOkFMfpdXHha4pNGfYG1nKVBJSm3vIafjz95pEmVsYENEVj4KtPHfQ==
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 682329f2-7521-42d3-a540-08d9b4253b5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 17:17:05.2041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4766
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUHH8Dq008157
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

True, but on the flip side, when you're using it as a personal organizer, an email client, or anything else, then all of the editing functions just work as you'd expect. No need to get used to the idiosyncrasies of each application. It's true you have a lot of key commands, but some of them are more intuitive then what people think of as the standard key commands. For example, what's so intuitive about control+v to paste or control+x to cut?

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Tuesday, November 30, 2021 11:09 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?

It's also a bit of a misnomer to think of Emacs as just a text editor. For example, it can be used as a file manager, a development environment, a personal organizer and more.

I think that's one of the main problems I had with it. It tries to do far too much, and puts everything into an editor style environment. I found it to be a nightmare, especially the strings of key combinations that can't be translated to some kind of mnemonic in most cases.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7C43cfd108ee08412ba86708d9b424310e%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637738889812365134%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=fYaI%2Fhsq8%2Bf%2FYpt%2F1lxEYePM%2FVxlnvlhqfVptNpUEjQ%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

