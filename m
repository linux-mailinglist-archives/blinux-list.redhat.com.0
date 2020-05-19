Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 81FB71D9AC2
	for <lists+blinux-list@lfdr.de>; Tue, 19 May 2020 17:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589900992;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IJ5vHP3rfFr2yx8F7Df1ZVgXPvItH5qvG9V9yJ/tXfY=;
	b=EwEyJpMBlh5HR1ZUIeULLQvCQ0UPI5+N6RvRCKe2QC9a4pxRX/OhPRFxZUFqNMcjgGP5y7
	asukBlJTE4DO1XbEGarAqFTTMr+NCJaTyB8DWrZ9yWgtGBtQY/LWiQjAIA2e87c3QqN9lc
	2lqlM76Y2lZkWqgquRQCoZ3zzi2FwoE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-149-fxPL4OXDNsebVSry7kFA_w-1; Tue, 19 May 2020 11:09:50 -0400
X-MC-Unique: fxPL4OXDNsebVSry7kFA_w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5FA6100CCC4;
	Tue, 19 May 2020 15:09:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22C085C1C8;
	Tue, 19 May 2020 15:09:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 621904ED62;
	Tue, 19 May 2020 15:09:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04JF8TD6001280 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 19 May 2020 11:08:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 002B91006B2F; Tue, 19 May 2020 15:08:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEA621006E35
	for <blinux-list@redhat.com>; Tue, 19 May 2020 15:08:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0473C833B44
	for <blinux-list@redhat.com>; Tue, 19 May 2020 15:08:26 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-384-fieq2Op3OFWqrukmgs4V7g-1; Tue, 19 May 2020 11:08:22 -0400
X-MC-Unique: fieq2Op3OFWqrukmgs4V7g-1
Received: by mail-oi1-f173.google.com with SMTP id o24so25941oic.0
	for <blinux-list@redhat.com>; Tue, 19 May 2020 08:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=iSfTtIB9FZoOmXEk79sDLS6CKUF2nzIYu6hryxuaXwo=;
	b=LE2ZGG+y3P/UQ6atzScVY73tuxJxCBp06scKgaqwQA6iOB4x8DBZqXzOVRCW0g/OYl
	G6vjXj+y8qb3qMSqVAFi4EOWGDMoWA7Rx3I/QU25UohDQF7hoG3yYfIGNTxwu8HNBxBG
	IhZ1Ka9mNUoA/Hg0g+zs3Y6SVo5RYz/dpWPxca2lr54cIG2kt13htLHlh3dLXRa1bXD+
	EGUYEmlejLgL25JDbsMhNfQkbm2CClwVjtZFhsnKluWcw2szMhiETe2s26IZKVC+2xpP
	Eh0MuJB+Uwu/V+Bi+13Kj9PYfUIYglH4Zl4wm32VIooh/+7c9+CxCPGa4gai0FC898ak
	Ay0w==
X-Gm-Message-State: AOAM532HzsJoCk1EUvCA2Qf/13kWxDUT7QypLDSFHk8N/RRssjtTEgYm
	Y2jd9KUVA47LxxGDRrwyKKkJ1oKI
X-Google-Smtp-Source: ABdhPJxfSGLYqDrKaY04GE7UerDLI2+IuMmcn36A0bC+3RDlSoij8Jnqu59ZEeAF+sbaZDxzGk/p/w==
X-Received: by 2002:a05:6808:1:: with SMTP id u1mr3558261oic.54.1589900900751; 
	Tue, 19 May 2020 08:08:20 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:d4ad:2b56:857f:323c?
	([2601:3c2:8200:9360:d4ad:2b56:857f:323c])
	by smtp.gmail.com with ESMTPSA id p17sm17524oot.17.2020.05.19.08.08.19
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 May 2020 08:08:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Manjaro linux
Date: Tue, 19 May 2020 10:08:17 -0500
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
	<alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
	<CAO2sX32dVWnC1F8EQuQef1_SPStF0=r1c-k+JSz4M+Jm7z82PQ@mail.gmail.com>
	<c33e7e92-9eb7-3b58-afb4-9285eb928b86@gmail.com>
	<c638d1b2-f0c6-f973-1cbe-fe38897bbd3e@ukr.net>
	<alpine.NEB.2.21.2005121413390.2382@panix1.panix.com>
To: blinux-list@redhat.com
In-Reply-To: <alpine.NEB.2.21.2005121413390.2382@panix1.panix.com>
Message-Id: <413A38CD-73D6-46C7-AAEF-ADE7CAEABF23@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04JF8TD6001280
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

Was that the gnome or mate?
For some reason, Manjaro install will not let me use orca.

> On May 12, 2020, at 1:14 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Last time I installed it, KaliLinux used espeak to install then once
> install had been done, orca was enabled.
> 
> On Tue, 12 May 2020, Linux for blind general discussion wrote:
> 
>> Date: Tue, 12 May 2020 13:26:20
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: blinux-list@redhat.com
>> Subject: Re: Manjaro linux
>> 
>> Hi Kyle.
>> 
>> Details of the problem you described here (in the context of Ubuntu-MATE):
>> 
>> https://bugs.launchpad.net/ubuntu-mate/+bug/1874283
>> 
>> 12.05.20 19:58, Linux for blind general discussion ????:
>>> On the other hand, to my knowledge, there is no distro that uses Orca
>>>> to make a graphical installer accessible and that all distros that
>>>> have accessible installers utilize either a text-mode screen reader or
>>>> brltty to make a text-based installer accessible.
>>> 
>>> 
>>> This isn't the case at all. Ubuntu uses Orca with Ubiquity, which is
>>> completely accessible. I know, I just used it last week to install to a
>>> rather old laptop for a client. There is a little problem getting the
>>> installer working from the "Install Ubuntu 20.04" app icon on the MATE
>>> version, but opening a terminal and running
>>> 
>>> sudo -e ubiquity
>>> 
>>> from there should speak without any issues. I believe someone told me this
>>> method worked, and there's no reason I can see why it shouldn't work. I
>>> can't comment on how well it works now, but OpenSUSE used to have an
>>> installer that worked with Orca. Anakonda in Fedora also works with Orca,
>>> but you need to switch from Wayland to an X session in order to make it
>>> work. Not text mode, just X, which is no longer the default. In fact, of all
>>> the major distros currently available, I think Debian is the only one that
>>> uses a text-based installer with a text-mode screen reader. Well, there's
>>> Arch, but its installation process is 100% manual, it has no automated
>>> installer at all, so it really doesn't count. I do fully agree though that
>>> Manjaro is probably not the best choice, and not only because of the
>>> installer. That was actually the least of the problems that we who worked
>>> with the Sonar project had with Manjaro, mostly after installation.
>>> 
>>> ~Kyle
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> -- 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

