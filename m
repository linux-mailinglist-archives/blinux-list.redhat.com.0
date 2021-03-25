Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DE87E348757
	for <lists+blinux-list@lfdr.de>; Thu, 25 Mar 2021 04:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616641741;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vyjqESdY+V5aXj9X8n2+EmzYve4ni2g0rhlgYMDLK7o=;
	b=A/7SPhbFma9dEl0PFr1oFT5JYl1Nm6SKfHpvhtlQSAZ+bHQIOuKRcCkqo9C99Z2RwTebC/
	uqA/RZdRPj2jikl2r04KSRWcPC+0GxLGt203iN8lof3xuiFAg3fc1SSzL7q1Aj6SRPUjOi
	EmZ+3N9c+RgAK32lOjDOiJgnpf47TMs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-kDGPWhk0PR6jzh8MiajBkA-1; Wed, 24 Mar 2021 23:08:38 -0400
X-MC-Unique: kDGPWhk0PR6jzh8MiajBkA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 24DE4107B7C5;
	Thu, 25 Mar 2021 03:08:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 29F2919C71;
	Thu, 25 Mar 2021 03:08:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34BA018095C9;
	Thu, 25 Mar 2021 03:08:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12P37qdA003700 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Mar 2021 23:07:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9380221CAC6D; Thu, 25 Mar 2021 03:07:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E7942166B2D
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 03:07:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F008F85A5A8
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 03:07:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-343-MLaGnmsbOxKCrZ62Xcuz2w-1; Wed, 24 Mar 2021 23:07:47 -0400
X-MC-Unique: MLaGnmsbOxKCrZ62Xcuz2w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F5VQq0Yd9z1X2T;
	Wed, 24 Mar 2021 23:07:47 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F5VQp6rvmzcbc; Wed, 24 Mar 2021 23:07:46 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F5VQp6WNyzcbW;
	Wed, 24 Mar 2021 23:07:46 -0400 (EDT)
Date: Wed, 24 Mar 2021 23:07:46 -0400
To: slint@freelists.org
Subject: dos emulators fail
Message-ID: <alpine.NEB.2.23.451.2103242301570.591@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

$ dosemu
ERROR: SDL: Unable to open mouse
ERROR: SYSCALL ERROR: 13, *Permission denied* in file mouseint.c, line 527: expr=
         open(mice->dev, mode)
ERROR: Cannot open internal mouse device /dev/input/mice
$ dosemu -m
ERROR: SDL: Unable to open mouse
dosemu version: 1.4.0.8

This happens whether there is a mouse connected or not.
What's worse, the configuration cannot be redirected to a file from stderr 
with 2>&1 >.dosemurc or |tee .dosemurc.
I use a logitech ifeel mouse which is usb so defined the mouse as pnp for 
the mouse driver and neither dosemu nor dosbox can work.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

