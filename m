Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A032E44FCDA
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 03:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636942007;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IMNm7YC9zP7tYUZaISw38jK3zoKpALXSu1Qns4KDsfc=;
	b=ODcPahzJ/zIfMTKuCgH95zw+FdeBMWQWdWFxggKhtdMPKaJ+W0vx8Hv8X9x1fkOKvzGUx4
	FWIWmD5ZgeefGmvYs57p0Rxp1i8atjRUAPIuRQIvoyJaL+LOgGpRvaKyGyuiE/5H9/chF8
	r7MzjYgcK7kHUFXpN5k/mbGbPnF8Nj0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-352-sxsGBJXcMW6EI-AZwo_QMg-1; Sun, 14 Nov 2021 21:06:43 -0500
X-MC-Unique: sxsGBJXcMW6EI-AZwo_QMg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EBCA871810;
	Mon, 15 Nov 2021 02:06:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0970218A8F;
	Mon, 15 Nov 2021 02:06:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 156E44A703;
	Mon, 15 Nov 2021 02:06:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF24xju017112 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 21:04:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E77D82026D07; Mon, 15 Nov 2021 02:04:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2B6D2026D46
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 02:04:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC61B1819446
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 02:04:55 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-41-Cpk4N6LxNPWTdvXumN9Vdg-1; Sun, 14 Nov 2021 21:04:54 -0500
X-MC-Unique: Cpk4N6LxNPWTdvXumN9Vdg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hssvn6HsDz4HWn
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 21:04:53 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hssvn60CGzcbc; Sun, 14 Nov 2021 21:04:53 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hssvn5yP1zcbP
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 21:04:53 -0500 (EST)
Date: Sun, 14 Nov 2021 21:04:53 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <558dba49-93ef-a0e7-7f3c-47c13d868af0@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111142103330.27308@panix1.panix.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
	<558dba49-93ef-a0e7-7f3c-47c13d868af0@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

They make it so complicated since uninformed users can really mess things
up.  Inside of those screens is control-g that can be pressed when on any
item and that brings up context-sensitive help.


On Sun, 14 Nov 2021, Linux for blind general discussion wrote:

> Why do they make it so complicated? Wouldn't it be easier if we are put on an
> editable screen where we can just move from field to field with the tab key or
> the arrow keys? and at the end submit or save?
>
>
> I wish I knew the answer to that question. Over the years, I have come to the
> conclusion that desktops and their applications tend toward consistency,
> whereas text/terminal applications seem to thrive on inconsistency and trying
> to be as different as possible from one another.
>
>
> > I will play with it and see if I could figure it out. If I could hide the
> > chat and the calendar from thunderbird I would not try any other email
> > applications.
>
>
> I don't have chat on my Thunderbird, but I did change edit -> Preferences ->
> Chat -> when Thunderbird starts so that it now says Keep my chat accounts
> offline. I also disabled the Today Pane and the Message Pane in the view menu
> the first time I opened Thunderbird, although I no longer see any "Today Pane"
> setting in View -> Layout in Thunderbird 91, but I don't see it on my message
> window either.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

