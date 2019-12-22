Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id E36BC128C90
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2019 05:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576989050;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=emJBiFVlu4iyFJKlCTkMykzX6yMV8U1HtP9tRY57SDI=;
	b=PsSJ5lIrhKFkYseGv/6lpxLHeNBLYlbOrV4UZFLd37QN6ypOrMZXxHtnKyhthBv9BbqExx
	Dgk7SFLmTdjWEni/+uSEj2o/frlMCE6Z1PBA5eDlZ8F11xMg6IlPH68ImIk2elhF6Ea1d8
	VwnnQTLhg2ONZpGIHDcAj/R2lzQFhqk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-cpoRoZjbMIuzv8q8iJWHrw-1; Sat, 21 Dec 2019 23:30:48 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E6C0800EB5;
	Sun, 22 Dec 2019 04:30:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C9A227081;
	Sun, 22 Dec 2019 04:30:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0D4CB1809567;
	Sun, 22 Dec 2019 04:30:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBM4URRv021612 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 21 Dec 2019 23:30:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CA4E12166B29; Sun, 22 Dec 2019 04:30:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5C272166B27
	for <blinux-list@redhat.com>; Sun, 22 Dec 2019 04:30:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B0A471019297
	for <blinux-list@redhat.com>; Sun, 22 Dec 2019 04:30:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-38-AIt4OtjzOpe9vq6v-b15TQ-1; Sat, 21 Dec 2019 23:29:43 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47gTzB6G0gzy9t
	for <blinux-list@redhat.com>; Sat, 21 Dec 2019 23:29:42 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47gTzB4rJ0zcbc; Sat, 21 Dec 2019 23:29:42 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47gTzB4NmgzcbW
	for <blinux-list@redhat.com>; Sat, 21 Dec 2019 23:29:42 -0500 (EST)
Date: Sat, 21 Dec 2019 23:29:42 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ex syntax?
In-Reply-To: <20191221192534.55df0f8d@bigbox.attlocal.net>
Message-ID: <alpine.NEB.2.21.1912212329170.23142@panix1.panix.com>
References: <alpine.NEB.2.21.1912211945530.16319@panix1.panix.com>
	<20191221192534.55df0f8d@bigbox.attlocal.net>
MIME-Version: 1.0
X-MC-Unique: AIt4OtjzOpe9vq6v-b15TQ-1
X-MC-Unique: cpoRoZjbMIuzv8q8iJWHrw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBM4URRv021612
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

Just white space, I'm doing things with bash scripts.
On Sat, 21 Dec 2019,
Linux for blind general discussion wrote:

> Date: Sat, 21 Dec 2019 20:25:34
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: ex syntax?
>
> Tim here.
>
> If you're using ed or sed rather than ex/vi/vim, it's pretty easy
> depending on what constitutes a "word" (do you include punctuation
> as word-separation, or just white-space? What about contractions
> like "can't" or abbreviations like "Dr."?).  You can use
>
> 6s/[^[:space:]]\{1,\}/replacement/6
> 6s/[[:alpha:]]\{1,\}/replacement/6
>
> in both cases.  The first 6 is the line-number, the 2nd 6 is the 6th
> word in the line.
>
> In ex/vi, it's a bit more complex because they don't support the
> numeric flag at the end to indicate the 6th one, so you'd have to do
> something atrocious like
>
> 6s/\(\([^[:space:]]\{1,\}[[:space:]]\{1,\}\)\{5\}\)[^[:space:]]*/\1replacement/p
>
> (that "5" is the 5 words before the one you want to replace).  It
> would generally be easier to just retype the line.
>
> It might be easier to prompt for a replacement:
>
> 6s/[^[:space:]]\{1,\}/xxx/gc
>
> and then answer "no" 5 times, then answer "yes" for the 6th one.
>
> If you're running the ex-mode of vim instead of vi, vim provides more
> powerful regular expressions so you can do
>
> 6s/\(\W*\zs\w\+\)\{6}/replacement
>
> Vim's regex also makes it easy to define what constitutes a
> word-vs-not-a-word (using "\w" and "\W") or
> whitespace-vs-non-whitespace (using "\s" and "\S").  Depending on how
> you define a "word" the ed/sed/ex/vi versions get a lot messier.
>
> Hope this helps,
>
> -Tim (the vi/vim/ed/ex geek behind the @ed1conf account on Twitter)
>
>
> On December 21, 2019, Linux for blind general discussion wrote:
> > On line 6 of a file what is the command to delete word 6 on that
> > line? A long time ago when the bsd learn utility was working on a
> > system I studied the advanced ex lessons and unfortunately forgot
> > that syntax.
>
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

