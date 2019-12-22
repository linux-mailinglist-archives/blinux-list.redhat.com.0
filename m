Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id A2458128C24
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2019 02:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576977961;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ff0oz1y/j82MDKTpfOjMRzzUOSTIAOPpsIziPA+f+f4=;
	b=Fxq9j/7El/hHkBaD9bOqO4O3Ydh6JV6cJTc8I59K1hMB/H85dIFwy+DFzT2/P6qQaHWtlc
	XFq3DAp+KuUp5G5hsPLaV753Y5dnOkl9fRwpuOJUm06ZOGQpPggGIg3XjKT6UyBg9gCjAM
	mCZt+ekNCKt1pC6uJvMZNtHk7hzAwfA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-9p5FOfRZNeut2oNUE3PX5w-1; Sat, 21 Dec 2019 20:25:59 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9DA610054E3;
	Sun, 22 Dec 2019 01:25:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 579BC3AF;
	Sun, 22 Dec 2019 01:25:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 302C41809567;
	Sun, 22 Dec 2019 01:25:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBM1PfsG018529 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 21 Dec 2019 20:25:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 80C7F97CFB; Sun, 22 Dec 2019 01:25:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7AFC063F92
	for <blinux-list@redhat.com>; Sun, 22 Dec 2019 01:25:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A98978012B4
	for <blinux-list@redhat.com>; Sun, 22 Dec 2019 01:25:39 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[67.222.47.238]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-313-lSB_18_XPTqaPmdi-Fa1UA-1; Sat, 21 Dec 2019 20:25:37 -0500
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id 82E2B2009A7BE
	for <blinux-list@redhat.com>; Sat, 21 Dec 2019 19:25:35 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id ipzzikOFMzc5jipzziIGMn; Sat, 21 Dec 2019 19:25:35 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:44373 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1iipzz-0018lK-7h
	for blinux-list@redhat.com; Sat, 21 Dec 2019 19:25:35 -0600
Date: Sat, 21 Dec 2019 19:25:34 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ex syntax?
Message-ID: <20191221192534.55df0f8d@bigbox.attlocal.net>
In-Reply-To: <alpine.NEB.2.21.1912211945530.16319@panix1.panix.com>
References: <alpine.NEB.2.21.1912211945530.16319@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1iipzz-0018lK-7h
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:44373
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-MC-Unique: lSB_18_XPTqaPmdi-Fa1UA-1
X-MC-Unique: 9p5FOfRZNeut2oNUE3PX5w-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.

If you're using ed or sed rather than ex/vi/vim, it's pretty easy
depending on what constitutes a "word" (do you include punctuation
as word-separation, or just white-space? What about contractions
like "can't" or abbreviations like "Dr."?).  You can use

6s/[^[:space:]]\{1,\}/replacement/6
6s/[[:alpha:]]\{1,\}/replacement/6

in both cases.  The first 6 is the line-number, the 2nd 6 is the 6th
word in the line.

In ex/vi, it's a bit more complex because they don't support the
numeric flag at the end to indicate the 6th one, so you'd have to do
something atrocious like

6s/\(\([^[:space:]]\{1,\}[[:space:]]\{1,\}\)\{5\}\)[^[:space:]]*/\1replacement/p

(that "5" is the 5 words before the one you want to replace).  It
would generally be easier to just retype the line.

It might be easier to prompt for a replacement:

6s/[^[:space:]]\{1,\}/xxx/gc

and then answer "no" 5 times, then answer "yes" for the 6th one.

If you're running the ex-mode of vim instead of vi, vim provides more
powerful regular expressions so you can do

6s/\(\W*\zs\w\+\)\{6}/replacement

Vim's regex also makes it easy to define what constitutes a
word-vs-not-a-word (using "\w" and "\W") or
whitespace-vs-non-whitespace (using "\s" and "\S").  Depending on how
you define a "word" the ed/sed/ex/vi versions get a lot messier.

Hope this helps,

-Tim (the vi/vim/ed/ex geek behind the @ed1conf account on Twitter)


On December 21, 2019, Linux for blind general discussion wrote:
> On line 6 of a file what is the command to delete word 6 on that
> line? A long time ago when the bsd learn utility was working on a
> system I studied the advanced ex lessons and unfortunately forgot
> that syntax.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

