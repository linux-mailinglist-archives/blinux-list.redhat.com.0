Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F25447390
	for <lists+blinux-list@lfdr.de>; Sun,  7 Nov 2021 16:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636299752;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XtlqGDUDZmX8aRh5u6safreKz1MpS9O3PRSV7OLGqxY=;
	b=O+PlpNBRAcpvwK1z2LEVVOio/jKDjetIRUasZw47zmvDgWH0hYOLP3Xtum9kRZoEGFtQE9
	if430Mls1f1/gqzJ1sZJsDasB0YRDrOjG17hzvD/mZ9vRud0V1bCYcPPAMTlNg2R06cxLv
	D/zYeFnjSMYB1ftJk5rbuv5QGvrij3g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-121-Ye1c6BB9OxqJYQm4qro_LQ-1; Sun, 07 Nov 2021 10:42:31 -0500
X-MC-Unique: Ye1c6BB9OxqJYQm4qro_LQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B85B41808325;
	Sun,  7 Nov 2021 15:42:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9DFE460C21;
	Sun,  7 Nov 2021 15:42:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 18CC118199EE;
	Sun,  7 Nov 2021 15:42:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A7FgNJX015403 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Nov 2021 10:42:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3849D2026D48; Sun,  7 Nov 2021 15:42:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 335F42026D46
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 15:42:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F4FF1066558
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 15:42:20 +0000 (UTC)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-549-aAJAnqSnNyqjh3U0-izqlA-1; Sun, 07 Nov 2021 10:42:18 -0500
X-MC-Unique: aAJAnqSnNyqjh3U0-izqlA-1
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id C89232EE
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:42:16 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RMMzJxfD_Hnr for <blinux-list@redhat.com>;
	Sun,  7 Nov 2021 16:42:16 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 210B614A
	for <blinux-list@redhat.com>; Sun,  7 Nov 2021 16:42:16 +0100 (CET)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1mjkJD-00C8J4-7J
	for blinux-list@redhat.com; Sun, 07 Nov 2021 16:42:15 +0100
Date: Sun, 7 Nov 2021 16:42:15 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to get speech in a console session?
Message-ID: <20211107154215.jjgp7ly5vw32yr6s@begin>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
	<CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
	<001bf099-b3e1-f02c-6f09-c52e85ef128c@slint.fr>
	<alpine.NEB.2.23.451.2111061755130.13929@panix1.panix.com>
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111061755130.13929@panix1.panix.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: hera
X-Rspamd-Queue-Id: C89232EE
X-Spamd-Result: default: False [1.40 / 15.00]; ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[blinux-list@redhat.com];
	RCPT_COUNT_ONE(0.00)[1]; HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]; MID_RHS_NOT_FQDN(0.50)[];
	TO_DN_ALL(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+]; SUBJECT_ENDS_QUESTION(1.00)[];
	RCVD_TLS_LAST(0.00)[]
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion, le sam. 06 nov. 2021 17:56:10 -0400, a ecrit:
> Maybe time to research pipewire for how much it can replace pulse.

That's the TODO here indeed:

https://github.com/brailcom/speechd/issues/447

I have also now added https://github.com/espeak-ng/pcaudiolib/issues/12
for espeak-ng (thus espeakup).

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

