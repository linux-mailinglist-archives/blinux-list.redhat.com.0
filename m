Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E3658282B10
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 15:45:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601819129;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UW8aVKIWxtsUFCv5d3z9Q4HEf75Djn7lpAThkUIp6v8=;
	b=YpMyOQ52w68B/Z2PMAx5w8316javDjdmVV8ZUyrpV6Mc6zi+zZrsD2GgD5BrGkzVOefR9j
	tVUZswIaHWvdwKBB+b/c9jvpufo4KZg/cegNcxJx/it24pW5vdctOWoiMXmP52pGoN2lel
	H6WgvVpkIYywEuobriYTOAyjWMrkhP4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-kMTx69ABOLOtmo0Y7aNkBw-1; Sun, 04 Oct 2020 09:45:27 -0400
X-MC-Unique: kMTx69ABOLOtmo0Y7aNkBw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D110801AAF;
	Sun,  4 Oct 2020 13:45:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61D525D9CD;
	Sun,  4 Oct 2020 13:45:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DE394181A86E;
	Sun,  4 Oct 2020 13:45:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094DjGuc008291 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 09:45:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3CC3180560; Sun,  4 Oct 2020 13:45:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3747480555
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 13:45:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6656858289
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 13:45:13 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-596-pz8HyQqZPmqd3DbI1uAozg-1; Sun, 04 Oct 2020 09:45:11 -0400
X-MC-Unique: pz8HyQqZPmqd3DbI1uAozg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4C44jg1bVCz21mb
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 13:45:11 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id qY1M9O2R9MPk for <blinux-list@redhat.com>;
	Sun,  4 Oct 2020 13:44:29 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4C44hs0t9vz21mY
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 13:44:29 +0000 (UTC)
Message-ID: <20201004.134338.155.30@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Re: Console screenreaders
Date: Sun, 04 Oct 2020 08:43:38 -0500
MIME-Version: 1.0
In-Reply-To: <20201004132601.GA9202@rednote.net>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
	<20201003130430.GA2173@rednote.net>
	<alpine.DEB.2.23.453.2010030632540.2247242@chime>
	<20201003100234.4f71a96d@bigbox.attlocal.net>
	<87y2knjmwe.fsf@cmbmachine.messageid.invalid>
	<20201004132601.GA9202@rednote.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 094DjGuc008291
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

One of them is probably hardstatus. But yes, do share.
Rob

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Sun, 4 Oct 2020 09:26:01 -0400
Subject: Re: Console screenreaders

> I'm a heavy user of GNU screen myself. Can't imagine my console life
> without it. I especially like the ability to detach and reattach a
> running screen session.
> 
> 
> There are a couple settings one can apply to make screen a bit more
> friendly for TTS screen reading. I don't remember them off the top of my
> head. If someone asks, I should be able to dig them out of my .screenrc.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
> > Linux for blind general discussion <blinux-list@redhat.com> writes:
> > 
> > > Tim here.  If you need a larger cut-and-paste buffer, I strongly
> > > suggest tinkering with a terminal multiplexer like either tmux or GNU
> > > screen.  I use tmux primarily for the multiplexing, split windows,
> > > the ability to detach & reattach, and the silence/activity monitoring.
> > > But as an added benefit, I can set my scroll-back buffer-size to
> > > thousands of lines letting me copy/paste from it, even if my actual
> > > terminal is only 80 by 25.
> > 
> > When I've tried tmux, I've found oddities that made it slightly less
> > pleasant to use with a console screen reader.  I know in my case the
> > split windows and status bars etc are not wanted.  I wonder if anyone
> > has tried to work out screen-reader-friendly configurations.  I haven't;
> > GNU Screen has been good enough for me, and I've used it for many years.
> > 
> > -- Chris
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> 
> -- 
> 
> Janina Sajka
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
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

