Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id E4FEA1CFE48
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 21:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589311783;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=suiWLLkQbDOresSeL46DPWBH2AzTwuEvTKyAKvuAglg=;
	b=Md97a6WU8faSljXvcn6N9rSk5CTeMq2QFR37bn8nfAK8F12HPXjH1qRSX8+6jpvmo1xZbc
	tv007dKBwCU9bDTZL6hxFrDNRZu73kHXwT323FEykkVR2oENPIoPFaMNy7HERYpRQvNaMO
	iAj0ebBRW5+qsOwIZJlf5mmqi5rnvKQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-uB2suLMRO4yoZtZs_sPsmQ-1; Tue, 12 May 2020 15:29:40 -0400
X-MC-Unique: uB2suLMRO4yoZtZs_sPsmQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4C2D19057A1;
	Tue, 12 May 2020 19:29:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AE464233;
	Tue, 12 May 2020 19:29:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 286254CAA0;
	Tue, 12 May 2020 19:29:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CJTYi1013806 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 15:29:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F6DE202683E; Tue, 12 May 2020 19:29:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BC80202696C
	for <blinux-list@redhat.com>; Tue, 12 May 2020 19:29:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A561800FFA
	for <blinux-list@redhat.com>; Tue, 12 May 2020 19:29:32 +0000 (UTC)
Received: from gmmr1.centrum.cz (gmmr1.centrum.cz [46.255.225.252]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-42-8UB23jwjOCGhrqFWZUflFg-1; Tue, 12 May 2020 15:29:29 -0400
X-MC-Unique: 8UB23jwjOCGhrqFWZUflFg-1
Received: from gmmr-2.centrum.cz (unknown [10.255.254.39])
	by gmmr1.centrum.cz (Postfix) with ESMTP id 645B2804432C
	for <blinux-list@redhat.com>; Tue, 12 May 2020 21:29:28 +0200 (CEST)
Received: from out2.virusfree.cz (out2.virusfree.cz [79.133.37.42])
	by gmmr-2.centrum.cz (Postfix) with QMQP id 5EC8A5620
	for <blinux-list@redhat.com>; Tue, 12 May 2020 21:29:28 +0200 (CEST)
Received: from out2.virusfree.cz by out2.virusfree.cz
	(VF-Scanner: Clear:RC:0(46.255.225.205):SC:0(0.7/5.0):CC:0:;
	processed in 0.2 s); 12 May 2020 19:29:28 +0000
X-VF-Scanner-ID: 20200512192928.154544.25902.out2.virusfree.cz.0
Received: from gmmr-3.centrum.cz (46.255.225.205)
	by out2.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	12 May 2020 21:29:28 +0200
Received: from gm-smtp5.centrum.cz (unknown [10.255.254.10])
	by gmmr-3.centrum.cz (Postfix) with ESMTP id 0569220055F2A
	for <blinux-list@redhat.com>; Tue, 12 May 2020 21:29:28 +0200 (CEST)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp5.centrum.cz (Postfix) with ESMTPA id E08B384000C4
	for <blinux-list@redhat.com>; Tue, 12 May 2020 21:29:27 +0200 (CEST)
To: <blinux-list@redhat.com>
References: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ><alpine.NEB.2.21.2005121409260.2382@panix1.panix.com>
	<BD4BD103221A42D49AA3F208399FA7E2@DESKTOPN6LG1HQ>
In-Reply-To: <BD4BD103221A42D49AA3F208399FA7E2@DESKTOPN6LG1HQ>
Subject: RE: please help Me to build Shortwave radio player
Date: Tue, 12 May 2020 21:29:27 +0200
Message-ID: <DE0618AFF718433ABA965726B2DE7A7F@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdYoiL8Nky6gsAYrSgiWgFq0XI9sFgAAX63QAAJOUXA=
X-MimeOLE: Produced By Microsoft MimeOLE
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Aur Arch Linux Repository do not contain ARM64 build so I must fight with
compilation routines myself. I have built Gradio successfully, Orca screen
reader, even newest Speech-dispatcher from Github branch. So I really do my
best to learn app compilation and build on Arch Linux. I Am using ARU
repository dependencies table for X86 or X64 to install necessary package.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

