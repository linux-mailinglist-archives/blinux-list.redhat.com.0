Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 246D42DC0D7
	for <lists+blinux-list@lfdr.de>; Wed, 16 Dec 2020 14:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608124427;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Y3iqf2XnPrTk3L9LciHdJGZPqQd8txbpHsNP7R1T0ho=;
	b=BF1g665gqp/gwl5XkVlx3k7htERJBPz/5d0rvyp03nkw26VxL+8k96h2NYg9E58ZYPcZ+t
	iXcoUDt2WZBB4erlqkAUsbtC02uWMuumo+c4sr1dzAsFilWDp7thMkbHXeeBwAg24GTbRK
	XlNegaVGjb13Gkqb8Z8SEZcEuxmQ9Bo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-xcWDuiO-Od21V2UbdXuW0Q-1; Wed, 16 Dec 2020 08:13:44 -0500
X-MC-Unique: xcWDuiO-Od21V2UbdXuW0Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9FB7104ECEE;
	Wed, 16 Dec 2020 13:13:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D37660C5C;
	Wed, 16 Dec 2020 13:13:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 697AD1809C9F;
	Wed, 16 Dec 2020 13:13:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BGDD9hL011211 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 16 Dec 2020 08:13:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CC27B2166B2B; Wed, 16 Dec 2020 13:13:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C79472166B27
	for <blinux-list@redhat.com>; Wed, 16 Dec 2020 13:13:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81F0B800B3B
	for <blinux-list@redhat.com>; Wed, 16 Dec 2020 13:13:07 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-559-kqe-WH62O8K_pf_8Qqonsw-1; Wed, 16 Dec 2020 08:13:05 -0500
X-MC-Unique: kqe-WH62O8K_pf_8Qqonsw-1
Received: from rednote.net (localhost [IPv6:::1])
	by mail.rednote.net (Postfix) with ESMTPS id 9B2F4FA330
	for <blinux-list@redhat.com>; Wed, 16 Dec 2020 08:13:04 -0500 (EST)
Received: (from janina@localhost)
	by rednote.net (8.16.1/8.16.1/Submit) id 0BGDD4TI062103
	for blinux-list@redhat.com; Wed, 16 Dec 2020 08:13:04 -0500
Date: Wed, 16 Dec 2020 08:13:04 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Introduction
Message-ID: <20201216131304.GC5313@rednote.net>
References: <79C20A2A-0AAD-484C-95D4-29D4503833F8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <79C20A2A-0AAD-484C-95D4-29D4503833F8@gmail.com>
X-Operating-System: Linux opera.rednote.net 5.9.13-200.fc33.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

All flavors of Linux provide the same Orca, the same TTS, and the same
graphical environments by and large.

If you're asking which is easiest to install without sighted assistance,
I'd wager most of us would answer one of Arch, Debian, or Ubuntu. In
addition, there's Slint maintained by one of the members of this list.

My advice is to check the installation instructions for each of these
and decide which makes most sense to you.

Note also that there are bootable images of Linux that you can burn to a
CD or a usb flash device. You can get a sense of the environment from
booting one of those. You can also install from one of those.

Good luck.

Janina

Linux for blind general discussion writes:
> Hello everyone
> 
> I am a new member here. Used windows then switched to Mac, now back with windows again. Recently though, I have heard about linux and am interested to know which flavor, as there are many is the most accessible with the orca screen reader. As I am completely blind. I am completely dependent on speech. 
> 
> I look forward to learning more from everyone in this community. Plus gaining further knowledge with linux with the more experience here on this list.
> 
> With kind regards
> 
> Daniel 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

