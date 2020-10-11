Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7059928A871
	for <lists+blinux-list@lfdr.de>; Sun, 11 Oct 2020 19:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602436268;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rbRytuTy77uwSda0w+llznM4pTzf5Z2fPI8VTQEAwcU=;
	b=GdFM3+svZMcFCuX/ZWFTpG+CRGbeCTiDKFKjAwxVTB0LRSmoPZNvks34ZMBarxYROGLuqx
	x4esj4LUB9anfQ/PtQAVe1U/zZ94UImaelzJO2VvQhQSvUbC2tUiBuDjrat+qnBEQqE8yv
	QqDB8l+lNkPYQeb/WQxPyxsedhz9ke0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-YvXwKKDlNWOLp7a1dkuGlA-1; Sun, 11 Oct 2020 13:11:05 -0400
X-MC-Unique: YvXwKKDlNWOLp7a1dkuGlA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ABDFE804002;
	Sun, 11 Oct 2020 17:11:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CBD46EF66;
	Sun, 11 Oct 2020 17:11:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 901F1180B657;
	Sun, 11 Oct 2020 17:10:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09BHAlrV023127 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Oct 2020 13:10:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CA9F410DF4E2; Sun, 11 Oct 2020 17:10:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5A5310DF4E1
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 17:10:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75701800296
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 17:10:45 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-398-33r6Rsy_NSqiaMuN48aLRA-1; Sun, 11 Oct 2020 13:10:43 -0400
X-MC-Unique: 33r6Rsy_NSqiaMuN48aLRA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C8SxZ5d4Lz1t0m
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 13:10:42 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C8SxZ4ClLzcbc; Sun, 11 Oct 2020 13:10:42 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C8SxZ3p10zcbV
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 13:10:42 -0400 (EDT)
Date: Sun, 11 Oct 2020 13:10:42 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: have we any irc experts on the list?
In-Reply-To: <6d2584bb-0d22-a423-9588-5181c6d6d3b3@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2010111309380.29528@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010111148340.24507@panix1.panix.com>
	<6d2584bb-0d22-a423-9588-5181c6d6d3b3@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks for the znc pointer.  I got it compiled and apparently running
here.  Configuration may not be perfect, but that can be fixed if
broken.

On Sun, 11 Oct 2020, Linux for blind general discussion wrote:

> Date: Sun, 11 Oct 2020 11:53:58
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: have we any irc experts on the list?
>
> ok now i understand. for this you need IRC bouncer.
> https://en.wikipedia.org/wiki/BNC_(software)#IRC
> i use ZNC for that.
>
> 11.10.2020 18:50, Linux for blind general discussion ?????:
> > Subject was wrong on last message I sent to blinux-list.
> > For irc does a way exist to read some of the past traffic that happened
> > in a room before the user entered the room?
> >
> > On Sun, 11 Oct 2020, Linux for blind general discussion wrote:
> >
> >> Date: Sun, 11 Oct 2020 11:42:22
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: blinux-list@redhat.com
> >> Subject: have we any experts on the list?
> >>
> >> If yes, does a way exist for a user entering a room to list traffic that
> >> happened in the room before the user entered the room?
> >>
> >>
> >> --
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

