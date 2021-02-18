Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1462F31E476
	for <lists+blinux-list@lfdr.de>; Thu, 18 Feb 2021 04:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613618478;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Iqu17Yz+uVvOqJk4XDb0rrqb4uL7TC8i47MqwnFOu24=;
	b=IMrOlQo+CwbQxqcBiFf5iL+BjcEzSnBCdLdDdUKj737AmjxOPHUVL8KalCq1uGhiDCSSuw
	fk/D+9kpB2Tr3P8u6SoNplVPV/ektDIODrJjplAvBA8300XEdS5VbMSmlvdbnt8H26OQeF
	ssf0is2VwoE23w9yVT4siJgJJPJ/KHU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198--FlIvuMgOWS0QrHgvQ7wsw-1; Wed, 17 Feb 2021 22:21:16 -0500
X-MC-Unique: -FlIvuMgOWS0QrHgvQ7wsw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3531108C30A;
	Thu, 18 Feb 2021 03:21:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7CE1648A2;
	Thu, 18 Feb 2021 03:21:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A84E94E58D;
	Thu, 18 Feb 2021 03:21:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11I3L1rw017463 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 22:21:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A920A107270; Thu, 18 Feb 2021 03:21:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A057F10726A
	for <blinux-list@redhat.com>; Thu, 18 Feb 2021 03:20:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BAA31022F0A
	for <blinux-list@redhat.com>; Thu, 18 Feb 2021 03:20:58 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by relay.mimecast.com with ESMTP id us-mta-482-PgdsdkXaMZCZY5-wNnSC1g-1;
	Wed, 17 Feb 2021 22:20:56 -0500
X-MC-Unique: PgdsdkXaMZCZY5-wNnSC1g-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	WAA15556; Wed, 17 Feb 2021 22:20:10 -0500
Date: Wed, 17 Feb 2021 22:20:09 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: bash is hurling
Message-ID: <20210218032008.GZ21290@nntp.AegisInfoSys.com>
References: <alpine.NEB.2.23.451.2102162306390.26855@panix1.panix.com>
	<20210217092326.GV21290@nntp.AegisInfoSys.com>
	<alpine.NEB.2.23.451.2102171137230.5642@panix1.panix.com>
Mime-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2102171137230.5642@panix1.panix.com>
User-Agent: Mutt/1.4.2.3i
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

i beg to differ. every version of linux i have running (a couple of dozen),
with vintages spanning 1998 to 2020, prints the filename if given, as
a second word. on my own panix account it does this too:

   wc -l /etc/passwd

produces:

       1775 /etc/passwd

only if no filename is specified does a single word result:

   cat /etc/passwd | wc -l

produces:

       1775

there is a variation in padding of spaces in front of the first word (the
number of lines counted), but there are always two words as in the
example from the OP. no doubt that's what caused the reported error.

On Wed, Feb 17, 2021 at 11:38:16AM -0500, Linux for blind general discussion wrote:
> wc -l only returns one number.
> 
> 
> On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
> 
> >the "wc" command is returning more than one word, is the problem with 
> >"let".
> >you don't need the "let" anyway, so:
> >
> >  cj=`wc -l chk-jenux.log`
> >
> >would be enough. but if you want only the count of lines, you either have 
> >to
> >1: isolate the first word from "wc" (the line count):
> >
> >  realcj=${cj%% *}
> >
> >or
> >2: do the "wc" without a file name:
> >
> >  cj=`cat chk-jenux.log | wc -l`
> >
> >note that the first example has a few failure modes, although there are 
> >endless
> >other ways to isolate a given word from a multi-word string. i've always
> >used the second example.
> >
> >On Tue, Feb 16, 2021 at 11:08:58AM -0500, Linux for blind general 
> >discussion wrote:
> >>I think I need a better shell.
> >>I wanted to get a line count into a variable and bash doesn't like what
> >>I'm doing to make that happen.  The code is:
> >>let "cj=`wc -l chk-jenux.log`"
> >

-- 
Henry Yen                                       Aegis Information Systems, Inc.
Senior Systems Programmer                       Hicksville, New York

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

