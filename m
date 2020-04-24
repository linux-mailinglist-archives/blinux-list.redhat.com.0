Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4F20F1B6A5A
	for <lists+blinux-list@lfdr.de>; Fri, 24 Apr 2020 02:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587688443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XuoNUzp5JTTqHhAk+zlhgsmtmc1QKG14Ivby5a3vbNk=;
	b=D/HwlQirGgRPahRTm3R3qn3ZH82KFtnPtMRubdlaHZthSnMrANtf++tgurl9WZvvTAX7eU
	1sBMR0vH6Vig8dLNlnpZBKK0uqCjKKsXllEsAMP7vZrC/SvWYm0qHpI0IkIZdVh8ou1lqK
	vxzHe5TcSZMU9uYvo+SKni7PruLXhTc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-496-iMrg8u12OMG6pCHB33J6JA-1; Thu, 23 Apr 2020 20:34:00 -0400
X-MC-Unique: iMrg8u12OMG6pCHB33J6JA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CFA11800D6B;
	Fri, 24 Apr 2020 00:33:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA0351A923;
	Fri, 24 Apr 2020 00:33:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C429A1809543;
	Fri, 24 Apr 2020 00:33:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03O0XY1S018865 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 23 Apr 2020 20:33:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4FAA62026D5D; Fri, 24 Apr 2020 00:33:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4B94E2026E04
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 00:33:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68326800A13
	for <blinux-list@redhat.com>; Fri, 24 Apr 2020 00:33:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-367-ZP6tMDWcOQmtMVtFACSxBw-1; Thu, 23 Apr 2020 20:33:30 -0400
X-MC-Unique: ZP6tMDWcOQmtMVtFACSxBw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 497ZsP4QnLzlKV
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 20:33:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 497ZsP3Mcczcbc; Thu, 23 Apr 2020 20:33:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 497ZsP2tXlzcbW
	for <blinux-list@redhat.com>; Thu, 23 Apr 2020 20:33:29 -0400 (EDT)
Date: Thu, 23 Apr 2020 20:33:29 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: unpacking git files
In-Reply-To: <20200423170750.2f6355d3@bigbox.attlocal.net>
Message-ID: <alpine.NEB.2.21.2004232032060.11363@panix1.panix.com>
References: <alpine.NEB.2.21.2004231711080.12964@panix1.panix.com>
	<20200423170750.2f6355d3@bigbox.attlocal.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03O0XY1S018865
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The file at issue is fahlib.git and is a library needed by the
foldingathome project to be installed locally.  I have no idea of the
git file's contents yet.

On Thu, 23 Apr 2020, Linux for blind general discussion wrote:

> Date: Thu, 23 Apr 2020 18:07:50
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: unpacking git files
>
> Tim here.
>
> I'm not sure what sort of "git file" you have.  If it's a "bundle",
> you can pull from it as if it was an upstream project:
>
>   git clone your_repo.bundle repo
>
> to create a local directory called "repo" and clone that bundle into
> it.
>
> If it's just a pack file from inside the .git/ folder from another
> repo, there's no telling what may or may not be in there (okay, one
> can spelunk in there, but you lose a lot of the metadata that is
> elswhere in the folder such as branch-heads/names, and any commits
> that weren't part of the pack-file)
>
> -tim
>
> On April 23, 2020, Linux for blind general discussion wrote:
> > If you download a git file how is it possible to have git unpack
> > the file for you into its own directory tree?
> > I failed to write my git credentials in braille and haven't used
> > them for a very long time so may be able to get a git file using
> > wget but for now I don't know how to unpack the file.
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
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

