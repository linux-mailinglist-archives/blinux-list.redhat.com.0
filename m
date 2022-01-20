Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 61073494E82
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 14:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642683734;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MacskiG5OSRZaZvtm38kWDyURRqfuUurMfejgycCz6E=;
	b=LbZ4vMJQ7zaitsa+HQ4k4zrrNCQuT0ipvXXTAWx5RXmxlA/wKL5PG5lUAPu8THQS/8u1Ik
	oiqkGbcOn/2jYtQpSWWK+wVzoSVZ6EmPVPaTVhvoKSNb3k2xdp7ozpXXpYRY0JqGvtEfe+
	QWal647Cr2oLQ/Vi4HX3DOhvUR1DsEw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-549-R0jHhrf1P5mYB-jYfp1LcQ-1; Thu, 20 Jan 2022 08:02:09 -0500
X-MC-Unique: R0jHhrf1P5mYB-jYfp1LcQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2818102CC39;
	Thu, 20 Jan 2022 13:01:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A06C752CA;
	Thu, 20 Jan 2022 13:01:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22F6C1806D1D;
	Thu, 20 Jan 2022 13:01:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KD1ZfU004092 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 08:01:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8558A401E92; Thu, 20 Jan 2022 13:01:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81FD4401DBD
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:01:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69AE9185A7BA
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:01:35 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-36-Bd0o9ruNPxOqkfZ7iSR3qQ-1; Thu, 20 Jan 2022 08:01:33 -0500
X-MC-Unique: Bd0o9ruNPxOqkfZ7iSR3qQ-1
Received: from k.n5t.de (unknown [172.19.7.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPS id 06CFB2EB5DE
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 13:55:24 +0100 (CET)
Date: Thu, 20 Jan 2022 13:55:22 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running a Linux VM on Windows and making it talk?
Message-ID: <YelburhFkqY1AXFh@k.n5t.de>
References: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
	<alpine.DEB.2.11.2201201340550.1250@debian.work>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.2201201340550.1250@debian.work>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jan 20, 2022 at 01:48:58PM +0200, Linux for blind general discussion wrote:
>Once you have it running, you can use control-g to switch the keyboard to the
>
>Oh and do not install the enhanced keyboard driver that VMWare offers,
>apparently it causes big problems with Windows screen readers.

I am also using VMware player and Workstation Pro on Windows 10 for linux 
guests and generaly I am very happy with this kind of setup. I've activated 
the enhanced keyboard drivers from VMware and I can not say that they cause 
problems with NVDA or Jaws, but maybe I just do not notice them :-). What 
kind of problems are this? Do you have any examples?

TBH I do not even know what the enhanced keyboard driver does... If it 
rellay causes problems maybe I should also uninstall it...

>I've not tried running a GUI under VMWare, but I don't expect any issues.

I've done it and its working like it installed on a normal machine.

BTW.: Have you managed  to copy content from the Windows clipboard into a 
console of the linux guest or do you know if this is possible by using just 
the keyboard? Is this what the enhanced keyboard driver is necessary for? 
And is tere a way to copy the content of the clipboard from the Linux guest 
to the Windows host?

In general I am very happy with the setup and running a Linux guest on 
Windows with VMware, but exchanging content between the two systems could be 
easier, especialy for the content stored in the clipboard.

Cheers,


  Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

