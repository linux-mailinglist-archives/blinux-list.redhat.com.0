Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EDB98381D08
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 07:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621143170;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=e6r6miipDzEukbXm9iyJEvoQhsrNaLgvzS2G2aqlVww=;
	b=Hxguy2WT4DzbHLRsSG80KzH1O7eyFbDb2U7T/PNVixAsv76X5Ezt3Xt7cQ2HZuN3QbEktN
	9SkDomuE2OhLI9VYM4iPa1NxovDTDOKwgPsiqW4ueTQmT0DOb77DhvTu8aY6YOKi3DBMKC
	yIyoIhcAugs4wcT52+LqjJQsvL9+/uI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-uUDreZqtPbGvfDDGIWgX_g-1; Sun, 16 May 2021 01:32:48 -0400
X-MC-Unique: uUDreZqtPbGvfDDGIWgX_g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C4D61005D56;
	Sun, 16 May 2021 05:32:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C70F60CDF;
	Sun, 16 May 2021 05:32:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 910301801029;
	Sun, 16 May 2021 05:32:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G5WcKQ002458 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 May 2021 01:32:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BEFB647CDC; Sun, 16 May 2021 05:32:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9AA4440C1
	for <blinux-list@redhat.com>; Sun, 16 May 2021 05:32:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7450380D0E1
	for <blinux-list@redhat.com>; Sun, 16 May 2021 05:32:36 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-388-dS5LIre5M9uH6q1kQs90SQ-1; Sun, 16 May 2021 01:32:34 -0400
X-MC-Unique: dS5LIre5M9uH6q1kQs90SQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4FjW9r575Vz8vrf
	for <blinux-list@redhat.com>; Sun, 16 May 2021 05:32:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id uDhtEp3o-ZUL for <blinux-list@redhat.com>;
	Sun, 16 May 2021 05:32:32 +0000 (UTC)
Received: from [0.0.0.0] (184-169-119-73-dynamic.midco.net [184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4FjW9q52n2z8vdY
	for <blinux-list@redhat.com>; Sun, 16 May 2021 05:32:31 +0000 (UTC)
Message-ID: <20210516.053128.844.20@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
Date: Sun, 16 May 2021 00:31:28 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2105160111160.16763@panix1.panix.com>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
	<Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152327400.25128@panix1.panix.com>
	<82b5a1c7-993d-9683-2a5a-309c353a9069@gmail.com>
	<alpine.NEB.2.23.451.2105160111160.16763@panix1.panix.com>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14G5WcKQ002458
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Wouldn't that script be bbetter off as a function, so you can use it on the command line without editing the script and adding urls.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: blindtlk@nfbnet.org
Date: Sun, 16 May 2021 01:12:52 -0400
Subject: Re: Vox.com: Why captchas are getting harder (fwd)

> I did downloads and conversions you described using ypl.sh.  I did reading
> of the youtube-dl man page then wrote that script.  I probably will
> improve that in a little bit of time.
> 
> 
> 
> On Sat, 15 May 2021, Linux for blind general discussion wrote:
> 
> > I think youtube-dl can download audio files from Youtube and convert them to
> > mp3. It uses ffmpeg to do it as I recall. It can even clean up the filenames
> > for you based on the information on the youtube page for the video. Last I
> > knew, Youtube has no captcha, and youtube-dl still works as of the past week.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> 
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

