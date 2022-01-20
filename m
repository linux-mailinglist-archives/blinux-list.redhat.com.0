Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5731E495385
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 18:49:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642700957;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6ibcLjqk8yxUYHj8p8oPzqhehEaXR8PUbRijQary8Lo=;
	b=BP3kOItl0y8TTzwdEine5P+BqM9MrFtd4RGP92B7YPM3INZlqUNMrAykH4xYjVFe+Aznat
	yGgTfe4BfIQGla8ALmhTEqnEF0Vkne/WzxgCmD4MMDrn/mV5pzqez07ALlL7QQSsmpaIQ4
	xB8aaVrc285nzXDe2UtWskfbwQjUUJE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-632-CErrJU95OferBzNH1L4k7A-1; Thu, 20 Jan 2022 12:49:13 -0500
X-MC-Unique: CErrJU95OferBzNH1L4k7A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E5311091DA1;
	Thu, 20 Jan 2022 17:49:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D969B7DE49;
	Thu, 20 Jan 2022 17:49:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 61C331826D04;
	Thu, 20 Jan 2022 17:49:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KHix78013949 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 12:45:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D5A5B141DEE5; Thu, 20 Jan 2022 17:44:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1018141DEE4
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 17:44:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B75F71044561
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 17:44:59 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
	(mail-dm6nam10olkn2052.outbound.protection.outlook.com [40.92.41.52])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-538-prLz1KtoPXadUrZZGM8MAg-1; Thu, 20 Jan 2022 12:44:58 -0500
X-MC-Unique: prLz1KtoPXadUrZZGM8MAg-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by MN2PR14MB2765.namprd14.prod.outlook.com (2603:10b6:208:c8::12)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11;
	Thu, 20 Jan 2022 17:44:56 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::fdbf:7949:d13c:6dd1]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::fdbf:7949:d13c:6dd1%6]) with mapi id 15.20.4909.008;
	Thu, 20 Jan 2022 17:44:56 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Running a Linux VM on Windows and making it talk?
Thread-Topic: Running a Linux VM on Windows and making it talk?
Thread-Index: AQHYDZkD0+21yPwt1U2O01OhzdSRMKxrzDgAgAASjgCAAFAW4A==
Date: Thu, 20 Jan 2022 17:44:56 +0000
Message-ID: <PH0PR14MB4296A211C7FDF35750734638C85A9@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
	<alpine.DEB.2.11.2201201340550.1250@debian.work>
	<YelburhFkqY1AXFh@k.n5t.de>
In-Reply-To: <YelburhFkqY1AXFh@k.n5t.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [Y1GgI2Sses3kU9N76i1BvMZfnWUWAJWX]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4432e413-c61f-4d2a-689d-08d9dc3c927c
x-ms-traffictypediagnostic: MN2PR14MB2765:EE_
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: 4c3Eas6KiF4M9yjVMS4twLJgTyyEED3Ai+UWyb0ECkvs73QCTNBxCLArStqNctgTqBGuv0dDdS8pRISP3b0evqVvEn/oJsXTj3XIICvOWFPOLps1lLEx0mKJqxbZXz/5bplSzXPPRqufLCKky8YyJ7UqwuOWX1d5P2yJ8j93h/psZlBqhXPhvVENOOBwarE9BgBdvck2on+4eqwKgL/LgUADnGzmOuyr6RYrA8VU4sTIq9fjz7Rl3Q9RnqBLqVchcbyWit8X5iOpDBXdlpUvM2gpDvTYRt7p+G9jrSVAuxG6J+i4nJWatEFd9PTdaPFsAwxs6zgvvs6+nu4oVwYFYyEHl3I2WliTwhK1vh2Ns7njWwC6Hu3CwpvqxV1XDz+OUnTcwMoLwT9yWWjQLTb/rOpT50vCAXWZMtAZtW8y11/5C61q8HSD5ReM0STc56ZucgnIOiv4JtwusMSi6bLCeuijujNh/Nw6CahTnj3HHDZYQsx7QysoYPCgd95j+ONqsxD6dh82R32xNVzCwO7y+vzF9eNmfZo/SbT8x+iBdhHLl1ZJ8Wys6/BT00ALystjetzMycTJKVm64GrNUCzOQ+v0+97vE+hnd0hhZtMcoLoAgd+oKtyRz6IOP1liE1IU
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: RF8VdqqeLvUQDADjKZbe8lfy57WoiZlV2wjPcGfDSzCS2oUXVuu5+I68/gHrBZ3pkW9oU6TBUS5injHQsPOgf8uMFvEXdDXRpjWF4MZZFPejuGXNI9bYh9eRUhg1qlZs9cReJEzLIFbWdHtvZMzaiUpERj26hRPdnlr6+m7pJqEh1/dGXA2S2xaQrX4Q5m5ZtoYrh6tk714qCQ+KEmFBJWVCCku2vb8PD0DWagrT3gVASX41SjAff94iFv2GZTDb8HLpIKSRiHr2PaEiVeiUTmu+ceNK57oSFSNSlvKM+YuDXwYVxmtf6Jc4m46dnvmvP0no2hrtC4L4BCcTRpf8ZRAJGEUpR/RnbtoYDtLYVhccyiUqZXiB+3+vayUHgOhQ5MhHofvCRIdc+3n1vCoIHv+0XNOHGA4iVyhb7I0nn8k5TAQDCG5BO7yFmcO/RqIl6Eu9Yd2VRopvdFtKHvCz/ZxbjMVkuWwI5Rr7fYowgtVWF4TX2nFBmHgugn+UlkHj6cfDJlsmLM3WjDkVUPFSUrDg3f5PPOrZK8djTH+/XJxJRSqbY9k4n0L53Uh+XsNGlAX9ipqLPMb4qy+BDzH2Y58l29gyycKkb6vhj1PiwYRrTOt1BFJ+TJdrIF7gOb2biTiTSRTkEEym7hglIqgitp7spFfiVNOhXHPwwbwnkzOc/H6uO5TxinvVC4yRE0/cdNgVmARdmiuR/u6PCODCy/ThF9LRuDO+uhqLu/Sml+8PyGwMI9CFtUUd6pwEIX+4yv85Ey5GvgVIur8cBx0JC+U/lYWCyJvPw9ywQc0R9IWcxh+LRDIzbQtyItTtow6i4BSVsPvPEJNQmrnFuL3199Rlc7sLfRSORbG1fCITnBX0o8MHyFvetfcD4qnwru4yDEc5PvXModq7mnmjlQl3tKgqON1OGVhmSEHarNs383EJWF+HskZVbqvLI8Kpl/Nr
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4432e413-c61f-4d2a-689d-08d9dc3c927c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2022 17:44:56.2786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR14MB2765
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20KHix78013949
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

On my Windows machine I have VMware Workstation, which is free for personal use and has a few limitations, like not being able to run more than one VM at a time. As far as I know, VMware has rebranded VMware Player to VMware Workstation, so there are no longer two different products. This doesn't change anything said below, but it might help someone as they're looking around for what to download and more information.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Thursday, January 20, 2022 6:55 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running a Linux VM on Windows and making it talk?

On Thu, Jan 20, 2022 at 01:48:58PM +0200, Linux for blind general discussion wrote:
>Once you have it running, you can use control-g to switch the keyboard 
>to the
>
>Oh and do not install the enhanced keyboard driver that VMWare offers, 
>apparently it causes big problems with Windows screen readers.

I am also using VMware player and Workstation Pro on Windows 10 for linux guests and generaly I am very happy with this kind of setup. I've activated the enhanced keyboard drivers from VMware and I can not say that they cause problems with NVDA or Jaws, but maybe I just do not notice them :-). What kind of problems are this? Do you have any examples?

TBH I do not even know what the enhanced keyboard driver does... If it rellay causes problems maybe I should also uninstall it...

>I've not tried running a GUI under VMWare, but I don't expect any issues.

I've done it and its working like it installed on a normal machine.

BTW.: Have you managed  to copy content from the Windows clipboard into a console of the linux guest or do you know if this is possible by using just the keyboard? Is this what the enhanced keyboard driver is necessary for? 
And is tere a way to copy the content of the clipboard from the Linux guest to the Windows host?

In general I am very happy with the setup and running a Linux guest on Windows with VMware, but exchanging content between the two systems could be easier, especialy for the content stored in the clipboard.

Cheers,


  Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7C87511c93ccb948318b6308d9dc151286%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637782805323957342%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=%2B%2FoQmwJaXw5Y%2B71S4kVjOP0vfsx1bqDwcrmDYNqI5RU%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

