Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 8ACA724C514
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 20:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597946800;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JExmZin2+KOGVzBhtf+DYwG2+FV5wPDVvzfhQ0SgVsk=;
	b=FPeIRGWQmGyyA37H0gyM52d835nbLAO366qInMLLMJu/G+LpGMesbKybgpo1wiCbC7znu9
	PhwnGKGr42fmuSSPa7tJyG8joQgXsETl1P1bAvU7QOEZ37q7Ha6WbB0m0TjosNpJ5IOeay
	+OrSWx15mumvSIFdDTVnXihP+5k0mSc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-4woYonqlPPGt51OQ08oeMw-1; Thu, 20 Aug 2020 14:06:38 -0400
X-MC-Unique: 4woYonqlPPGt51OQ08oeMw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A66B48030BC;
	Thu, 20 Aug 2020 18:06:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C8D1B7E306;
	Thu, 20 Aug 2020 18:06:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8CF34662B0;
	Thu, 20 Aug 2020 18:06:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KI6MvZ032550 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 14:06:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C92A4F49CD; Thu, 20 Aug 2020 18:06:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9080BF4EA2
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 18:06:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B82E90184A
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 18:06:14 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-236-cRlKwRSsNNKRQS_j2gVBIQ-1; Thu, 20 Aug 2020 14:06:11 -0400
X-MC-Unique: cRlKwRSsNNKRQS_j2gVBIQ-1
Received: by mail-qt1-f180.google.com with SMTP id f19so1867625qtp.2
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 11:06:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=QdjyxEanTRaAtR5l3f0Fdcgxn8Li1FUyTanMFx1FQh4=;
	b=ceu6QRphKszL89cyYCbuzoyp7FH0Gt8CvkBde010Vtofojh/RuAccwef8pSV5YxO2Q
	sTrtaGuJn5T/1OaXf6LjI/Cd9mhskE7C6zkcqkQwA3MPWtmBQrqtD5l0bjWTF0xabyus
	EHexhbI7gJfK7+Hvev1iSsV52hSnZ5zKsWPeQd/Qo07OfRor0c45DYvrID41+wKZ4fNS
	+2TtMsbUThtMA1bjCByWAuToCM+dCAZkRvfWk1VJJ7KpUADXyVDtnw40eFwZAkOS9bSV
	yAcqNZH7y283rMnMEgpy2b1kTsk7KtL3ES2W3twarYfUOJboiWZWzICn21MKHkOsKe1j
	QxYg==
X-Gm-Message-State: AOAM5335suos3HrTljzhHxU5m+qfvSJ8JGVRYERQLyzhQYB5Tf8Pr5Sy
	c69draAue+rUdaYmZO2Npa9xxNe2cGLuf8q3NQfAjHO0cJE=
X-Google-Smtp-Source: ABdhPJxONSbc/SGyn9z8dZGWf9wxc5M/qXtI6pbu4r4/BG2f0NN8r+6QFdPA7NiSgZzKvMQAi71wPv9JOUnmhiT8BtY=
X-Received: by 2002:aed:3e86:: with SMTP id n6mr3916498qtf.357.1597946770560; 
	Thu, 20 Aug 2020 11:06:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e807:0:0:0:0:0 with HTTP; Thu, 20 Aug 2020 11:06:09
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
Date: Thu, 20 Aug 2020 18:06:09 +0000
Message-ID: <CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'd say vanilla Knoppix running in Adriane mode would be a good choice
for a blind Linux beginner... though there's a few caveats:

1. There hasn't been an official Knoppix ISO with Adriane as the
default boot option for several years... It's just a one line change
to a single plain-text config file to make Adriane the default, but
I'm aware of no simple means of making this change. I usually end up
mounting the iso, copying it's contents to a folder, making the
change, and building a new ISO everytime I need to make a new
LiveDVD... things might be simpler if you're comfortable writing an
iso to flash media.

2. Knoppix can be installed to harddrive, and my running system is a
highly customized harddrive install of Knoppix, but Knoppix is
designed as a Live environment first and foremost and lacks a few
things you generally want in a harddrive-installed OS. For one, the
default knoppix user doesn't have to sign-in when booting into Adriane
mode and doesn't have to enter a password when running sudo to perform
administrative tasks.

3. New public releases are infrequent and with no clear schedule.
Knoppix uses the software repositories of Debian, so if you're
familiar with apt and are running from a Flash drive or hard drive,
you can keep things up to date, but if you're running a Live DVD, you
might have to wait a year or more for a new version of the whole
system to be made available.

That said, when booted in Adriane mode, Knoppix presents a text-based
menu that's very accessible and serves as a front-end for performing
several common tasks using various console applications, the menus
being navigatible with arrow keys or by typing the first digit of a
menu item's entry number to jump to it and with the 0th entry being a
guide on how to operate SBL, the text-mode screen reader Knoppix uses
for console speech. The menu also includes an option for dropping down
to the command line where typing exit will take you back to the menu
and the option of launching graphical applictions with the option to
launch Firefox or LibreOffice as stand-alone with Orca or to launch a
full desktop environment(Knoppix defaults to LXDE, though the disc
also contains Gnome and KDE if I remember correctly).

Admittedly, I don't use most of Adriane's features myself due to
familiarity with the command line, but I continue using Knoppix
because I have no idea how to get SBL running on vanilla Debian or how
to replicate Adriane launching Firefox+Orca without needing to bother
with the rest of the Desktop environment.

-Jeffery

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

