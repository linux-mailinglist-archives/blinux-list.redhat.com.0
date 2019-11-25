Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id E034A1094A9
	for <lists+blinux-list@lfdr.de>; Mon, 25 Nov 2019 21:30:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1574713846;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dFE0l8wvxQmnzXf3eNxd0gTsqh4mkQIErg5N7pqANl4=;
	b=Fhm7lKv6EbhA4QBleVxm1tkxRx0YNvbtwZiDIyOjx/qSrYgOr301P7Z1xIdvV89U8rz2qU
	fsd0Mda6GKvh+4Xx2gvDu4pQUiHTmQeYY5SwzE1e5+noRfNrVeC4+VjiwPCL/Kb2qd/1vV
	8P4YbJBOMTmZvqnayZKQeRYup64KAQ4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-K0ZX_RSWNF-9YLR2vd968A-1; Mon, 25 Nov 2019 15:30:44 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 224939B6EB3;
	Mon, 25 Nov 2019 20:14:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8435B608C1;
	Mon, 25 Nov 2019 20:14:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 440E64BB65;
	Mon, 25 Nov 2019 20:14:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xAPKEIe0000523 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 25 Nov 2019 15:14:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E13CE10B7CAB; Mon, 25 Nov 2019 20:14:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB8DF10A7E47
	for <blinux-list@redhat.com>; Mon, 25 Nov 2019 20:14:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 31D6D905B5A
	for <blinux-list@redhat.com>; Mon, 25 Nov 2019 20:14:15 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-87-_TuaXIeWO5iB4lEnkvUlug-1; Mon, 25 Nov 2019 15:14:12 -0500
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 0B1078C0428; Mon, 25 Nov 2019 20:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 0A7638C00D4
	for <blinux-list@redhat.com>; Mon, 25 Nov 2019 15:14:11 -0500 (EST)
Date: Mon, 25 Nov 2019 15:14:11 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: a very specific L I N K s  question?
Message-ID: <Pine.LNX.4.64.1911251510550.4545@server2.shellworld.net>
MIME-Version: 1.0
X-MC-Unique: _TuaXIeWO5iB4lEnkvUlug-1
X-MC-Unique: K0ZX_RSWNF-9YLR2vd968A-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xAPKEIe0000523
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi folks,
Is there a command line switch for the browser to help with  getting 
things spoken?
Unfortunately the Links for Dos  <compiled with JavaScript!>  has only an 
onboard manual.  The install spoke, so something must be possible.
Thanks,
Karen


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

