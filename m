Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 973A13D2258
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 12:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626951504;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AbMFMNC2R3JfdC4DfzNxeM8KEzrJ5+I3O96KwN0o99k=;
	b=SefqR1aT/hQmSabvqMRjpULmG8EhmPeA7KbLVe+NI+FWfQcIv7aj7CY4UhDqJCCg6IGwcJ
	5lXNnyXSz0ZbZURG9dBmONWHKKIw7cWVas86eToODz5gs2FrOSRQZjbNCkP/MjjZQP+JXw
	dgK3ZzZ/pzWIkTDvBY+o6XwkDTa2n7I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-rtCaKWDaMK2ER4OPwTJVsw-1; Thu, 22 Jul 2021 06:58:23 -0400
X-MC-Unique: rtCaKWDaMK2ER4OPwTJVsw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B6741812FC3;
	Thu, 22 Jul 2021 10:58:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D58261095;
	Thu, 22 Jul 2021 10:58:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C33F4BB7C;
	Thu, 22 Jul 2021 10:58:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MAw8cB027251 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 06:58:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 071BE103CA2; Thu, 22 Jul 2021 10:58:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00D55103CCD
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:58:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7773A8556F0
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:58:01 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-550-Jnm2FDSNNuSU9mVMaB4fHA-1; Thu, 22 Jul 2021 06:57:59 -0400
X-MC-Unique: Jnm2FDSNNuSU9mVMaB4fHA-1
Received: from [192.168.116.128] (unknown [176.230.59.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id 6EEE580B8DD3
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:57:58 +0000 (UTC)
Date: Thu, 22 Jul 2021 13:57:53 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: audio cutting and exporting
In-Reply-To: <20210721161239.171ebc50@bigbox.attlocal.net>
Message-ID: <alpine.DEB.2.11.2107221327100.1870@debian.work>
References: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
	<20210721161239.171ebc50@bigbox.attlocal.net>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Wed, 21 Jul 2021, Linux for blind general discussion wrote:

> 1) if your input files are MP3, using "mp3splt" (that's "split"
> without the letter "i") manages to do it without losing quality as
> would normally happen if you load a .mp3 converting it to raw audio
> data, slice & dice, and then re-encode it back as a new .mp3 file.

You can also split Ogg Vorbis files with this tool.

A couple of other splitting options.

For raw/wav files, soundgrab is a simple console-based file splitter which 
lets you move around the file and select regions to be exported.  I've 
been using it for many many years for simple command-line-based file 
editing.

As the main website for it now seems to be down, you can get it from 
https://sourceforge.net/projects/soundgrab/

I usually use it in conjunction with sox and the quelcom tools (especially 
qwavjoin and qwavinfo to perform file editing.

Note that the quelcom tools also  have mp3 utils but I've never had much 
luck with them.  For mp3 I usually use madplay to find the split-points 
and mp3splt to do the splitting.

Finally ffmpeg should be able to slice up files without re-encoding but 
I've never actually used it for this so I don't know how good a job it 
does.

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

