Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3781D3F3E0B
	for <lists+blinux-list@lfdr.de>; Sun, 22 Aug 2021 07:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629610984;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oGtzUQSNKpJIwKNuZRi857R/bc6JhOr5ni7/F63mubE=;
	b=hxbWNavMdqcqizqJdOU5gUm740L4VDFIUf9mSCnEr2CaGaMvHFKQnu8gK6fUwVeFIL9Ute
	jjGaTise/6LpqDdztKo+/hBz5kfDUsYcaCY63sdUf4rQcxW1Rr0n3jGnSLl6Ti7oEkKxFu
	Udzabk3502p70PD558V1cwvc8/AVrE4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-u9109-eTNtCzaiENdSdf1A-1; Sun, 22 Aug 2021 01:43:01 -0400
X-MC-Unique: u9109-eTNtCzaiENdSdf1A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A6FE1082920;
	Sun, 22 Aug 2021 05:42:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D874D60853;
	Sun, 22 Aug 2021 05:42:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECE09181847A;
	Sun, 22 Aug 2021 05:42:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17M5g4EJ000694 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 22 Aug 2021 01:42:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8DC1D2023193; Sun, 22 Aug 2021 05:42:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 891942023178
	for <blinux-list@redhat.com>; Sun, 22 Aug 2021 05:42:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9EF958556F0
	for <blinux-list@redhat.com>; Sun, 22 Aug 2021 05:42:00 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-281-Mci0y62CNGu7hNInhKUdeA-1; Sun, 22 Aug 2021 01:41:58 -0400
X-MC-Unique: Mci0y62CNGu7hNInhKUdeA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GsklV0wSJz2sVD;
	Sun, 22 Aug 2021 01:41:58 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GsklT725Jzcbc; Sun, 22 Aug 2021 01:41:57 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GsklT6Z98zcbW;
	Sun, 22 Aug 2021 01:41:57 -0400 (EDT)
Date: Sun, 22 Aug 2021 01:41:57 -0400
To: orca-list@gnome.org
Subject: elementary-os linux #a11y findings
Message-ID: <alpine.NEB.2.23.451.2108220135490.3417@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

First I was finally able to download and seed the torrent using
transmission-cli.  The lftp program is good for light work, but when you
need heavy work done reach for transmission-cli at least for the command
line users and those that can use a terminal inside a g.u.i.
I'm rather certain amixer isn't on the system out of the box and not
knowing what else was available I couldn't ensure or test sound card
volume.  The speaker-test application appears to be another one missing.
Aside from all of that, it was not possible to bring a screen reader up in
any form on elementary-os oden stable.  For that reason I had no
opportunity to test anything else out on that linux distro.  I recommend
not spending any money on elementary-os if you need to use a screen reader
given these conditions.  I'm not sorry for having spent the time
downloading and testing this distro, it's just one to put in the does not
work pile for now.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

