Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 495AA2070A6
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 12:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592993043;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QL9XeNF1M9PRX5mUShA1CWv8/swaV6RhepS8y6XItQ0=;
	b=UMV7qqDkq+Mmq8Og3Pheb85KlwC1ZU7JUjwYpdbOaap6pys59uP5j82pdQaHU/MDhvp6B4
	hHM15bg/qsd5yRAtuG6X/DfPORKcJ152so/F4dNniHlrzmrtQMhSOXvgGWadWjyGklGXCZ
	9uIlY1ib0AT+5AdK8mXzgUknX0tXKhY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-62-_1IqpU3LPEqLGECuIFhYvg-1; Wed, 24 Jun 2020 06:04:00 -0400
X-MC-Unique: _1IqpU3LPEqLGECuIFhYvg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 49ED8800D5C;
	Wed, 24 Jun 2020 10:03:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6F311974E;
	Wed, 24 Jun 2020 10:03:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BE8E31809554;
	Wed, 24 Jun 2020 10:03:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OA3pnv018003 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 06:03:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 890A62026971; Wed, 24 Jun 2020 10:03:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84B5B20234B0
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 10:03:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E9918007B3
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 10:03:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-427-EDG6tlt2OWqK2LotK5PBkw-1; Wed, 24 Jun 2020 06:03:45 -0400
X-MC-Unique: EDG6tlt2OWqK2LotK5PBkw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49sJdF1XNKz12SK
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 06:03:45 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49sJdF0r2nzcbc; Wed, 24 Jun 2020 06:03:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49sJdF0QkkzcbV
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 06:03:45 -0400 (EDT)
Date: Wed, 24 Jun 2020 06:03:44 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlc bookmarks
In-Reply-To: <20200624122324.7900c7e8@telaviv1.shlomifish.org>
Message-ID: <alpine.NEB.2.22.394.2006240601570.7968@panix1.panix.com>
References: <alpine.NEB.2.22.394.2006232114040.7776@panix1.panix.com>
	<20200624122324.7900c7e8@telaviv1.shlomifish.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I searched without quotes and searched for bookmark.  What I found I'm
going to guess all has to be entered from the command line as vlc is
started. --bookmarks=<string> Bookmarks list for a streamOn Wed, 24 Jun
2020, Linux for blind general discussion wrote:
          You can manually give a list of bookmarks for a stream in the
form

"{name=bookmark-name,time=optional-time-offset,bytes=optional-byte-of>
Date: Wed, 24 Jun 2020 05:23:24
          fset},{...}"

> From: Linux for blind general discussion
<blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: vlc bookmarks
>
> On Tue, 23 Jun 2020 21:16:05 -0400
> Linux for blind general discussion <blinux-list@redhat.com> wrote:
>
> > For command line users of vlc will it be possible to pause in a rather
> > long mp3 file and save a bookmark at that spot then later return to that
> > bookmark?
> >
>
> Hi!
>
> Try searching for "bookmark" (without the quotes and without whole words
> search) on this page:
>
> https://wiki.videolan.org/VLC_command-line_help/
>
> ( Untested. )
>
> >
> >
> > --
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
> My Photos - https://www.flickr.com/photos/shlomif/
>
> I understood what Monads are for 5 minutes. Then I had to let go of the
> understanding. It was too intense to be kept inside my head.
>     ? An Israeli Open Source Software Enthusiast.
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

