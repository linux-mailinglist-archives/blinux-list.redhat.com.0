Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 0F698119291
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2019 21:59:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576011548;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S7aYwBAunrMHp9YuB7ptUzpIuWu1KqBLeAmLxQH7+j4=;
	b=JTF/XwqgB99PvumljyyEFfkiNcjmtWgCJfZB7qBDjvi7bNY2qZf5D/smyyp/etFU5+5/fK
	37bsayZvB6bCWHMoF+C2mIFMceEVAI/hR/kyra87xJ+YAGK7zk8pQWi0K97ba/rE9HHfOM
	gss5ytdDdqqJLC1hRQkt87m6Oc5XzIE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-90-KpClAZmtODik4SXgmBbD_A-1; Tue, 10 Dec 2019 15:59:06 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77694107ACC9;
	Tue, 10 Dec 2019 20:59:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 073B0605B4;
	Tue, 10 Dec 2019 20:59:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8132D83570;
	Tue, 10 Dec 2019 20:59:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBAKwwex029017 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 15:58:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A28892026D69; Tue, 10 Dec 2019 20:58:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E30C2026D67
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 20:58:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA3E091234D
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 20:58:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-231-5TRuR0rmOAySWshN3hRL7w-1; Tue, 10 Dec 2019 15:58:55 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47XXV64YR1z1gFJ
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 15:58:54 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47XXV63np3zcbc; Tue, 10 Dec 2019 15:58:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47XXV63l4czcbb
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 15:58:54 -0500 (EST)
Date: Tue, 10 Dec 2019 15:58:54 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google high security and linux command line email programs
In-Reply-To: <20191210194225.GA18557@panix.com>
Message-ID: <alpine.NEB.2.21.1912101558200.6263@panix1.panix.com>
References: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
	<20191210194225.GA18557@panix.com>
MIME-Version: 1.0
X-MC-Unique: 5TRuR0rmOAySWshN3hRL7w-1
X-MC-Unique: KpClAZmtODik4SXgmBbD_A-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBAKwwex029017
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have it installed and use surfraw for the last few years.

On Tue, 10 Dec 2019, Linux for blind general discussion wrote:

> Date: Tue, 10 Dec 2019 14:42:25
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: google high security and linux command line email programs
>
> Check out surfraw.
>
> On Tue, Dec 10, 2019 at 02:26:35PM -0500, Linux for blind general discussion wrote:
> > Has anyone here gone high security with google and generated an
> > app-password for their command line email apps?  If so, which apps?
> > I have and can use a few different apps but really want to know what
> > google will be limiting me to with two-factor authentication and an
> > app-password before I enable two-factor authentication.  If there's no
> > apps this can be done with, no point enabling two-factor authentication
> > and trying to generate an app password for any of these.  When google
> > security is after users to enable higher security and google recognizes
> > linux devices have been and are likely to continue being used on an
> > account those messages ought to include a list of apps that will work in
> > linux.
> >
> >
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

