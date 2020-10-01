Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 77D7D27F807
	for <lists+blinux-list@lfdr.de>; Thu,  1 Oct 2020 04:53:04 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601520783;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6dWaSkA5uJi4TwsPXasNyWjLx0ovnPEBcihrOPlmftw=;
	b=QA0oHktpMZuQ+D0/m4bxiaKQK5+n+LR0A/+EKYjbii+SOrmc9qGFfvMTAY02iAS5W1mFxK
	+GupA5W9IeM+jU9Ba92juaTag86mi01oqcwN7TNTfFJatt4fWA9rSlUPsR6pPYJnQtV5fW
	5QAl98PFh9tbtGT4lzxiofoeebx5A9k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-PtPPYp3qNyuQM-wWeu24kQ-1; Wed, 30 Sep 2020 22:53:00 -0400
X-MC-Unique: PtPPYp3qNyuQM-wWeu24kQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 356421005E6F;
	Thu,  1 Oct 2020 02:52:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A98395D9D3;
	Thu,  1 Oct 2020 02:52:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 93528183D022;
	Thu,  1 Oct 2020 02:52:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0912qfXI022734 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 22:52:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0CC9A115D35F; Thu,  1 Oct 2020 02:52:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0893E1006192
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 02:52:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B422185A78B
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 02:52:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-98-Oi9NFSy-OkeTJ40XncrBvQ-1; Wed, 30 Sep 2020 22:52:36 -0400
X-MC-Unique: Oi9NFSy-OkeTJ40XncrBvQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C1yN33p7Zz1Xw8
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 22:52:35 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C1yN32fq3zcbc; Wed, 30 Sep 2020 22:52:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C1yN32F6mzcbW
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 22:52:35 -0400 (EDT)
Date: Wed, 30 Sep 2020 22:52:35 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <87tuvf2km3.fsf@cmbmachine.messageid.invalid>
Message-ID: <alpine.NEB.2.23.451.2009302252080.14698@panix1.panix.com>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Can yasr work with a sound card?

On Wed, 30 Sep 2020, Linux for blind general discussion wrote:

> Date: Wed, 30 Sep 2020 14:19:16
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Console screenreaders
>
> Linux for blind general discussion <blinux-list@redhat.com> writes:
>
> > As my go-to, I'll add "yasr" to the list (though I've been meaning to
> > check out fenrir).
>
> There is Jupiter: <https://eklhad.net/jupiter.html>.  The author prefers
> the term "adapter" to screen reader, and in many ways Jupiter doesn't
> exactly behave like a screen reader.  It has a mode where it operates
> like one, but by default it works by capturing and reading a
> transcript of a terminal session.  So you aren't limited to the 25 rows
> and 80 columns of a standard screen.  This works best with applications
> that have a "command-and-response" style of interface, rather than a
> full-screen curses interface.
>
> Speaking of yasr, there is tdsr: <https://github.com/tspivey/tdsr> which
> works similarly to yasr.  tdsr has a bit more of a modern feel, with no
> dedicated review mode and so forth.  It is small and written in Python.
> I think the author had a basic working implementation after a couple of
> days.  It runs on Linux, Mac, and possibly other operating systems.
>
> -- Chris
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

