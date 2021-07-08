Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BDC983BF2B4
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jul 2021 02:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625702977;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ohNJJ128W6k3lxaXxqltXlbZcXBxY1d7rnNs/OHtUw0=;
	b=eLWoBFGPNTmXoZhbjd18LmMVB9IYAqqGhTigm2VNQvYA6uVjxHRl5KXXVZN4sr3V/ZhWuh
	ItctwPbGGch5u7FqU+hraP9WV/GYAUQiwFhkrps3y2EvACMf9CzQLAAuLhZrkocLVstjYO
	GvBuxgV4l6e+VMryO734itwHAGXFZV8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-8RGU1R5dNiyxMf9uc69xDw-1; Wed, 07 Jul 2021 20:09:36 -0400
X-MC-Unique: 8RGU1R5dNiyxMf9uc69xDw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AAF2802921;
	Thu,  8 Jul 2021 00:09:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06B655D6AB;
	Thu,  8 Jul 2021 00:09:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6C61D1809C99;
	Thu,  8 Jul 2021 00:09:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16806ZAm004646 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 20:06:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AD5CD2064013; Thu,  8 Jul 2021 00:06:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A86BF2064012
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 00:06:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25E7C185A794
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 00:06:33 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
	[209.85.218.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-149-eaiGU2V4NcWNiooca3KEPQ-1; Wed, 07 Jul 2021 20:06:30 -0400
X-MC-Unique: eaiGU2V4NcWNiooca3KEPQ-1
Received: by mail-ej1-f47.google.com with SMTP id gn32so6282703ejc.2
	for <blinux-list@redhat.com>; Wed, 07 Jul 2021 17:06:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
	:message-id:references:in-reply-to:accept-language:content-language
	:mime-version;
	bh=EmXdtK8gcnICcS8Q3Qn3Hz8wm3J/J1jd5ziAe1YzBVM=;
	b=hisinR9keb3vcKi8WDJuT6AJQlV5JHN6pVNxfy80IJ4byNIhVpzR4jLydOQmrUhnub
	caM0xaTnd3i8pIgq0HqFcc9M8qQqHV32r+9fjIgARojJSwMMyrCIdFIfszmvzPTQzRY4
	slyR1VfgpRyc6rejzPgUy6LpPQslSL1xKsnXD/L4X5SAPGwJvwxPyx6x4eFXBOIFsrw+
	Nv6czJzBlyvJwsfMiiXmLJRV9ioBqYXBhHi5jjS9J2DSPGxXfuAd7QQh2eUpKNWaCimG
	ObdXVenO0QIbECqfV2YlGshsG8WaobYRJjoiK8SD7fqxgj/kwjAJ66KQ2HK8rpltftSo
	GR4A==
X-Gm-Message-State: AOAM531dM+z5ZI/lq0CadzjD8vjc6KW0SwHW5eQS15aBoMInlcwAwHTt
	eSuwB2rxzeD7mK4XEe5eAV742NB2Jjk=
X-Google-Smtp-Source: ABdhPJxSAE159rdlTiA/NgDIQHHZjUzqyR6bHtGIgRkXqZqIvQH6QRLYU4zc10Q3ACsz36DhmgysDw==
X-Received: by 2002:a17:906:5d07:: with SMTP id
	g7mr26649573ejt.521.1625702788785; 
	Wed, 07 Jul 2021 17:06:28 -0700 (PDT)
Received: from BN0PR19MB5278.namprd19.prod.outlook.com
	([2603:1036:303:3821::5])
	by smtp.gmail.com with ESMTPSA id v3sm123001ejg.20.2021.07.07.17.06.27
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Jul 2021 17:06:28 -0700 (PDT)
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Starting linux again
Thread-Topic: Starting linux again
Thread-Index: ATFBMDQylBabz69FiptyThYfae6aUzdhM2U1MDQ3NFgxNDIyMTA1NzRCxhzDClU=
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Thu, 8 Jul 2021 00:06:20 +0000
Message-ID: <BN0PR19MB52784AE6167BD0644630242DA2199@BN0PR19MB5278.namprd19.prod.outlook.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>,
	<alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

Also, isn't Debian a few versions behind on the software that is included? That is one reason I stay away from it.

Get Outlook for Android<https://aka.ms/AAb9ysg>

________________________________
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> on behalf of Linux for blind general discussion <blinux-list@redhat.com>
Sent: Wednesday, July 7, 2021 11:33:42 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again

Actually, debian does not have the most accessible installer.  For that,
it's either Slint or Jenux.
In order to get debian screen reader accessibility going, you have to know
about and use a boot parameter.  With slint and Jenux, no such boot
parameter is necessary.


On Wed, 7 Jul 2021, Linux for blind general discussion wrote:

> Debian has the most accessible installer AFAIK, all other distros I know are
> not that easy to setup. So defenatly give Debian a try ;-).
>
> Cheers,
>
>   Schoep
>
>
>
> Am 07.07.2021 um 15:39 schrieb Linux for blind general discussion:
> > That's great news! I had seen a comment somewhere about debian no longer
> > having an accessible install but if it still does, I will definitely go to
> > that first.
> >
> >
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
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

