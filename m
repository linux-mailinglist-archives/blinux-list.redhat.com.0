Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A0EC13D4BC0
	for <lists+blinux-list@lfdr.de>; Sun, 25 Jul 2021 06:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627187290;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Qm/h6kshC9l2swEctVJXG8Pto318uS2eDL+YAZu1UOU=;
	b=FTqe+JAHLbkhNf0LKqJ2aW1wJXSjH/XJdwJu7Ct+R1PsYr+SqPgySVfeuEI/KUs9zlZ4rO
	pafxZEWrNFViNJ9xcwR5CzsN8qn1gwA5Hq937Gh+2ibdq6dbgXxvPlPXhRXqLt/Mq6cBog
	ANd1zS1524KSzsNtEtRjs8iMJE4aSiY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-557-ulm7WQ7FOE6sCCXXLZ4eRQ-1; Sun, 25 Jul 2021 00:28:09 -0400
X-MC-Unique: ulm7WQ7FOE6sCCXXLZ4eRQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 371443639F;
	Sun, 25 Jul 2021 04:28:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D22E46;
	Sun, 25 Jul 2021 04:28:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EBD604BB7C;
	Sun, 25 Jul 2021 04:27:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16P4O9GR031410 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Jul 2021 00:24:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 85D8F202E4BF; Sun, 25 Jul 2021 04:24:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81E4C202E4BB
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 04:24:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3052E800963
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 04:24:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-394-j7m_kRI6O5uLVeCkIysuoA-1; Sun, 25 Jul 2021 00:24:02 -0400
X-MC-Unique: j7m_kRI6O5uLVeCkIysuoA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GXVLV3121z3lTC
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 00:24:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GXVLV1drpzcbc; Sun, 25 Jul 2021 00:24:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GXVLV1HbqzcbP
	for <blinux-list@redhat.com>; Sun, 25 Jul 2021 00:24:02 -0400 (EDT)
Date: Sun, 25 Jul 2021 00:24:02 -0400
To: blinux-list@redhat.com
Subject: latest archlinux
Message-ID: <alpine.NEB.2.23.451.2107250021210.25683@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Has anyone else noticed the computer needs to be reset after boot and
reboot to get sound and accessibility working?
However archinstall did this one, every time I install packages many
ldconfig errors get generated.  I probably didn't do a step in
post-config.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

