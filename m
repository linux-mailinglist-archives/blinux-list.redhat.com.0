Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 165863CC8AB
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 13:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626606027;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YgeVcG+Zlc3UNAKpKoyAhYzCvy2T68EJ++JKtcecu8I=;
	b=NF7S2ronhootipUviyOPKZqD/3ZKYUg5V54hKG2f76geucAh/p/WK3eXMcLqh5VYj+OUfs
	PCAkB/YjXK+Xbl+irFFiwZNwgGOdNUxitIWK1aTuNBLCnZWyw932NqsAxgaQMGd1j63+yD
	+bOQS6lH3Zx6CfHZFx2K6zkcj/rfkyM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-164-5v9lFwyEPhORBHyajBMb0A-1; Sun, 18 Jul 2021 07:00:25 -0400
X-MC-Unique: 5v9lFwyEPhORBHyajBMb0A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2186100C609;
	Sun, 18 Jul 2021 11:00:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF9052BFFD;
	Sun, 18 Jul 2021 11:00:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 50C4B1809C97;
	Sun, 18 Jul 2021 11:00:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IB034x028769 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 07:00:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5673A20236D8; Sun, 18 Jul 2021 11:00:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 521C520236D7
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 10:59:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 459B7185A7A4
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 10:59:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-115-ufgNesHzMKWF3mEJscL1Dw-1; Sun, 18 Jul 2021 06:59:56 -0400
X-MC-Unique: ufgNesHzMKWF3mEJscL1Dw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GSMSX1641z4BNy
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 06:59:56 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GSMSX0XGJzcbc; Sun, 18 Jul 2021 06:59:56 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GSMSX0CB8zcbW
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 06:59:55 -0400 (EDT)
Date: Sun, 18 Jul 2021 06:59:55 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: recommended OCR solutions on Arch Linux
In-Reply-To: <CAD_4ddQMPQAiNi938CZM5Pex=FaHgJBRvfgfcGnoggL4NibQ7g@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107180656150.11081@panix1.panix.com>
References: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
	<0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
	<CAD_4ddR+NxQ5Tjd4c0Kpiwk=2m2bRfBO+Mio2KDswbKmxv_aVQ@mail.gmail.com>
	<c5b8b31c-5b2d-e90e-9903-f054b9127a50@slint.fr>
	<CAD_4ddQJnm6Bfj_FJWdYF8-8pZCobkevOwbAPZ-X6s1jPMeBfg@mail.gmail.com>
	<119b96d1-0167-ee36-cdfb-eae9532804b8@gmail.com>
	<CAD_4ddQMPQAiNi938CZM5Pex=FaHgJBRvfgfcGnoggL4NibQ7g@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The first time you configure irc, you choose those for yourself.  This is
something irc fails to explain.  Once you login, there may be a Nickserver
to use to register your credentials if those aren't already used by
another irc user.  Very adviseable to do so since credentials that look
interesting to others will be stolen unless you get them registered first.
That happened to me on freenode so I arranged for different credentials in
that instance.


On Sun, 18 Jul 2021, Linux for blind general discussion wrote:

> Hello there,
>
> Thanks for the suggestion.
> Last night I installed both pidgin and the purple-plugin-pack, but when I
> tried to add an IRC account with it, it asked me for a username, password
> and local alias.
> When I clicked on the link Didier gave the list, a page opened up saying
> that there was nothing there.
> So how am I supposed to get a username and pass for any IRC server? Is it
> the same for every server?
> These might be dum questions, but IRC is something I've heard about, but
> never dove into.
> Thanks for any pointers/answers/articles/whatever.
> Best regards.
> Francisco.
>
> On Sat, Jul 17, 2021 at 7:40 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > Pidgin is very much usable with Orca, although you will also want to
> > install the package called purple-plugin-pack. It gives you a few extras
> > that you can enable to make your IRC experience even better. It also
> > includes a hotkey plugin that will toggle your buddy list and bring up
> > the accounts and plugins windows from any workspace.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

