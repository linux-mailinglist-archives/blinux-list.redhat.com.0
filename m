Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E05A12E8D6A
	for <lists+blinux-list@lfdr.de>; Sun,  3 Jan 2021 18:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609693548;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4PEvbQoZwmzLD8dINLUqTmp4ce6ndMl5W88h6mFKZ9s=;
	b=dJSQIq/Zob3q6tZ1cvhfjTuGbEEGNWxhZGTpSb0gYvAJgMD43zblgtvdbcRj8IzVtjzU6d
	ikG5bE2y/1UDUCVfo5jGHHy6KAsdRt0MOzK5NAGFjTk76eS1YANfy3goqPjUoF2eGniq0Z
	u1XRG6eS2sx5rkUKIv6OpzN2SXLIFg8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-iZXtVsP_OhSOVHnFfv-CEw-1; Sun, 03 Jan 2021 12:05:46 -0500
X-MC-Unique: iZXtVsP_OhSOVHnFfv-CEw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E47E410054FF;
	Sun,  3 Jan 2021 17:05:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 901C060C13;
	Sun,  3 Jan 2021 17:05:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 928024BB7B;
	Sun,  3 Jan 2021 17:05:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 103H5SVL032315 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 12:05:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C081C2166B2A; Sun,  3 Jan 2021 17:05:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBF752166B27
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 17:05:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 523A1101A53F
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 17:05:26 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-179-hajIsrjMPjieUox6RUMxWQ-1; Sun, 03 Jan 2021 12:05:24 -0500
X-MC-Unique: hajIsrjMPjieUox6RUMxWQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4D84rg3jjBzYGm
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 12:05:23 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4D84rg35d2zcbc; Sun,  3 Jan 2021 12:05:23 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4D84rg2v9yzcbV
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 12:05:23 -0500 (EST)
Date: Sun, 3 Jan 2021 12:05:23 -0500
To: blinux-list@redhat.com
Subject: re: cli-party package
Message-ID: <alpine.NEB.2.23.451.2101031201590.11812@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It turns out the package needed xidel and html2text.  I found that out by 
analyzing a typescript file in which cli-party was run.  Only problem is I 
installed html2text on slint and the cli-party game doesn't find 
html2text.  Python is in such a mess now lots of things including pip 
searches no longer work, so it may be necessary to give python some time 
to sort its mess and for distros to get the replacement packages for all 
of those deprecated packages.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

