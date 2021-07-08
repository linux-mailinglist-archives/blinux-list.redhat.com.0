Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2C1103BF78C
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jul 2021 11:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625736453;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T2ZGJ2AEVkJ8X4wrPj79ylHTYeUa0T3zX+GiraDpZQc=;
	b=RRTICiYNGHTLRn+7FNTA358yA/UfNu1TKgFgonIztmlP+TnHZ/UIcg+IWjdh57zEgEGcFd
	Vud227n4b7NnlhjuqP4DbPHMDztFruUjR9SVc358/oz04aXN5vr0wgHYSUftjbxbAown3A
	fueq8DBr437GqVclTye1tC4t+P3N63E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-StlgvkdnOYuZWXu1Br53uQ-1; Thu, 08 Jul 2021 05:27:30 -0400
X-MC-Unique: StlgvkdnOYuZWXu1Br53uQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4927362FA;
	Thu,  8 Jul 2021 09:27:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CFE395D6A8;
	Thu,  8 Jul 2021 09:27:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0AA1E4EA2F;
	Thu,  8 Jul 2021 09:27:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1689PdPk019413 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 8 Jul 2021 05:25:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 59A2F207AC59; Thu,  8 Jul 2021 09:25:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54BD9207AC5D
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 09:25:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9629C1078468
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 09:25:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-257-CkjWWrNRPpuzvcl0I2k33A-1; Thu, 08 Jul 2021 05:25:32 -0400
X-MC-Unique: CkjWWrNRPpuzvcl0I2k33A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GL9rC3XSwz43sD
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 05:25:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GL9rC2rmZzcbc; Thu,  8 Jul 2021 05:25:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GL9rC2TW0zcbW
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 05:25:31 -0400 (EDT)
Date: Thu, 8 Jul 2021 05:25:31 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again
In-Reply-To: <3ebe9ac6-abf3-0e64-da99-ece53331838d@schoeppi.net>
Message-ID: <alpine.NEB.2.23.451.2107080524510.23152@panix1.panix.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
	<alpine.NEB.2.23.451.2107071131520.6390@panix1.panix.com>
	<BN0PR19MB52784AE6167BD0644630242DA2199@BN0PR19MB5278.namprd19.prod.outlook.com>
	<3ebe9ac6-abf3-0e64-da99-ece53331838d@schoeppi.net>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

backports is only available for stable and if you're in stable you're not
in testing or sid.


On Thu, 8 Jul 2021, Linux for blind general discussion wrote:

> You can use backports to get current software also in Debian systems.
>
> Am 08.07.2021 um 02:06 schrieb Linux for blind general discussion:
> > Also, isn't Debian a few versions behind on the software that is included?
> > That is one reason I stay away from it.
> >
> > Get Outlook for Android<https://aka.ms/AAb9ysg>
> >
> > ________________________________
> > From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> on
> > behalf of Linux for blind general discussion <blinux-list@redhat.com>
> > Sent: Wednesday, July 7, 2021 11:33:42 AM
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Subject: Re: Starting linux again
> >
> > Actually, debian does not have the most accessible installer.  For that,
> > it's either Slint or Jenux.
> > In order to get debian screen reader accessibility going, you have to know
> > about and use a boot parameter.  With slint and Jenux, no such boot
> > parameter is necessary.
> >
> >
> > On Wed, 7 Jul 2021, Linux for blind general discussion wrote:
> >
> >> Debian has the most accessible installer AFAIK, all other distros I know
> >> are
> >> not that easy to setup. So defenatly give Debian a try ;-).
> >>
> >> Cheers,
> >>
> >>    Schoep
> >>
> >>
> >>
> >> Am 07.07.2021 um 15:39 schrieb Linux for blind general discussion:
> >>> That's great news! I had seen a comment somewhere about debian no longer
> >>> having an accessible install but if it still does, I will definitely go to
> >>> that first.
> >>>
> >>>
> >>>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

