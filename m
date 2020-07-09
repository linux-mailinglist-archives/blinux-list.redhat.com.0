Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id C45BB219A86
	for <lists+blinux-list@lfdr.de>; Thu,  9 Jul 2020 10:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594282092;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=khaQCbe9bIhpPGSKU7HU47eJA+WtcX2rH9kaT/7pXCI=;
	b=CdMVKx7IMwrQ7jmbV72sEwkcrcl2TkZLu+hNctyn5jkfv7CjmiPIiRXvQVsMuDjaGWH24m
	ky6GddnusjKosRrHl4RcrTdoylDdzXvkX/7IncL53JJycpEB2K7TLuYXDCEFbXG2eIXLm4
	Rzd3y1UR8SwYgN7mO1UcXq6bCSRj3EE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-206-CIUX2Wt4PViFaTragk_PPQ-1; Thu, 09 Jul 2020 04:08:10 -0400
X-MC-Unique: CIUX2Wt4PViFaTragk_PPQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F7AB1081;
	Thu,  9 Jul 2020 08:08:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CB607F8A5;
	Thu,  9 Jul 2020 08:08:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 36BD493F7D;
	Thu,  9 Jul 2020 08:08:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06987prU014761 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Jul 2020 04:07:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BF3F32026D69; Thu,  9 Jul 2020 08:07:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BAEE12026D67
	for <blinux-list@redhat.com>; Thu,  9 Jul 2020 08:07:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC238100E7CE
	for <blinux-list@redhat.com>; Thu,  9 Jul 2020 08:07:49 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [208.113.134.41]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-346-NYnyrs9MM1SnaBm5KVx0Zg-1; Thu, 09 Jul 2020 04:07:47 -0400
X-MC-Unique: NYnyrs9MM1SnaBm5KVx0Zg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4B2TLV53Byz28gf
	for <blinux-list@redhat.com>; Thu,  9 Jul 2020 08:07:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.opopanax.net
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id GWzVp-EXK0wh for <blinux-list@redhat.com>;
	Thu,  9 Jul 2020 08:06:56 +0000 (UTC)
Received: from [192.168.1.130] (24-220-234-87-dynamic.midco.net
	[24.220.234.87])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4B2TKW5qlnz28gd
	for <blinux-list@redhat.com>; Thu,  9 Jul 2020 08:06:55 +0000 (UTC)
Message-ID: <20200709.080649.576.7@[192.168.1.130]>
To: blinux-list@redhat.com
Subject: Building Kernel Drivers for old kernels
Date: Thu, 09 Jul 2020 03:06:49 -0500
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 06987prU014761
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

OS, arch linux.
I have this PCI card in my box:
03:00.0 RAID bus controller: HighPoint Technologies, Inc. RocketRAID 644 4 Port SATA-III Controller (eSATA) (rev 01)
04:00.0 RAID bus controller: HighPoint Technologies, Inc. RocketRAID 644 4 Port SATA-III Controller (eSATA) (rev 01)
Incidentally, what does it mean when it appears twice like that?
Anyway, when I plugged in all my drives, only one disk out of the twelve I have connected to the card shows up. As you can imagine, this is not good for my raid lol.
I went looking and I found a linux driver on the highpoint website. However, it is for 2.x kernels. My kernel is
Linux trainserve 5.7.7-arch1-1 #1 SMP PREEMPT Wed, 01 Jul 2020 14:53:16 +0000 x86_64 GNU/Linux
I don't think it is going to build a module for a kernel years newer than it is designed for.
What can I do here? Would this require a complete re write of drivers? Should I junk this card and try to find something newer?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

