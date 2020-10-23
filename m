Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9129E297023
	for <lists+blinux-list@lfdr.de>; Fri, 23 Oct 2020 15:15:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603458953;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AwMmQzhT9Ix3El6jKYPydH+kLj0zzBQLw9+qRoo7KY8=;
	b=f36lLC9nWCzYRnoR/nlCdaTRIAsAIviohXvRIjyybth+IkCHHY/7g4rRcUyjusg0/V7dpJ
	ITSbdhK20cBKcCTXNzdaPhsc8xSMDNzk2qljpSLu5RmDTtcK+rgU26wrcYVJvT6XB+YDB2
	Iam99hbUc87h43REXW35eAU2FK1Fhp8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-exLsa2FbPNegulPFfb_Arw-1; Fri, 23 Oct 2020 09:15:51 -0400
X-MC-Unique: exLsa2FbPNegulPFfb_Arw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C477C10A0B81;
	Fri, 23 Oct 2020 13:15:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D4E36EF66;
	Fri, 23 Oct 2020 13:15:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 727C51800B6C;
	Fri, 23 Oct 2020 13:15:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09NDF6xf032662 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Oct 2020 09:15:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5F304201EB53; Fri, 23 Oct 2020 13:15:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B2DD20235B9
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 13:15:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6F61805A75
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 13:15:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-48-tzMOEsTLN9Cfy7MJuHoL7Q-1; Fri, 23 Oct 2020 09:15:01 -0400
X-MC-Unique: tzMOEsTLN9Cfy7MJuHoL7Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CHl8460xFzsXM
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 09:15:00 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CHl844nsqzcbf; Fri, 23 Oct 2020 09:15:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CHl843thWzcbd
	for <blinux-list@redhat.com>; Fri, 23 Oct 2020 09:15:00 -0400 (EDT)
Date: Fri, 23 Oct 2020 09:15:00 -0400
To: blinux-list@redhat.com
Subject: building kernel for ac97 sound card
Message-ID: <alpine.NEB.2.23.451.2010230909460.7641@panix1.panix.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have an ac97 sound card and a c-media usb sound card on a system.  I
have only had success activating the pcspeaker when building a kernel for
gentoo.  I have no clue as to what to enable to get this done.  This is
even after having gone through lspci output and lsmod output with the
install-minimal dvd running the operating system  The speaker-test utility
puts out sound in the chroot environment and is silent after first boot
into the new environment made by the compiled kernel.


--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

