Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA11444FCD6
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 03:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636941797;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y37XcmdZCZvDVWZ1hY2QBN/GRwSSKUo7CU42qBtvNGw=;
	b=B6xYkqgLf/dz//wUFmSs0fbtip4syeV+eVErzjxo0xPuQZZ9Vt9Uiz0JCekZ8feNyUJuzU
	C6QX2CpWIWCiC3N+sxzhsXNmostiQSOwZJ6zScUp0vg740nZPI4ZDxwaMIpIBb1tj0yIPj
	4OcqF13Es4tMWGc2v2OvfpGfLkvCYng=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-h7Z2SYkxOoiRjP4_sCQXnQ-1; Sun, 14 Nov 2021 21:03:14 -0500
X-MC-Unique: h7Z2SYkxOoiRjP4_sCQXnQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B5DF1842156;
	Mon, 15 Nov 2021 02:03:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 878805C1BB;
	Mon, 15 Nov 2021 02:03:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E0C118199EE;
	Mon, 15 Nov 2021 02:03:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF22xAu016978 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 21:02:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 16B6E51DD; Mon, 15 Nov 2021 02:02:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10D0351DC
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 02:02:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D16B80B707
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 02:02:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-303-EybpAohRP1m6tJjd-MLnMw-1; Sun, 14 Nov 2021 21:02:54 -0500
X-MC-Unique: EybpAohRP1m6tJjd-MLnMw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HsssV0yPjz4HS6
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 21:02:54 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HsssV0DlKzcbc; Sun, 14 Nov 2021 21:02:53 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HsssT6wBlzcbP
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 21:02:53 -0500 (EST)
Date: Sun, 14 Nov 2021 21:02:53 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <YZGyDMsFFKd/+PWz@panix.com>
Message-ID: <alpine.NEB.2.23.451.2111142100480.27308@panix1.panix.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
	<f4000503-df02-93a7-d50e-825ac3e2a0f8@gmail.com>
	<24c55f9c-07ac-ac25-5a96-e3fd5127b7c7@gmail.com>
	<d6f72308-9a85-3cb1-8bc1-56c0ca459da7@gmail.com>
	<YZGyDMsFFKd/+PWz@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

alpine saves your configuration in ~/.pinerc so once you know the format
of .pinerc you don't need to use alpine to do anything with it.  It's even
possible to wipe configuration and go back to factory defaults if such is
necessary using an alpine command line option.


On Sun, 14 Nov 2021, Linux for blind general discussion wrote:

> One nice thing about mutt is that once you do finally get through
> editing your config file  you've learned enough
> to make future configuration changes and enhancements trivial.
> Yes, there is a learning curve, and yes you really do have to
> read the Mutt User's guide, or at least google the problem you want to resolve,
> but  you don't have to fight with configuration screens designed for sighted users.
>
> Rudy
>
> On Sun, Nov 14, 2021 at 07:33:24PM -0500, Linux for blind general discussion wrote:
> > I think I just closed each unwanted tab with 'ctrl+w'.?? I also got rid of
> > the "today" pane from the "view" menu.
> >
> >
> > -Dave?? -
> >
> >
> >
> > On 11/14/21 19:14, Linux for blind general discussion wrote:
> > > how did you do that? I could not find the settings pertaining to them.
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

