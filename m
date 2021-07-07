Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 40E313BEA6C
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 17:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625670586;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VCt24wiac29C2ornS1K+lT90jrjsf+8vghdfP/yXvEY=;
	b=HyskPeKoLKGQoHbz96Qbp2gcv1RRCIUuDxYuH8evsBCvxSTn3T3NNNtC+RrjTH8b4bcaJz
	w/F0KgfJC2AD9OB/CkFaQLx75cn6YeZgftpjF5+Nd3K6Sz+Ct2/I/UR/dSpiS1jw9PNoms
	/XkXOjSRd/vo2ScuzagI9CsvEIbVR68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-9zLNqDxXPfqRSNOVHlarTw-1; Wed, 07 Jul 2021 11:09:44 -0400
X-MC-Unique: 9zLNqDxXPfqRSNOVHlarTw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FB6D802934;
	Wed,  7 Jul 2021 15:09:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CCC2100EBAF;
	Wed,  7 Jul 2021 15:09:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 345901809C99;
	Wed,  7 Jul 2021 15:09:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167F9OMP001384 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 11:09:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F94410F270A; Wed,  7 Jul 2021 15:09:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B7E510F2708
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 15:09:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73101108C0BF
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 15:09:21 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-592-86O8XeWTNpyXq3Y9gra1Tg-1; Wed, 07 Jul 2021 11:09:19 -0400
X-MC-Unique: 86O8XeWTNpyXq3Y9gra1Tg-1
Received: from [192.168.116.128] (unknown [176.230.59.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id 899D0800979E
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 14:59:53 +0000 (UTC)
Date: Wed, 7 Jul 2021 17:59:48 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Starting linux again
In-Reply-To: <CAGJxbF4KF7FJE0hRpR-zJyYHvgqcKQNhVVXPy3StT6v6w9Gv_Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.2107071753080.35209@debian.work>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<CAGJxbF4KF7FJE0hRpR-zJyYHvgqcKQNhVVXPy3StT6v6w9Gv_Q@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Wed, 7 Jul 2021, Linux for blind general discussion wrote:

> Just make sure Debian supports all of your hardware first. My Acer
> Espire E-1574... or 1575... worked on Arch install but not when trying to
> install Debian. Also be aware that many packages will probably be versions
> out of date of upstream, so missing features and possible fixes. Besides
> that it would probably be a good console system.

If you're willing to roll the dice a bit, Debian Bullseye is approaching a 
release and will obviously have newer software than the current stable 
version.  Also, I'm sure they'd like installation reports, especially if 
there are any issues.  Accessibility-related issues can be reported to the 
debian-accessibility mailing list.

You can find out more about Bullseye at 
https://www.debian.org/releases/bullseye/

You can find out mroe about accessibility in Debian at 
https://wiki.debian.org/accessibility

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

