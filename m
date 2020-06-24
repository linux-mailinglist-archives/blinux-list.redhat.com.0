Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 75DEE207C04
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 21:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593025736;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XVUrJ6G3jWMfqxUw4zBA2LqbyUZYW9fRxkpUIQlq7so=;
	b=bUFmTzmBF+lEu6jBhjl2ZL/xFXHWS53qkYgWKzBQVIr+zyY2IDloYDsLBAd/eMpIeDWIJ4
	mRqhCIo33CpYL7KZRtHsKMWc4I/NT+6l9XBIfJxvpL43pxMIJLGOEvvI+PKj/SInsQU3IW
	u0w/8eM/Pt0I7WUHt5rjZaf1R/QDSuU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-b-Q2tu5KOTiS2VoY6Tyo9g-1; Wed, 24 Jun 2020 15:08:51 -0400
X-MC-Unique: b-Q2tu5KOTiS2VoY6Tyo9g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 345D0A0BDC;
	Wed, 24 Jun 2020 19:08:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC2885D9C5;
	Wed, 24 Jun 2020 19:08:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1DCF887587;
	Wed, 24 Jun 2020 19:08:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OJ8hDf020196 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 15:08:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EF2BB217B43C; Wed, 24 Jun 2020 19:08:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E98A6217B43D
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:08:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 26941804C9D
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 19:08:40 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-317-kNFJ7-T5OB6k6rkZ616mOA-1; Wed, 24 Jun 2020 15:08:37 -0400
X-MC-Unique: kNFJ7-T5OB6k6rkZ616mOA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49sXjx35TLzbyN
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 15:08:37 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49sXjx2wzszcbc; Wed, 24 Jun 2020 15:08:37 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49sXjx2tvfzcbW
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 15:08:37 -0400 (EDT)
Date: Wed, 24 Jun 2020 15:08:37 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlc bookmarks
In-Reply-To: <alpine.OSX.2.22.394.2006241427390.7107@dans-mac-mini.home>
Message-ID: <alpine.NEB.2.22.394.2006241508000.3188@panix1.panix.com>
References: <alpine.OSX.2.22.394.2006241427390.7107@dans-mac-mini.home>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

That isn't even a valid url, but thanks for trying.  I'll see if I can
clean it up on this end.
On Wed, 24 Jun 2020, Linux for blind general
discussion wrote:

> Date: Wed, 24 Jun 2020 14:30:40
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: vlc bookmarks
>
> It can be done automattically when the video is next started without additional actions.  This explains:
>
> Resume Playback From Last Played Position in VLC
>
> https://www when the video is played again.makeuseof.com/tag/remember-playback-position-vlc/
>
> On Tue, 23 Jun 2020, Linux for blind general discussion wrote:
>
> > For command line users of vlc will it be possible to pause in a rather
> > long mp3 file and save a bookmark at that spot then later return to that
> > bookmark?
> >
> >
> >
> > --
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

