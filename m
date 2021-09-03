Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 38D9E3FF932
	for <lists+blinux-list@lfdr.de>; Fri,  3 Sep 2021 06:01:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630641679;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gMXTs5++tEB/EP6NXAvj2Cr8X2/mTjTYOb1MGE8FvQU=;
	b=F6PjcK/gzFpDvDEGl+xcPkmWOiFx5mjLF9jkCi/1SPtRJ/G2WYP0CSTzAAmsjqb2a+U2Pd
	XRIz1ujDzBdDsXO8CwmyzOWPr3VIfBY84X83Kl22T1BpHMOxYRxZxIo4a7OVLrFv/zNHvX
	dQVi8M9eYM0Z0G8jw5QYTsrUXkZtNkI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-598-GmhJQL3HMauY_TJADK2Xow-1; Fri, 03 Sep 2021 00:01:17 -0400
X-MC-Unique: GmhJQL3HMauY_TJADK2Xow-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAF44107ACC7;
	Fri,  3 Sep 2021 04:01:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED8BC60E3A;
	Fri,  3 Sep 2021 04:01:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0B4214EEA2;
	Fri,  3 Sep 2021 04:01:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1833ten5009019 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Sep 2021 23:55:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B5A4920A8C59; Fri,  3 Sep 2021 03:55:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADE8F20A8DFD
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 03:55:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7CF60967611
	for <blinux-list@redhat.com>; Fri,  3 Sep 2021 03:55:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-444-ZtVRfgGJPx2dox2SN6tQhA-1; Thu, 02 Sep 2021 23:55:34 -0400
X-MC-Unique: ZtVRfgGJPx2dox2SN6tQhA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H13q94LFCz2txL
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 23:55:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H13q93D8Tzcbc; Thu,  2 Sep 2021 23:55:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H13q92hVHzcbP
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 23:55:33 -0400 (EDT)
Date: Thu, 2 Sep 2021 23:55:33 -0400
To: blinux-list@redhat.com
Subject: https://blindcomputing.org/ status
Message-ID: <alpine.NEB.2.23.451.2109022351370.24726@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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

A blog with no content,
A comments section not possible to use,
the comments management company is where you end up after giving that site
an email address and that site is directed at getting more business for
the comments manager site and you don't get back to the original website
to leave any comments.
All in all, a very dodgey operation so far as I can figure.
This was after using firefox to log into the site and no it wasn't worth
the firefox login or the extra time it took to find all of this out.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

