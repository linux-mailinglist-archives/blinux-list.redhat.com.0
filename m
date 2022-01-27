Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F5949D97B
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 04:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643255395;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hIiaJcQlgQhAf1kxiKmi4OKueXplW4edMCZwIf8kqRI=;
	b=G4l1EuxPUNpAdVwcQzyb2RKclkhMYn79jJ30p7HXxEX3PTr8444Jr7ywd3ffGmvF6r16W8
	dK1OjpwFnAPf1SPlxBdpr3T8eV4rdKNVLrYRan23W+ptZ6NeL2hDO4DwkgL2T8uq6WvnV5
	3lUZIVJ6TjBEzLE8fGCnI0faDlbYIFk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-531-L4lwr3gSNRqQwqmznZF-jw-1; Wed, 26 Jan 2022 22:49:51 -0500
X-MC-Unique: L4lwr3gSNRqQwqmznZF-jw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 089BC2F45;
	Thu, 27 Jan 2022 03:49:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A8D812E30;
	Thu, 27 Jan 2022 03:49:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C09B54BB7C;
	Thu, 27 Jan 2022 03:49:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R3ngFr021604 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 22:49:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 416DD40885B3; Thu, 27 Jan 2022 03:49:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D1B340885B0
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:49:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 19B733C11A2D
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 03:49:42 +0000 (UTC)
Received: from gateway11.unifiedlayer.com (gateway11.unifiedlayer.com
	[74.220.216.105]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-339-5Nz3Cc_MOUy95wmNXa-2Xw-1; Wed, 26 Jan 2022 22:49:39 -0500
X-MC-Unique: 5Nz3Cc_MOUy95wmNXa-2Xw-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway11.unifiedlayer.com (Postfix) with ESMTP id 769E120134EA2
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:27:26 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id CvRWnJeg8tGNQCvRWnv6Od; Wed, 26 Jan 2022 21:27:26 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:59761 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1nCvRW-004NZW-2v
	for blinux-list@redhat.com; Wed, 26 Jan 2022 21:27:26 -0600
Date: Wed, 26 Jan 2022 21:27:24 -0600
To: blinux-list@redhat.com
Subject: Re: Why do you use Linux? expanded from  Converting text to mp3
Message-ID: <20220126212724.3da0450f@bigbox.attlocal.net>
In-Reply-To: <Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
References: <cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
	<Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
	<YfHMypPcZ5/yJq+k@panix.com>
	<Pine.LNX.4.64.2201261947360.2111580@server2.shellworld.net>
	<YfHvt+4aziezYwjx@panix.com>
	<Pine.LNX.4.64.2201262008180.2112285@server2.shellworld.net>
	<YfH3P14/As9FjG9P@panix.com>
	<Pine.LNX.4.64.2201262104141.2112985@server2.shellworld.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1nCvRW-004NZW-2v
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:59761
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here, replying in-line.

On January 26, 2022, Karen wrote:
> you must be prepared to do programming if you are going to use
> Linux fluidly, if at all.

Like with other areas, it's not essential, but a bit of code or
shell-scripting helps you get the most out of the system.

A simple shell pipeline can turn a tedious manual process that takes
days into a one-liner that can finish a task in seconds (I've had
several of those just this week).

Some flavors of Linux expect users to do more heavy-lifting and
poking around under the hood; while others have a much softer touch
with a lot more hand-holding.  Choosing an appropriate distro can
make a big difference.

> So, why do you use Linux? what makes it worth the time the training
> and the trial  / error?

I've used various flavors of Unix & Unix-likes since I was in
high-school in the early 90s; and DOS before that.  I learned to
quickly navigate the file system and automate boring tasks and that's
hard to give up.  When I switch to a GUI, I regularly encounter
frustratingly tedious things that I can't automate.  Lists of data
that are plainly displayed on the screen but I can't copy/paste them,
or save them to a file, or otherwise manipulate them.  Or the
inability control everything with a keyboard, needing to reach for a
mouse.

> Oh, and is it your only operating system?

Linux was my primary OS from ~1999 until about 5 years ago when I
switched most of my machines to FreeBSD & OpenBSD.  Mostly pushed
because my Debian install kept breaking with upgrades that should
have been mostly harmless.

I haven't owned a Windows machine since WinME was the newest release,
and while I own a Mac, it's an iBook G4 PowerPC unit from around 2006
and it serves me better as a machine to test OpenBSD code.

> Want to ask the latter because I know someone who indeed uses Linux 
> exclusively, vowing never to touch windows again.

If that wasn't me, now you know at least two of us. (grins)

Hopefully that give you another data-point.

-Tim



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

