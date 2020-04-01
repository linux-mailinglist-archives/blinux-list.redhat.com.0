Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 9541219AF57
	for <lists+blinux-list@lfdr.de>; Wed,  1 Apr 2020 18:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585757177;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S18iwDzcLjTlfZ1QwYFUy1JLhs+ExARmUbLJ74bocyg=;
	b=OA+2p3Cg7MXJDyE/XN6IceRAZ8paMUHHNG5RbwDTKrLqQUYB6+0FM9vZLwnJwUazQFHWxQ
	nU9Zkxp6HAXajV7ymJgy/o1cKQCLLmGfccmgYv+i1dFu030avi5cyMUoGLHPkPJEpP/dI9
	1eOFiJctbppl8IBsO/dOuT9BvKBLXR4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-434-IWSeD5qKOUWHz831OdNGhw-1; Wed, 01 Apr 2020 12:06:15 -0400
X-MC-Unique: IWSeD5qKOUWHz831OdNGhw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 613C5800D53;
	Wed,  1 Apr 2020 16:06:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DEC65D9CA;
	Wed,  1 Apr 2020 16:06:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8BD7318095FF;
	Wed,  1 Apr 2020 16:06:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 031Fxh9O013466 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Apr 2020 11:59:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 51D3C2166B31; Wed,  1 Apr 2020 15:59:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D8CA2166B27
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 15:59:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D9948001FC
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 15:59:41 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-214-5NhTnnIuMx-sAzW25_dALA-1; Wed, 01 Apr 2020 11:59:38 -0400
X-MC-Unique: 5NhTnnIuMx-sAzW25_dALA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48srVf0s1nz1Rxx
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 11:59:38 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48srVd6yyMzcbc; Wed,  1 Apr 2020 11:59:37 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48srVd6sLQzcbV
	for <blinux-list@redhat.com>; Wed,  1 Apr 2020 11:59:37 -0400 (EDT)
Date: Wed, 1 Apr 2020 11:59:37 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Alien::SVN
In-Reply-To: <20200401090427.3839f720@telaviv1.shlomifish.org>
Message-ID: <alpine.NEB.2.21.2004011156190.9118@panix1.panix.com>
References: <alpine.NEB.2.21.2003311936270.11267@panix1.panix.com>
	<20200401090427.3839f720@telaviv1.shlomifish.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 031Fxh9O013466
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Distribution slint. SVN::Core came up as unparseable in cpanp with use of
o command to check for out of date modules. I'm using cpanp to install
this and the package claims to still be building and by 2:00PM today it
will have taken 24 hours to build. I could just trash the build as I've
done before but am curious as to possible beneficial effects of having
SVN::Core unparseable go away and have that updated. On Wed, 1 Apr 2020,
Linux for blind general discussion wrote:

> Date: Wed, 1 Apr 2020 02:04:27
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Alien::SVN
>
> Hi!
>
> On Tue, 31 Mar 2020 19:38:21 -0400
> Linux for blind general discussion <blinux-list@redhat.com> wrote:
>
> > is Alien::SVN supposed to take several hours to install?
> > If no, that's what's happening over here.
> > If I ever run this again I think I want to watch perl code execution as it
> > happens when this one installs.
> >
>
> Did you manage to sort it out by now? If not, can you provide more details
> about:
>
> 1. your distro+version
>
> 2. why do you need Alien::SVN?
>
> 3. How are you installing it?
>
> See https://github.com/shlomif/writing-the-perfect-question .
>
> Thanks!
>
>
> >
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
>
>
> --
>
> Shlomi Fish       https://www.shlomifish.org/
> https://www.shlomifish.org/humour/ways_to_do_it.html
>
> Chuck Norris will kill you just for the fun of kicking your Death's ass till it
> runs away, then beating your soul back into your corpse. (by e-neko).
>     ? http://www.shlomifish.org/humour/bits/facts/Chuck-Norris/
>
> Please reply to list if it's a mailing list post - http://shlom.in/reply .
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

