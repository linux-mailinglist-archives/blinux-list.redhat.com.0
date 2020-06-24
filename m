Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 0AF7420726B
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 13:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592999142;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JTlufWEGzFpMsUw2kNzQDcINhmAshKV7Uh9JOiuNxZc=;
	b=bwpXiEwpnAvR/dVwP+r9q2EMwk1cGInt1GvfNO1/cBIfTGPb11a4jRxb2yi0UNIMkwFgql
	UIFZkSh3t9nrbLg1b9de49sEit7dTcOblahoaKSU634aju4JraL96iOBAxopeP7Z8NQBev
	dUaRnPxzR0oNeMnD2VSXjvNNmktgo5w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-61-2jOOj9qIOuKzU2zzJcszeg-1; Wed, 24 Jun 2020 07:45:39 -0400
X-MC-Unique: 2jOOj9qIOuKzU2zzJcszeg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C1A07BAC;
	Wed, 24 Jun 2020 11:45:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CFA28926C;
	Wed, 24 Jun 2020 11:45:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C572104912;
	Wed, 24 Jun 2020 11:45:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OBjUhk029837 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 07:45:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3665D10CD779; Wed, 24 Jun 2020 11:45:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 30BB810CD776
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 11:45:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7188C100CF87
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 11:45:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-232-SQno9JXZNgqECcbPwL1bIA-1; Wed, 24 Jun 2020 07:45:18 -0400
X-MC-Unique: SQno9JXZNgqECcbPwL1bIA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49sLtP2trbz16Mg
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 07:45:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49sLtP2KXXzcbc; Wed, 24 Jun 2020 07:45:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49sLtP1qCGzcbW
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 07:45:17 -0400 (EDT)
Date: Wed, 24 Jun 2020 07:45:17 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlc bookmarks
In-Reply-To: <20200624133029.711a19a0@telaviv1.shlomifish.org>
Message-ID: <alpine.NEB.2.22.394.2006240744070.22958@panix1.panix.com>
References: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
	<20200624122324.7900c7e8@telaviv1.shlomifish.org>
	<alpine.NEB.2.22.394.2006240601570.7968@panix1.panix.com>
	<20200624133029.711a19a0@telaviv1.shlomifish.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think I need to study the .m3u file format.  Plenty of near duplicate
commands and no examples on that wiki.

On Wed, 24 Jun 2020, Linux for blind general discussion wrote:

> Date: Wed, 24 Jun 2020 06:30:29
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: vlc bookmarks
>
> Hi,
>
> On Wed, 24 Jun 2020 06:03:44 -0400
> Linux for blind general discussion <blinux-list@redhat.com> wrote:
>
> > I searched without quotes and searched for bookmark.  What I found I'm
> > going to guess all has to be entered from the command line as vlc is
> > started. --bookmarks=<string> Bookmarks list for a streamOn Wed, 24 Jun
> > 2020, Linux for blind general discussion wrote:
> >           You can manually give a list of bookmarks for a stream in the
> > form
> >
>
> There are several relevant occurrences of "bookmark" there so press "F3"
> "ctrl+g" or equivalent for "next match".
>
> > "{name=bookmark-name,time=optional-time-offset,bytes=optional-byte-of>
> > Date: Wed, 24 Jun 2020 05:23:24
> >           fset},{...}"
> >
> > > From: Linux for blind general discussion
> > <blinux-list@redhat.com>
> > > To: Linux for blind general discussion <blinux-list@redhat.com>
> > > Subject: Re: vlc bookmarks
> > >
> > > On Tue, 23 Jun 2020 21:16:05 -0400
> > > Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > >
> > > > For command line users of vlc will it be possible to pause in a rather
> > > > long mp3 file and save a bookmark at that spot then later return to that
> > > > bookmark?
> > > >
> > >
> > > Hi!
> > >
> > > Try searching for "bookmark" (without the quotes and without whole words
> > > search) on this page:
> > >
> > > https://wiki.videolan.org/VLC_command-line_help/
> > >
> > > ( Untested. )
> > >
> > > >
> > > >
> > > > --
> > > >
> > > > _______________________________________________
> > > > Blinux-list mailing list
> > > > Blinux-list@redhat.com
> > > > https://www.redhat.com/mailman/listinfo/blinux-list
> > > >
> > >
> > >
> > >
> > > --
> > >
> > > Shlomi Fish       https://www.shlomifish.org/
> > > My Photos - https://www.flickr.com/photos/shlomif/
> > >
> > > I understood what Monads are for 5 minutes. Then I had to let go of the
> > > understanding. It was too intense to be kept inside my head.
> > >     ? An Israeli Open Source Software Enthusiast.
> > >
> > > Please reply to list if it's a mailing list post - https://shlom.in/reply .
> > >
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
>
>
> --
>
> Shlomi Fish       https://www.shlomifish.org/
> Humanity - Parody of Modern Life - https://shlom.in/humanity
>
> To have bugs is human; to find them ? divine.
>     ? https://www.shlomifish.org/humour.html
>
> Please reply to list if it's a mailing list post - https://shlom.in/reply .
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

