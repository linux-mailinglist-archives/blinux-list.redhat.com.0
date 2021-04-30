Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9243736F593
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 08:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619762955;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QvIMamJIBXv+lc4ps7x3hEkigxuFQ1dFkQd8Iq8rb6s=;
	b=BVWkiJ9uMAf72K2dZso/YpedXfCM6YheioC3pbaMzoiv/kTsPa2WyikdAI9ZBk1nnGp0KW
	iqp74sv8iQpiwBDcRRT2t0YjATjfRDS/N4vbs4Dc6QxyL2e7yLrXO/ecqfEpYBSj6ZOLJq
	RqAotMRvnEFLNcCvL4NASoUqGBXzlns=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-543-_VsSkpKjN3CZcYyNSCTW_g-1; Fri, 30 Apr 2021 02:09:13 -0400
X-MC-Unique: _VsSkpKjN3CZcYyNSCTW_g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4857018B6141;
	Fri, 30 Apr 2021 06:09:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1A90E6BF6B;
	Fri, 30 Apr 2021 06:09:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0B4BA1800B8E;
	Fri, 30 Apr 2021 06:09:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13U68slj027850 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 02:08:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4BB1920B664A; Fri, 30 Apr 2021 06:08:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45EA12094D38
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 06:08:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8B7F185A7A7
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 06:08:51 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-364-bGhAkeE1NaithJIXu7LR6w-1; Fri, 30 Apr 2021 02:08:49 -0400
X-MC-Unique: bGhAkeE1NaithJIXu7LR6w-1
Received: by mail-pg1-f178.google.com with SMTP id j189so1736704pgd.13
	for <blinux-list@redhat.com>; Thu, 29 Apr 2021 23:08:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=GRaBY1D4S450b88w/iVwt2T9d8zPx54Kwt/dXHmbTLo=;
	b=eiQTfTaVcg8HyGL5lGEXnvC954TpGcp7wQUFBImfuSGyKxWJ7xlu7Fo1XKqgTGkxXU
	XS8ikMV+t3iXbiYBgJoBWS8Ree5+Yg7Id1gZH75BdcRCzPgD4aOki/1uWF3asvVOHx1H
	m0tbQJ8MFeEHUXMNl/cDXlKwe7jSnF7NTwcx2Ax/pWK7lU0JWtWMb9bcforXVujlzjwD
	mfOuWyJ7mLxktM4BUT2ZFFpUoYe0B8ApX0/oRmydce53hTIACESmmUx516M8EkAK/SL7
	mIvJXKys1zpU7ZlOYZ4Pi5GcxAMdZ+hNqvp3JTApb5HvuVbVv5tcdqG3aBFSJtWwCoeg
	iPhQ==
X-Gm-Message-State: AOAM531QSSSIZ9ZBf7SfEIMy6LIq7UHCD6RRZVcy1BN1HlDDI56VaJm7
	UxqwgAwk3lVeI8JHNA7eracYeowoawFNhA==
X-Google-Smtp-Source: ABdhPJzqevUu/VSK8B3zG58Hn68ETRsnjF5XC4A53Uh7PCQM3LtJAoGj/49m4d2sImN4thKAQo0HNw==
X-Received: by 2002:a62:2c46:0:b029:245:6391:b631 with SMTP id
	s67-20020a622c460000b02902456391b631mr3339535pfs.67.1619762927728;
	Thu, 29 Apr 2021 23:08:47 -0700 (PDT)
Received: from [192.168.1.9] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99]) by smtp.gmail.com with ESMTPSA id
	u12sm9846177pji.45.2021.04.29.23.08.47 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Apr 2021 23:08:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.6\))
Subject: Re: Thinking of getting a computer to install Linux on any
	suggestions?
Date: Thu, 29 Apr 2021 23:08:44 -0700
References: <4A02183D-704A-4016-9178-15B50AAD1158.ref@yahoo.com>
	<4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
To: blinux-list@redhat.com
In-Reply-To: <4A02183D-704A-4016-9178-15B50AAD1158@yahoo.com>
Message-Id: <1D074854-BDFC-4BAC-8A27-13C5ADEAFB4D@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13U68slj027850
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Are you wanting a desktop or portable solution. Linux can work on a vary large variety of hardware. Laptops are a bit limited in what you can put in them, but are useful when you want to take it with you. Desktops, however, are more versatile as you can add or change hardware as you deem fit. I run an old AMD X2 here with 32 GB of ram and slightly more than 3 TB of onboard storage. The sound system is an older PCIX creative labs sound card with firewire port and spdif 5 channel output as well as analog stereo. The Video is an Nvidia GT 9800 with 16 GB of onboard super fast ram (not that I can see any graphics being totally blind, but it does have other uses). The motherboard is an older TYAAN branded server capable board with SATA, PATA, Serial, USB 2.x and 8 memory slots

I built this system from the ground up in 2008 and used it for hosting several VMWARE instances, including OpenBSD as a firewall, a bridge to the internal lan and even DNS, mail, and other services. All of these were hosted on a Linux Ubuntu installation running the version 3.x kernel. I used the ORCA screen reader almost exclusively with the Gnome desktop. Even though the tech is old, it still out performs much of the newer tech, including my room mates beast of a windows desktop with Core I9 24 cores and DDR4 ram. He still scratches his head at that one. :)

Anyway, let us know some of your preferences and perhaps we can help out with viable suggestions.

-Eric
>From the Central Offices of the Technomage Guild, Hardware maintenance Division 6.


This system is still in operation and I have upgraded the OS through many revisions and also rebuilt the modules for VMWARE server.

> On Apr 29, 2021, at 6:47 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Hello everyone,
> I am thinking of getting a new computer so that I can work with Linux. Any suggestions on what type of computer I should get or screen reader suggestions?
> Any help would be greatly appreciated.
> Thanks,
> 
> Ashley
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

