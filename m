Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CD244FBD2
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 22:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636925287;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5u1cEyzTpS+b1qntMawwhsv1iFX9oMywaN0x4mWCIwc=;
	b=SJnRwBvHGJa5oN1WgT7QRTZ6+LtO9TXOHBP/kgveCaBnVI3E9E8n0WQT1e24AX9IRabVj9
	vLT7f1wnNqyBHMIn42EW4p8agBE60UP9PGsIj5Wuy6nPhPmAgw49RFmfSP/6vtU6Hmxq9r
	rrNl/8whQ2BfJFNp0fiW62oP5MV0I4o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-trveWZKyMi2chEUIzqF0wg-1; Sun, 14 Nov 2021 16:28:03 -0500
X-MC-Unique: trveWZKyMi2chEUIzqF0wg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47F9F1030C21;
	Sun, 14 Nov 2021 21:28:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4ED111816A;
	Sun, 14 Nov 2021 21:27:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 499F54A703;
	Sun, 14 Nov 2021 21:27:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AELRjrQ029898 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 16:27:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9AEDC51DC; Sun, 14 Nov 2021 21:27:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 963B751DD
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 21:27:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEA1A811E78
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 21:27:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-102-_8MLxwmsPd637lO6PylTlw-1; Sun, 14 Nov 2021 16:27:41 -0500
X-MC-Unique: _8MLxwmsPd637lO6PylTlw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hsllw3f0hz471G
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 16:27:40 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hsllw2d5zzcbc; Sun, 14 Nov 2021 16:27:40 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hsllw25xFzcbP
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 16:27:40 -0500 (EST)
Date: Sun, 14 Nov 2021 16:27:40 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Use the w key and you'll be prompted for a search string.


On Sun, 14 Nov 2021, Linux for blind general discussion wrote:

> Looking at alpine, the first thing I noticed is that I can set an inbox path
> and an smtp server, but I can't seem to set an imap server, and I couldn't
> immediately find the encryption, port and authentication settings even for
> smtp. I really do like the menu interface, most of it with single-key mnemonic
> functions, but there's just too much here that I can't seem to figure out,
> like how to set up imap email, although I do know that it's possible. Problem
> is even reading the man page isn't helping me get through all the config
> options, and only my page-up, page-down, home and end keys are navigating
> through the configurations, making it difficult to set a single option, and I
> don't see any show cursor or similar command line option that will allow my
> screen reader to speak the configuration I would be setting. Unfortunately,
> even the most inaccessible desktop email applications make it easy enough to
> set up a mailbox using imap and smtp settings, complete with
> security/encryption and authentication. I think what I'm looking for is some
> kind of "setup new mailbox" menu selection, but I don't immediately see that.
> It seems it looks good for local mail, but I'm not finding any remote mailbox
> setup. I did see message threading options, which definitely helps with that
> issue, but remote mailbox configuration definitely needs to be easier to do
> right from the setup menu or the main screen that I see when I open alpine.
>
> ~Kyle
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

