Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2C076381BD8
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 02:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621125967;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Owfja40IC+HeHgU8hDY73nX4+3VnA6ZEW2pkqTVQxmw=;
	b=RUlJvrYVeyUChcex32f1+4qvBJB8ze8pzZBitQLv5mOTuODq4AFRrxGtXiI0BrVc1j/2qu
	jDnKX6D/rsgBqSIvTMVs98G7HXzqkFJde8214OyMsoTWzQd+07beh8iDHubdQCIUwf2tDc
	f+/8XjSd9ufm5U07cVbHBsQ4WMCeV9U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-209-vrYR05FiOSaU9mcNgfD6Iw-1; Sat, 15 May 2021 20:46:04 -0400
X-MC-Unique: vrYR05FiOSaU9mcNgfD6Iw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E340A1005D52;
	Sun, 16 May 2021 00:45:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 518E55C1C4;
	Sun, 16 May 2021 00:45:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 498291801028;
	Sun, 16 May 2021 00:45:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G0jOD5013089 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 20:45:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 18BC321602AD; Sun, 16 May 2021 00:45:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 141DB21602A4
	for <blinux-list@redhat.com>; Sun, 16 May 2021 00:45:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC998858F0D
	for <blinux-list@redhat.com>; Sun, 16 May 2021 00:45:21 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-91-whZCh7ZMOqaIXmMXATuqwA-1; Sat, 15 May 2021 20:45:19 -0400
X-MC-Unique: whZCh7ZMOqaIXmMXATuqwA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FjNpQ4jnYz2RsJ;
	Sat, 15 May 2021 20:45:18 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FjNpQ4clkzcbc; Sat, 15 May 2021 20:45:18 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FjNpQ4XbYzcbW;
	Sat, 15 May 2021 20:45:18 -0400 (EDT)
Date: Sat, 15 May 2021 20:45:18 -0400
To: blindtlk@nfbnet.org
Subject: Vox.com: Why captchas are getting harder (fwd)
Message-ID: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
MIME-Version: 1.0
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
Cc: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



---------- Forwarded message ----------
Date: Fri, 14 May 2021 23:56:57
From: Jude DaShiell <dashielljude@gmail.com>
To: Jude DaShiell <jdashiel@panix.com>
Subject: Vox.com: Why captchas are getting harder

Vox.com: Why captchas are getting harder.
https://www.vox.com/22436832/captchas-getting-harder-ai-artificial-intelligence

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

