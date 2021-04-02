Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id F1D4A352BBB
	for <lists+blinux-list@lfdr.de>; Fri,  2 Apr 2021 17:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617376959;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xGVd/hQVJpsuxzk5FoPL9Heh/Q4frxdKe++IfSTxWFI=;
	b=TmcVA8+hdxAAzlGoVfyLDHDJZ2eFR+61RWGTRQm4UgI26Wq3bB8rWRePPw7qMGmH/EPTgS
	B7JcsQp/zu9UmSuy8fi8F+o9bBBhulKS0N6mCzFURzBa3sXiYFAY28qX1+y/pZ8hbwLurG
	V3D11B+WrrSpdylsVj351aeg8zANbeg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-FYpDLI3FPFCxwMgPQk4gmg-1; Fri, 02 Apr 2021 11:22:37 -0400
X-MC-Unique: FYpDLI3FPFCxwMgPQk4gmg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E571180FCA2;
	Fri,  2 Apr 2021 15:22:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0CCD5B6AD;
	Fri,  2 Apr 2021 15:22:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99CDF4BB7C;
	Fri,  2 Apr 2021 15:22:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 132FMRC0004234 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Apr 2021 11:22:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6FE0F2026D60; Fri,  2 Apr 2021 15:22:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69ED92026D6B
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:22:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32E7185A5AA
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:22:25 +0000 (UTC)
Received: from omta013.useast.a.cloudfilter.net
	(omta013.useast.a.cloudfilter.net [34.195.253.204]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-578-otd6GygKNayBRQUgpo9RAw-2;
	Fri, 02 Apr 2021 11:22:22 -0400
X-MC-Unique: otd6GygKNayBRQUgpo9RAw-2
Received: from cxr.smtp.a.cloudfilter.net ([10.0.17.210]) by cmsmtp with ESMTP
	id SJWLlJ2qbOR4ySLcslSFv9; Fri, 02 Apr 2021 15:22:22 +0000
Received: from DESKTOPJR9AN1N ([68.0.52.237]) by cmsmtp with ESMTPSA
	id SLcrlmUGeSpxZSLcrlnkCi; Fri, 02 Apr 2021 15:22:22 +0000
X-Authority-Analysis: v=2.4 cv=MMqlJOVl c=1 sm=1 tr=0 ts=606736ae
	a=LbbJ0yHzloG3/2BwYsSTog==:117 a=LbbJ0yHzloG3/2BwYsSTog==:17
	a=DAwyPP_o2Byb1YXLmDAA:9 a=ybiJIo_CqzXjb8E-0ScA:9 a=CjuIK1q_8ugA:10
	a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=4Cf6KjELcxPXdoyK_twA:9
	a=gKO2Hq4RSVkA:10
	a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
To: <blinux-list@redhat.com>
Subject: orca keystrokes
Date: Fri, 2 Apr 2021 10:22:21 -0500
Message-ID: <00bf01d727d3$fa887ab0$ef997010$@cox.net>
MIME-Version: 1.0
Thread-Index: Adcn0+t+/whnGcxXRMWPw0CDvWd1DA==
X-CMAE-Envelope: MS4xfD+rkFNEYc9ERg6b+iUhf2BgKQZj0xUh8s9Lni0oiw1C2zR9K0hidGjKPy4Bb3KJZYNmAXiWJAjo3ygaU5Baj7unLu1np+2LT6IBtE74msTgGfGNgzfh
	/AP2d6LxiXlkeBalRYaQpeAcRKkNtlwAQPth3gXQ3BUvjnHI+/TNOkm+1M59zsrjPS72IJQHUb5fTQ==
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The caps lock and spacebar did it.  Thanks!!

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

