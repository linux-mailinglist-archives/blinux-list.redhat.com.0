Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5222D3BEAB6
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 17:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625671902;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U5lIRpv3rHCq9NF4PrkHKQJEwzb37CzV2K9q40eF4lA=;
	b=LpcWE/TK2ckh/cHxzrfNIRhm1xl9Q9eebk7b4OzX5EVHXW7O0puW9rE2cbJ9Ps6sGfgzau
	cqAMJIEW6ZUYxEx4qqw5ELLxPpBGtmiOKI8ckfWMO5JbU4bDWPJtqNCnWo+4WRDPThMeEQ
	xvmeI9ahplS8NNaBMJVugGfPd7rGpdM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-268-zWaqRHKQPFG-tPxh4Ybd_Q-1; Wed, 07 Jul 2021 11:31:40 -0400
X-MC-Unique: zWaqRHKQPFG-tPxh4Ybd_Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4FD5D1B2C981;
	Wed,  7 Jul 2021 15:31:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7772D60C05;
	Wed,  7 Jul 2021 15:31:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F06394A712;
	Wed,  7 Jul 2021 15:31:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167FVQWg005145 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 11:31:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 62E542044029; Wed,  7 Jul 2021 15:31:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E7D02044031
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 15:31:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97531800B28
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 15:31:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-87-oGUVi-nIPwKre78-5m7zbg-1; Wed, 07 Jul 2021 11:31:20 -0400
X-MC-Unique: oGUVi-nIPwKre78-5m7zbg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GKk0l6JNLz3wfr
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 11:31:19 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GKk0l5gnGzcbc; Wed,  7 Jul 2021 11:31:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GKk0l5MHbzcbP
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 11:31:19 -0400 (EDT)
Date: Wed, 7 Jul 2021 11:31:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again
In-Reply-To: <alpine.DEB.2.11.2107071753080.35209@debian.work>
Message-ID: <alpine.NEB.2.23.451.2107071129590.6390@panix1.panix.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<CAGJxbF4KF7FJE0hRpR-zJyYHvgqcKQNhVVXPy3StT6v6w9Gv_Q@mail.gmail.com>
	<alpine.DEB.2.11.2107071753080.35209@debian.work>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Did you try installing debian with the firmware-debian distribution
(unofficial)?  It has wi-fi drivers missing from the standard
distribution.



On Wed, 7 Jul 2021, Linux for blind general discussion wrote:

> On Wed, 7 Jul 2021, Linux for blind general discussion wrote:
>
> > Just make sure Debian supports all of your hardware first. My Acer
> > Espire E-1574... or 1575... worked on Arch install but not when trying to
> > install Debian. Also be aware that many packages will probably be versions
> > out of date of upstream, so missing features and possible fixes. Besides
> > that it would probably be a good console system.
>
> If you're willing to roll the dice a bit, Debian Bullseye is approaching a
> release and will obviously have newer software than the current stable
> version.  Also, I'm sure they'd like installation reports, especially if there
> are any issues.  Accessibility-related issues can be reported to the
> debian-accessibility mailing list.
>
> You can find out more about Bullseye at
> https://www.debian.org/releases/bullseye/
>
> You can find out mroe about accessibility in Debian at
> https://wiki.debian.org/accessibility
>
> HTH,
> Geoff.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

