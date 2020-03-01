Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id B0D6E174D90
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 14:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583070874;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tfX8t+Sv8UkM3WdPBS5VkAIahppP/Ly0hnnUSLM8WTc=;
	b=YbwiQynD5gpYO3I9lIr3ZwMNNZazTSOLKoWrszgvbUoY4VfLMcWQmfO0xV/SsUNxDI45yx
	27MyvewGBCndlx4ZAN10dVsul3mHY/Cy935JsAxOodPvn8xtcE4ptINRTlMX8rxkwGFHQf
	igsX8BPagUy0uZlknu92UP1OdAOv4vk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-242-OvtPqN28Ndmj4953oeM5kA-1; Sun, 01 Mar 2020 08:54:32 -0500
X-MC-Unique: OvtPqN28Ndmj4953oeM5kA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D32E13E5;
	Sun,  1 Mar 2020 13:54:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25812CFDC;
	Sun,  1 Mar 2020 13:54:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 72F5F1809567;
	Sun,  1 Mar 2020 13:54:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021DsD4h022033 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 08:54:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5A09F9C63C; Sun,  1 Mar 2020 13:54:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54A5DA3170
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 13:54:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0313805A87
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 13:54:10 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-403-qZto0xJvPVG899KHlPzI3g-1; Sun, 01 Mar 2020 08:54:08 -0500
X-MC-Unique: qZto0xJvPVG899KHlPzI3g-1
Received: by mail-oi1-f175.google.com with SMTP id q81so7755604oig.0
	for <blinux-list@redhat.com>; Sun, 01 Mar 2020 05:54:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=RG0l6ynV3/2fFv2ahaC7cprMTQrYByRfacXV8x3ARkc=;
	b=OKJY0YEFbN93vza2K2POvSSdqxLG2hHL2gHvYa7opOMlH2CbBl+vq+PCjLl9VQm+/V
	mFJPaQILghEHJmGH2Df/M/EwoPO9GXtiRFpWDve/XsRjTEnrVEPxSvJgAIWpMG4L7Bau
	c75Xf/BVLqGJO5Ixi5lcGNbHr2xfrndk41LPHnRFBM6crxt/8oXFUYqZ9TqkUzpCdFfJ
	gT4SrGZqLLEBJuLOaQwBtXu4aHpmmcY3HwNS2t9POX3uaG6IvliHRywmkt5UJIwnbr1C
	KEuH9dHPL7mM49dlLMBdzWBS5daVdFmghKsroqHrEbEGbQScnKJI9G1n1wbFdrSeoHBB
	Eg1w==
X-Gm-Message-State: APjAAAUDpHcKngTU0cg/Spm88LkleHqcE+dVVneumvyCrUeyCY5+3u32
	MCtM7JKkiScbuQVWB/kXxbfMH8oIVD57H7r79P7Y3w==
X-Google-Smtp-Source: APXvYqwVnMVtzSGT05sAtzWU8+Ijhcc4w+FdpAUNp0/4MmgDUhFRC4bR0DyobN770ZCCt37I9w7Ey8URNgRdYWvMuMs=
X-Received: by 2002:a54:410e:: with SMTP id l14mr8561587oic.42.1583070847732; 
	Sun, 01 Mar 2020 05:54:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:12f0:0:0:0:0:0 with HTTP;
	Sun, 1 Mar 2020 05:54:07 -0800 (PST)
In-Reply-To: <alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
References: <20200301111759.GA12551@abilitiessoft>
	<alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
Date: Sun, 1 Mar 2020 13:54:07 +0000
Message-ID: <CAO2sX310Obvpt=w1X=1+Tz7eWgXC5aiBz=53nond=1i0PpfSog@mail.gmail.com>
Subject: Re: Want to try a GUI. Which one is best?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 021DsD4h022033
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
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Best I can tell, Mate 1.24 is currently available in both Debian
Testing(aka Bull's Eye which will eventually become Debian 11) and
Debian Unstable(aka Sid).

It's unlikely something as big as a new version of Mate will make it
into Debian 9 aka Stretch or oldstable or Debian 10 aka Buster or
Stable as Debian priortizes stability over cutting edge, though it
might make it into backports(more likely for Buster than for Stretch,
but I confess to not knowing how long Debian supports Oldstable when a
new Stable is released).

That said, while Orca, the primary, and possibly only, graphical
screen reader for Linux, is officially part of Gnome and persumably
optimized for that environment, and probably works so well with Mate
due to Mate's origins as a Gnome fork(as I understand it, Gnome 3
brought many controversial changes to look and feel and Mate startedas
a way to keep the Gnome 2.x look and feel in an updated environment),
Orca should, in theory, be able to work with any GTK-based Desktop
Environment or Window Manager, though anything QT-based(KDE chief
among them) is currently a bit hit or miss.

Gnome or Mate might be the best options for a beginner as they're the
most well documented DEs for using them with Orca, but Knoppix using a
combination of LXDE and Orca when launching a full Desktop seems to
work well, and I've heard people have had success with the ratpoison
window Manager.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

