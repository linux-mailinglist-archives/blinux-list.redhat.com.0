Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B344A31AE
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 20:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643485803;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KvnpoPuL9cfOKNMXFY0l2WcrS8fX9C6rvHLvAB2uSpQ=;
	b=fSkBiUNeOPYGe32tKfHGc33BoiI3S5ZB2uu4xMuBVPIc8glYuF5ldh0R5ETIU35vhgX4Zg
	FnetmJpBnztdUPyk75CMdmj1qhfVwA4lQyR2MFLNdKjJSmeEN1ZRW54lzK25kUP6S99tuH
	5CK10H66SbNWU/Mc9i5eQA6PXwoDfAA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-160-JmkSkOyrPeSo1Ce6Z2nisw-1; Sat, 29 Jan 2022 14:49:59 -0500
X-MC-Unique: JmkSkOyrPeSo1Ce6Z2nisw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDFF12FD16;
	Sat, 29 Jan 2022 19:49:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B98FB100EBD0;
	Sat, 29 Jan 2022 19:49:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BFFD4BB7C;
	Sat, 29 Jan 2022 19:49:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20TJnTqM003571 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 14:49:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 22AFE2166B49; Sat, 29 Jan 2022 19:49:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D8632166B2F
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 19:49:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A62A1044560
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 19:49:26 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1anam02olkn2060.outbound.protection.outlook.com [40.92.44.60])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-642-2dEivQ4wPmGLg6i44b_MMQ-1; Sat, 29 Jan 2022 14:49:23 -0500
X-MC-Unique: 2dEivQ4wPmGLg6i44b_MMQ-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by DM6PR14MB2956.namprd14.prod.outlook.com (2603:10b6:5:1ac::12) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18;
	Sat, 29 Jan 2022 19:49:22 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::fdbf:7949:d13c:6dd1]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::fdbf:7949:d13c:6dd1%8]) with mapi id 15.20.4930.020;
	Sat, 29 Jan 2022 19:49:22 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
Thread-Topic: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
Thread-Index: AQHYE9TgQu3zQQYtqkyUZz6qC6zoBax3nTuAgAABG4CAAAGxAIAB3XqAgAAFGoCAAOf+wA==
Date: Sat, 29 Jan 2022 19:49:21 +0000
Message-ID: <PH0PR14MB429660BC34A2CD6F0D17D1FEC8239@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>
	<79793ef9-1158-eb3c-cfdb-8cbe2aa9bb1@panix.com>
	<9b23be50-9125-dbe1-66f4-03936e6c2aa1@gmail.com>
	<55d93fef-37e8-765c-5f48-fe5e859f052f@gmail.com>
	<42544918-c8cc-417-de7c-950c0ef5b15@panix.com>
In-Reply-To: <42544918-c8cc-417-de7c-950c0ef5b15@panix.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [xM+7h+z9KtPQzi25EANtRKu5wqYtlwzM]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0241d3fc-7b4e-4b2f-eea5-08d9e3607224
x-ms-traffictypediagnostic: DM6PR14MB2956:EE_
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: JWLoCH1xS/d6WBkXqnr2RY6nt0/gL5QvCyyGQiNcyuCCJEaBE/ylf3ebZllfGuLRRYjJTZuMx2bhixQYJvUTSu+UhsUWQVORvf0VB8Q8oPrngOXRUicshjkejIiJ33j9oVIUwSe0A5pHjxiqL7cbngaqrp1JkPgz2ZR++U3VCE0Eh3+lg5ccy8LvWB7lLAJ8xZbynOPdocp3hYiP2WuuWTeHs2OFQtK/+uJBP59mnKrh6PnAgelGG7tOBAaLgPDPkqL8CoMBHCxFpYqMhVXD41is9HMq06/z+tc5hL2lq0aBEGk5maNT6Vix/SzapkoMbFeGjsf0EM3pVxLa+4YsvFpiAKiI4nSR4zJ/LdedyRrGkdZ/phkhb9sMJmEp7nz0aBhw8ecxoYbbU82WJWjmmwdIJkD1YgEjv6ew2xhJwIvVc/O4g9el0edYRdth1gyPxoenMD7gNLM6R/CrwO6VN9hPM4f7APQuaoATDkjKjA6LcLpElgxskPr+cOgr9r1muk84EiVrjM1+BPXeWNpfZ/iMSlxinrk3RnJ/tI61YvHYVipwhOVDLuA+6TuQbTd/b0GS38Z2q0VTRiXXBK8J+/hmodFqiavjuAan4+53YnWbD3c05D2BXLK0RcpGcpiOwtPoX1qk/C6EAYZRFPUwvxkSnnakyd4QFe+PAv8lbgw=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: ttDlcddFDF1LEgjBKeoAR0ivF58b43Klp7tkZs7Lyx6P2mh7Y2nemiZD9gQfUsVUdI+4YkweoYHIGhedb0KtPy6K5MGDk6881kxro4nctl+52ZoFA2us7M2zm5ZC/NN6VUQODnEDvmSd+sGxc6IkrLrqJcSQRGcF5F7CGASiDK1U6FaAZLPAdtmyhHS+Qwx/aMtZlr9r1H3Dj2O9+1mR/6wNKNOaKkOQIuF1nINRGqvLdoiqPvLsso90CoVdnxILBETpAa5s95aCYOz66Hz0mKz8BE+gEvmKCP0H7KO+3QM9xJx6pxWUn91jGZJOmM+2MX2EpIjEglp3FtW75KbDACcCfFhAnJsAu5GomOY84YE9xAd2yEcKvjduqTubVPVsV1DFAMipHypjZqtnBcdsli5ZvYv42GkHyVpIyUoy2ibJoO8S7oup+oxV3WfQ9VaLgeNpEXCkd3h6WhRsSXgD5tAD/hYoOg51mK4W7bVxx8B0G34wcb9BlpTiO4PC/KKl7S0JrQWrnuPY0YmQ6KjvfNyaei9VoXaD9u9HLg5b3OBOHjE5d1jj7uBBDTpXG7Bq1M3+KuyN/mRxa8rJ35S3g2GwxceOXbdVX4txXbPOXmrNt+L9oblVsQavWWIMdnrWZ5tha0LQolEss3iqbvZGNggYSqj0+BpKYEst+YWdo9XysI8GrEajk66a0RX9Baz2U6yt9Lbs/FOk+NRdp+z5kNpXo4MI2YPGwTHc3Gk36Zcy4UvxLHjoY+5ksTgvHOS0ZL1tvfnhX1q9lddqUGDRflBfL4d44Va9r0oKOsPp742b3aPOYcPW3rNYlchFyLSW6K6mkw7/7ScsN4X83yThGJURhbWqzM+00bud4iVKtxrp9lirKbAa5cL440rGb1gQXONfWWPIOuIrxTrBS1OzwFvb5Eb5AnP0O67Izj/mt66sJYe+jbWfJBjLdP1HoHTc
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 0241d3fc-7b4e-4b2f-eea5-08d9e3607224
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2022 19:49:21.9930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR14MB2956
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20TJnTqM003571
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm not sure what the canonical definition is, but I consider bare metal to include dual boot. Afterall, dual boot just tells you which partition to boot from, but you're still running the OS with no hypervisor layer or emulation or virtualization.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Friday, January 28, 2022 11:58 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso

Bare metal means no dual boot, no vm, an ssd or ide or scsi hard drive is used.


On Fri, 28 Jan 2022, Linux for blind general discussion wrote:

> what is bare metal?
>
> I keep hearing that term zand am wanting to find out more inmfo on it
>
> On 1/27/2022 6:10 PM, Linux for blind general discussion wrote:
> > It will be interesting to find if archlinux on bare metal using
> >> pipewire runs into sound problems.
> >
> >
> > I don't think it will have sound problems. Everywhere I run Pipewire 
> > on bare metal, it just works with no major problems, and actually 
> > few minor problems. Fedora and Arch both seem to work on bare metal with Pipewire.
> > Virtual machines, especially Qemu and I believe VirtualBox as well, 
> > seem to be the only places where it appears to have trouble.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flis
> > tman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%
> > 7C%7Cebb6cd747b164f36257608d9e2ec5230%7C84df9e7fe9f640afb435aaaaaaaa
> > aaaa%7C1%7C0%7C637790326897578112%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
> > 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;
> > sdata=lj3YdndSvKYxt%2FdSbwagk1e%2B6tQZ4Hf8d8F9SUoDuiM%3D&amp;reserve
> > d=0
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistm
> an.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7
> Cebb6cd747b164f36257608d9e2ec5230%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7
> C1%7C0%7C637790326897578112%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=lj3Y
> dndSvKYxt%2FdSbwagk1e%2B6tQZ4Hf8d8F9SUoDuiM%3D&amp;reserved=0
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cebb6cd747b164f36257608d9e2ec5230%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637790326897578112%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=lj3YdndSvKYxt%2FdSbwagk1e%2B6tQZ4Hf8d8F9SUoDuiM%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

