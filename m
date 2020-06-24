Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id A47EA207C1C
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 21:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593026635;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Db9qPGnLEXWMefOyDUq5IOccvhB7yp+n/dMrhNyGAqk=;
	b=cMhsNJPBqCD+DRiQnYnElknVUGXR/6yqFySkKy+B1CLP2gjUX3qhQCBd67WxdM2zoC22h3
	vq0bQYht7VLMPpFuiu6A4uPEohWNfbDWJGRG/4AaNfGbgCIiluWtpYkjOqt382Fosgd9pw
	Z4r+DeaA5MmQLakQ6J2l1v4ilg1B2gs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-dBdBu5PZPbuquzGI4MPO7g-1; Wed, 24 Jun 2020 15:23:53 -0400
X-MC-Unique: dBdBu5PZPbuquzGI4MPO7g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BC86107ACCD;
	Wed, 24 Jun 2020 19:23:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25FC38929F;
	Wed, 24 Jun 2020 19:23:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8EF671809547;
	Wed, 24 Jun 2020 19:23:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OJNjUC022699 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 15:23:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 143872156A2D; Wed, 24 Jun 2020 19:23:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 103FE217B43C
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:23:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42C258007CB
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:23:42 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-65-aqslw2XLNMSUNHM85h8g8Q-1; Wed, 24 Jun 2020 15:23:39 -0400
X-MC-Unique: aqslw2XLNMSUNHM85h8g8Q-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id B527E103D46C
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 12:23:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: anonymity, threads, signatures, and confusion
Date: Wed, 24 Jun 2020 12:23:36 -0700
References: <CCAC71E7-DD5D-453C-BCCE-67BC02E9ECB0@cfcl.com>
	<Pine.LNX.4.64.2006241341320.26460@server2.shellworld.net>
	<435D6EB7-70C3-4C70-AAED-11CE64B93241@cfcl.com>
	<Pine.LNX.4.64.2006241420050.27528@server2.shellworld.net>
	<CAO2sX32BWM_Oxdme42Ok1_bG0Yok2hpAZDWSOoMM-tV3_bScBA@mail.gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <CAO2sX32BWM_Oxdme42Ok1_bG0Yok2hpAZDWSOoMM-tV3_bScBA@mail.gmail.com>
Message-Id: <EDB135F1-7851-4E5F-9EAE-2BA3F24ED31E@cfcl.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05OJNjUC022699
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Jun 24, 2020, at 12:05, (Jeffery) wrote:
> 
> I'm not sure who the list owner/administrator is or even if they're
> active, but I assume Rich would've already tried to figure out a way
> to conceal e-mail addresses without completely anonymizing the list if
> he had the access to do so.

I might have tried to find a way to do so, but (to be clear) I wouldn't have implemented it without discussion and consensus.

> ... I want to slap whoever came up with microSD and wish every microSD slot were a full-sized SD slot ...

Even as a sighted person, I'm not a big fan of microSD, either.  They're hard to handle, easy to lose, and hard to identify.  So, I try to use USB flash drives instead, adding a card stock tag (possibly with some braille tape) for ID.  FYI, some Raspberry Pi models support booting from USB.  Details upon request...

- Rich Morin (rdm@cfcl.com)



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

