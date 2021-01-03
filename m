Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 29BE82E8D0D
	for <lists+blinux-list@lfdr.de>; Sun,  3 Jan 2021 17:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609690468;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=569XM1y9MjTMioKa/nfdi1x/dHKjA9ip4P98b2s+Gf8=;
	b=OORvc5UJFB0IoTYy0xCbicUFHb06LVamhkiUKU6dy2fTXhEIyyUjuVRGw9lWDEZxKBQfvV
	4NAYe3VH2sbYnYWXWNPiIBA9w35WQinAfx1zNegfFBZHEf6++hLc+0AWkkXA4MPRrfWBfZ
	x4LRcpNKLpvbO/XyaHAGCjMskugmZac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-PuP8xEUcOnGOXdrfLfDuxQ-1; Sun, 03 Jan 2021 11:14:26 -0500
X-MC-Unique: PuP8xEUcOnGOXdrfLfDuxQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58C4F1005513;
	Sun,  3 Jan 2021 16:14:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BFF96F45C;
	Sun,  3 Jan 2021 16:14:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 246A7180954D;
	Sun,  3 Jan 2021 16:13:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 103GDh3G027683 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Jan 2021 11:13:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 99D66112132E; Sun,  3 Jan 2021 16:13:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 956FF112131B
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 16:13:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18E5F80391A
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 16:13:40 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-343-nJz57q06M4WQ5BEsYpjR3Q-1; Sun, 03 Jan 2021 11:13:37 -0500
X-MC-Unique: nJz57q06M4WQ5BEsYpjR3Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4D83hx2vHmzW28
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 11:13:37 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4D83hx2Mz4zcbc; Sun,  3 Jan 2021 11:13:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4D83hx285tzcbV
	for <blinux-list@redhat.com>; Sun,  3 Jan 2021 11:13:37 -0500 (EST)
Date: Sun, 3 Jan 2021 11:13:37 -0500
To: blinux-list@redhat.com
Subject: re: cli-party package
Message-ID: <alpine.NEB.2.23.451.2101031110350.1694@panix1.panix.com>
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The package has two dependencies html2text which I got installed and 
another I'm hearing but can't yet install.
Reason is the screen clears just after someone is asked to install the 
packages and it's not possible to go over the text with the cursor and get 
the correct spellings for the packages.  If a package is missing shouldn't 
that stay up on the screen until the player exits the game to add the 
dependency?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

