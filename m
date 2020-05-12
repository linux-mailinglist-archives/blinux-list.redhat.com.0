Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 702501CFCE0
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 20:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589307081;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l1EOLoFYHyCA02epBbfaaHYdoVcXUpQEAmGBUtacOOY=;
	b=A6BDLufEj2xYfE00EYsWfymfPgF4+SwBxByhBzdYkw95Jt4LT02dZPBKzmm9qxx7pSye7m
	h8C1s4ASGLRHQ8djVim79ZANevWrx+Wha8f7Z33pe//D0s1RGdqBCpkADcfS6imOLZFWsZ
	hiYzWnV/sesPbeFRqXdY9N8KUQa5S3k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-zhIUw4ViP_GJPHOUXZ3gtA-1; Tue, 12 May 2020 14:11:19 -0400
X-MC-Unique: zhIUw4ViP_GJPHOUXZ3gtA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D79C98005B7;
	Tue, 12 May 2020 18:11:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54D4A5C1D2;
	Tue, 12 May 2020 18:11:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB1404CAA0;
	Tue, 12 May 2020 18:11:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CIB7rb006820 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 14:11:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DCC961108F8; Tue, 12 May 2020 18:11:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3A18110E83
	for <blinux-list@redhat.com>; Tue, 12 May 2020 18:11:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10F5A8007DB
	for <blinux-list@redhat.com>; Tue, 12 May 2020 18:11:04 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-47-zqvmpnG0MKiKXJeaDqoLnw-1; Tue, 12 May 2020 14:11:01 -0400
X-MC-Unique: zqvmpnG0MKiKXJeaDqoLnw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49M5TJ5nRnz1cqn
	for <blinux-list@redhat.com>; Tue, 12 May 2020 14:11:00 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49M5TJ3cJBzcbc; Tue, 12 May 2020 14:11:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49M5TJ38N3zcbW
	for <blinux-list@redhat.com>; Tue, 12 May 2020 14:11:00 -0400 (EDT)
Date: Tue, 12 May 2020 14:11:00 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: please help Me to build Shortwave radio player
In-Reply-To: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ>
Message-ID: <alpine.NEB.2.21.2005121409260.2382@panix1.panix.com>
References: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ>
MIME-Version: 1.0
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

1) did you go into the package's directory and issue the git pull
command?  If yes what happened?  This is the standard means to update
existing git packages on Linux systems and I expect other operating
systems as well.

On Tue, 12 May 2020, Linux for blind general discussion wrote:

> Date: Tue, 12 May 2020 13:24:08
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Blinux-list@redhat.com
> Subject: please help Me to build Shortwave radio player
>
> Dear users and developers here,
> Who of us would have A good will and would help Me to build Shortwave radio
> player?
> I Am building it on Arch Linux ARM64 BIt edition by using Android device,
> Termux, Proot package and special Bash shell script which have been created
> by MR Rausty.
>
> The only one issue which I AM facing now is The following Libhandy available
> on Github.
>
>
> https://gitlab.gnome.org/World/Rust/libhandy-rs"
> Meson can not build The project, because this library can not be updated
> from Github. I will try to remove The line
>
> features = ["v0_0_6"]
> But I Am afraid that it will not make sense.
> Removing whole dependency line also do not make sense. Since compiler
> require this library from many lines of Shortwave source code.
>
> Users who use normal Linux distribution can simply use Gnome-builder, but
> because GNome-builder communicate with System bus, which can not be operated
> from Android device, I Am helpless to use it.
> I also do not know where to run ARM64 Bit ArchLinux. Because some
> virtualisation engines do not support ARM64 on X86 or X64 platforms.
>
> https://gitlab.gnome.org/haarek/Shortwave
>
> I have also found out functioning way how to run Orca Espeak,
> Speech-dispatcher and even The most of Mate desktop environment. So if
> somebody would have An interest to experiment with Linux distros on Android
> devices, I Am ready to give you some step by step instructions.
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

