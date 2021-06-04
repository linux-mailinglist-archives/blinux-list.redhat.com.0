Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7DAFF39C3EF
	for <lists+blinux-list@lfdr.de>; Sat,  5 Jun 2021 01:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622849584;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P8pb4q9i1wTQEUTNqkR23oH5nHi6VJp8t/br9pMF9TE=;
	b=hMim6QwwXUTGvYjECz8yhsWkL2SDylVgEHXiJxXY5lR7UHwYYlIYWdConn5gQhGYJZUNC+
	h9S65zAmJDE/BnL2hgsH1CUyGPRSe3FPvch/BMivIMS3i3aWFT7lyY0i7MZ2CFoiQ4Fdve
	2GnsORSpQNM4jxoL1rgdqh5b9Aji0Nw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-zf1c4y7wNQiG9n-qDbdqJA-1; Fri, 04 Jun 2021 19:32:50 -0400
X-MC-Unique: zf1c4y7wNQiG9n-qDbdqJA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55A806D249;
	Fri,  4 Jun 2021 23:32:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E381620DE;
	Fri,  4 Jun 2021 23:32:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5F8BD4E9E2;
	Fri,  4 Jun 2021 23:32:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 154NWbsJ022153 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Jun 2021 19:32:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D64E3218AC87; Fri,  4 Jun 2021 23:32:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1DDF218AC86
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 23:32:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9A64B80D0E0
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 23:32:35 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-585-LosIawTLP3yKX2rQBF7xBg-1; Fri, 04 Jun 2021 19:32:30 -0400
X-MC-Unique: LosIawTLP3yKX2rQBF7xBg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4FxfF92d4wz8wQt
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 23:32:29 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id x_CqV9v7oy59 for <blinux-list@redhat.com>;
	Fri,  4 Jun 2021 23:32:28 +0000 (UTC)
Received: from [192.168.1.100] (184-169-119-73-dynamic.midco.net
	[184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4FxfF81dvsz8tNF
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 23:32:28 +0000 (UTC)
Message-ID: <20210604.233226.129.9@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: GRML or other live environment
Date: Fri, 04 Jun 2021 18:32:26 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2106041900230.17213@panix1.panix.com>
References: <20210604.214256.298.7@[192.168.1.100]>
	<alpine.NEB.2.23.451.2106041900230.17213@panix1.panix.com>
User-Agent: POP Peeper Pro (5.1.2.0)
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 154NWbsJ022153
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

Is knoppix still even a thing? I'll have to look at that.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 4 Jun 2021 19:02:29 -0400
Subject: Re: GRML or other live environment

> Boot parameter on grml is blind-friendly.  After boot finishes
> speakup_synth=soft as a command if memory serves starts espeak.  It's been
> a while since I did anything with that distribution though.  Another
> possibility might be knoppix.
> 
> 
> On Fri, 4 Jun 2021, Linux for blind general discussion wrote:
> 
> > I want to boot up a system with active compilation tools. Goal is to build lfs on a new system such that it's the only OS on the hard disk. Does GRML have speakup on it still? According to this:
> > http://git.grml.org/?p=grml-live.git;a=blob_plain;f=templates/GRML/grml-cheatcodes.txt;hb=HEAD
> > it does not. If it actually does, how do you start it. And if not, what is another live distro that has compilation tools on it already so I can do what I want to do?
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

