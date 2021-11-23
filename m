Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A8345ABFC
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 20:04:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637694295;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1XkNYydvl/Z1IWLzCjvkoRbaj5cDTxy7unNE/akxQJw=;
	b=MF+k3qnCtbrKf/hVKMMvji6qs4Zb3V+mOq0xthf/Mic0n4G8WmUg0Uf38dZHGGDIb+o7eL
	7mWZOwfuYbx+LfAJQ24W4oEGicj/ANK1+GDK6WaovGzmMeCXQwQPeTguTxJEG8JHfQor4r
	BgUiLekruoumiaMZqERaFYs7xk0awZM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-374-CDdv96LdMYyrSO1p0CSpuA-1; Tue, 23 Nov 2021 14:04:51 -0500
X-MC-Unique: CDdv96LdMYyrSO1p0CSpuA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E6C88799ED;
	Tue, 23 Nov 2021 19:04:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6ACB85C1C5;
	Tue, 23 Nov 2021 19:04:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 974DD4A704;
	Tue, 23 Nov 2021 19:04:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANJ38Lj001668 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 14:03:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5B8BC4047279; Tue, 23 Nov 2021 19:03:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 573FF4047272
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 19:03:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F1B2804181
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 19:03:08 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-404-nFo8cWapO8-WRijnYuAwnA-1; Tue, 23 Nov 2021 14:03:06 -0500
X-MC-Unique: nFo8cWapO8-WRijnYuAwnA-1
Received: by mail-qk1-f174.google.com with SMTP id m186so184040qkb.4
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 11:03:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=+n24xk6NcURo7mElzYh8z5baQEEbRHyLZKJC4t+iVEQ=;
	b=YDTlHqVHYxKDiq2Ke4ekA6Dco/e1EJ+yyYQ3DPJ7rMEIslfrib/0MGv/931L99Q4Zg
	JPEgO3nv0fSZWmxDBYOADShlYxK4lUa5Tm+QFc3D3bLVM2TZOD9TbtdR/Pgj8+GIaMZq
	/k3mVFewh3Ojyd4FU5R3wYgvzaHuipZJa6Kq0pS7qTkfWPkav1dtuZDSICsPcQtYvU+q
	UnbineUD2VvGKaKdrMBSKjiB9qKTtuCu+XXqCK9aioNq5NPYilROGoau0O5IMR//5liK
	cU2liaeM61iBgdJZgJ0+S+ir4Sm/HtyHUUvOWMFSNIZyNMbgNiB0GCAz2nlDHObUT1U+
	FoCQ==
X-Gm-Message-State: AOAM532W3JXVBEnGRWJOfJrCHJJh2lrydTen8sISJmG5+u+Uh4xbq0y+
	7q0GdRgGVJ7iLwU73JBUGvkpa2JKGXQ=
X-Google-Smtp-Source: ABdhPJxR7djysu1wp1teE8oLPzhRVzlIzCEpJ3UfC08Dfn6CkvVt7yZgOMYICjhCGBXjNOQ5HKKy+A==
X-Received: by 2002:a05:620a:d95:: with SMTP id
	q21mr5719868qkl.178.1637694185741; 
	Tue, 23 Nov 2021 11:03:05 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id g5sm6621805qko.12.2021.11.23.11.03.05
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 11:03:05 -0800 (PST)
Subject: Re: In the mood for something new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
Message-ID: <062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
Date: Tue, 23 Nov 2021 14:03:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

For the most part, even Debian testing isn't that great for desktop users. Much 
of it is still older than Ubuntu, except maybe at the end of the release cycle, 
and it tends to mix desktop component versions, meaning for example that you 
could have some parts of GNOME 40 and other parts of GNOME 3.38 at the same 
time. I found this phenomenon occurring even in Debian experimental, which is 
supposed to be more up-to-date even than unstable.

I've had the best luck using Fedora, as even the 6-month release cycle has newer 
packages than Ubuntu, and many times software gets updated to upstream current 
versions during the release cycle, which I haven't seen with Ubuntu, and 
certainly not Debian. Of course you can always either upgrade a stable Fedora 
release to Rawhide, which is the rolling release version that never needs to go 
through the upgrade process once you're there, or you could install the Rawhide 
iso, which you just install and keep updated. This is not for everyone though, 
so most people may feel more comfortable with the release cycle. But either is a 
good choice for keeping your system updated with close to the latest software 
and getting access to a wide variety of available packages without having to do 
tons of manual setup work.

Solus is another option on some hardware, but I found that its version of espeak 
made a rather odd growling sound when I tried it. Strangely, I found this 
problem both on my bare metal and on a virtual machine, and never was able to 
diagnose the problem. But you may have better luck. I definitely liked how easy 
it was to go through the installation process and get a system running.

I know some people who are using Void Linux, and it is said to be very good, 
though I'm not familiar enough with it to give you any pointers on how to set it 
up. Looks from what I've read like it will be something closer to an Arch setup, 
although an xfce version is said to be available. Not sure whether it has a full 
installer or if it needs to be set up manually, although there is said to be an 
xfce version available. If this version ships with Orca, you could possibly get 
an install going fairly easily.

Over the years, I have had fairly long-term experience with Slackware, Red Hat, 
which later became Fedora Core, Debian, Ubuntu, Arch and the latest Fedora 
release and Rawhide, as well as short-term experience with Mint, an Ubuntu 
derivative, Manjaro, an Arch hard fork, and Solus, which stands apart because it 
is not derived from any other distro, and my experiences with recent Fedora have 
been the best, with the possible exception of Arch, which does work pretty well 
once you get past the setup process.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

