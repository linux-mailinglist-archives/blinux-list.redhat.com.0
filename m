Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0083FCC5E
	for <lists+blinux-list@lfdr.de>; Tue, 31 Aug 2021 19:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630431071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JZZHu9O70E6qaiAqY7F+RF0/VNk13177ZZFBe0+KDU0=;
	b=VRiBoJ18fEahC77xN56vq/cvMelPuL+Xu/ZVpOzZ5ratLpQhVCBS74LGHOPKqdu2imaVFr
	Fuxp8lNK7XeHp+X+muOg3kVlVFzbw//RjbhhyJ9EMUEeyHTprsLBRxVrFqHWq5GdAoed6T
	GK18Akut/BqWon3lGDNpMMRQ7r9KDvo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-502-XXGS_S5VOYqQPt5XZ_CKOw-1; Tue, 31 Aug 2021 13:31:08 -0400
X-MC-Unique: XXGS_S5VOYqQPt5XZ_CKOw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7171718C8C02;
	Tue, 31 Aug 2021 17:31:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E473D1001281;
	Tue, 31 Aug 2021 17:31:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3E2084BB7C;
	Tue, 31 Aug 2021 17:30:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17VHQDh5030817 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 31 Aug 2021 13:26:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5A5B7100915E; Tue, 31 Aug 2021 17:26:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56D2F100915A
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 17:26:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78D39967600
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 17:26:10 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-539-Gq5Mn0n7M_aPTceaEQsckw-1; Tue, 31 Aug 2021 13:26:07 -0400
X-MC-Unique: Gq5Mn0n7M_aPTceaEQsckw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GzYxq2dYQz44Gr
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 13:26:07 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GzYxq1ny5zcbc; Tue, 31 Aug 2021 13:26:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GzYxq1LfyzcbP
	for <blinux-list@redhat.com>; Tue, 31 Aug 2021 13:26:07 -0400 (EDT)
Date: Tue, 31 Aug 2021 13:26:07 -0400
To: blinux-list@redhat.com
Subject: blind-arch findings
Message-ID: <alpine.NEB.2.23.451.2108311320240.4235@panix1.panix.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It can't do an install for a command line so it is necessary to choose a
desktop.
Several warnings get thrown by the script but the script continues to
work.
I think if I do this again and pick a desktop the install will work
completely.
Partitions are made small sizes and this is on a disk with 240G of space.
Maybe that could be improved so more of the disk gets used by partitions.
No option to create and use a swap file rather than a swap partition is
available yet.
The script could probably install budgie as a desktop choice if worked.
When I installed stuff I put xorg on the system along with fonts and maybe
if I had left desktop and xorg off this might have come up in command line
mode.  I'll check that out time permitting.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

