Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3B7FB2E28C0
	for <lists+blinux-list@lfdr.de>; Thu, 24 Dec 2020 20:49:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608839390;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rL7s2oozq2gWgFsWTkZ+2D0VAxge/A/WX1zuRz+rMFI=;
	b=ZOHigBHdqiOSh2TECUHmk7rrPmDZ2TtVWaaT/y0SdnnnIFaieFOeTGbAJIr/FUmK9qou+l
	zCcAQU2WHDk88otNppp5mjITSnYkE0m/v+uK7v25Hzkbelx+A4gppoWMPheZ2JWWsX9wKQ
	TsI3MfTr20UZBX6deY2/TKm61M2edug=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-323-FGVLFBFuO0yOoh9ORHm2Xg-1; Thu, 24 Dec 2020 14:49:47 -0500
X-MC-Unique: FGVLFBFuO0yOoh9ORHm2Xg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CDF48015A6;
	Thu, 24 Dec 2020 19:49:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B509E71C8F;
	Thu, 24 Dec 2020 19:49:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 412C1180954D;
	Thu, 24 Dec 2020 19:49:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BOJnXHP004536 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Dec 2020 14:49:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 42A58ADF7E; Thu, 24 Dec 2020 19:49:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D642ADF74
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 19:49:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E388B185A794
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 19:49:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-122-hc2-bh9mPLSCjbIlVInNfQ-1; Thu, 24 Dec 2020 14:49:28 -0500
X-MC-Unique: hc2-bh9mPLSCjbIlVInNfQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4D20yb6lbKz1FD4
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 14:49:27 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4D20yb5gbkzcbc; Thu, 24 Dec 2020 14:49:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4D20yb57NJzcbW
	for <blinux-list@redhat.com>; Thu, 24 Dec 2020 14:49:27 -0500 (EST)
Date: Thu, 24 Dec 2020 14:49:27 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Getting Reacquainted with Linux
In-Reply-To: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>
Message-ID: <alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>
References: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Maybe from console try running startx after a reboot so your system is in 
a known state.


On Thu, 24 Dec 2020, Linux for blind general discussion wrote:

> Hi,
>
>
>
> It has been a while since I have created a Linux environment but I got a
> Debian install loaded by booting from a CD and using the talking installer
> that was one of the options.
>
>
>
> All that is great but now the install has finished and I'm trying to get
> Orca going.
>
>
>
> I've brought up the command entry with alt+f2 and entered orca.  If the
> screen reader is starting I'm not getting any speech output.  I've tried
> orca -s and can get the Orca preferences and speech and braille are both on.
>
>
>
> Does anyone have thoughts on what I might try here?
>
>
>
> Kelly
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

