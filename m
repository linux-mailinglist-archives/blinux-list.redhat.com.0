Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D65442B88
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 11:17:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635848267;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uKGi4NAeeXXxtpJ4opELITN8dKLABKq6sPKu0xdRw0Q=;
	b=RUGGBXYE7ywhLCN/kXHBeS2dVqmLjLyJFZ6klrHn6acPPsSeJcME4Y46h5PuugMFp9bI5S
	ZOCmYQAG/zy3lTIbSx/UBfafvBRWjmRkgGROkH3NVX7MJLG/e6gZrKZ1hBZEsvovn3PdCs
	QVyKKmgJdI1MtuPQYjfAFj371txHyZ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-Yw3YPbnoN3edL1_BhRNNCA-1; Tue, 02 Nov 2021 06:17:43 -0400
X-MC-Unique: Yw3YPbnoN3edL1_BhRNNCA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2AA9693C;
	Tue,  2 Nov 2021 10:17:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10FB95D9D5;
	Tue,  2 Nov 2021 10:17:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6BE521806D04;
	Tue,  2 Nov 2021 10:17:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2AHXGl029925 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 06:17:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4F7C340D1B9E; Tue,  2 Nov 2021 10:17:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BB9D40D1B9D
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 10:17:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3496B800B26
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 10:17:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-16-prV_SoLPPhmes6Jzbo1msg-1; Tue, 02 Nov 2021 06:17:31 -0400
X-MC-Unique: prV_SoLPPhmes6Jzbo1msg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hk5SC0tbjz445y
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 06:17:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hk5SC0PPlzcbc; Tue,  2 Nov 2021 06:17:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hk5SC04pbzcbP
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 06:17:30 -0400 (EDT)
Date: Tue, 2 Nov 2021 06:17:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
In-Reply-To: <CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111020615040.8275@panix1.panix.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That's incorrect.  Fenrir has been around for at least a year by now.
Espeak got a fork to espeak-ng too.


On Mon, 1 Nov 2021, Linux for blind general discussion wrote:

> On the other hand, choices are good. For a very long time, it's been
> nothing but Orca & Speakup--& not a tremendous amount of development
> occurring on either.
>
> On 11/1/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > It sounds like it could be interesting, but I'm a bit skeptical of
> > anything that starts by saying that the existing a11y stack is so poor
> > it's painful to use and compares itself to other fundamentally different
> > OS's which have worse a11y problems. I've personally used various Linux
> > OS's as my daily driver for many years, and I find it easier to use than
> > the few times I was presented with a different OS just for printing or
> > partitioning a disk for example, which I found quite painful to use.
> >
> >
> > I feel like instead of pissing and moaning about the state of a11y here
> > on the best desktop OS's currently available, whoever is behind this
> > project should contribute their obviously significant resources to the
> > development and improvement of the existing a11y stack, screen reader
> > functionality and character recognition options, and don't try to
> > reinvent the wheel. I do believe that a plugin system already exists for
> > Orca as well, as well as a rewrite of the code to make it more modular.
> > Again, it's better to help with this effort than to piss and moan about
> > the sorry state of things that already exist, all while trying to
> > reinvent the wheel.
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

