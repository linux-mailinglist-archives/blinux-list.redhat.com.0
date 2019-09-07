Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 00550AC7FF
	for <lists+blinux-list@lfdr.de>; Sat,  7 Sep 2019 19:21:10 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2BBED33026D;
	Sat,  7 Sep 2019 17:21:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5396A60C5E;
	Sat,  7 Sep 2019 17:21:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A59F1802218;
	Sat,  7 Sep 2019 17:20:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x87HKccn021177 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 7 Sep 2019 13:20:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CC8151001938; Sat,  7 Sep 2019 17:20:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx14.extmail.prod.ext.phx2.redhat.com
	[10.5.110.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7BBD1001925
	for <blinux-list@redhat.com>; Sat,  7 Sep 2019 17:20:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 922323090FC4
	for <blinux-list@redhat.com>; Sat,  7 Sep 2019 17:20:35 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46Qh5Z2KK6z1sTt;
	Sat,  7 Sep 2019 13:20:34 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46Qh5Z0kQhzcbR; Sat,  7 Sep 2019 13:20:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46Qh5Z0PnzzcbQ;
	Sat,  7 Sep 2019 13:20:34 -0400 (EDT)
Date: Sat, 7 Sep 2019 13:20:33 -0400
To: blinux-list@redhat.com
Subject: script command alternative
Message-ID: <alpine.NEB.2.21.1909071317180.23188@panix1.panix.com>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.43]); Sat, 07 Sep 2019 17:20:35 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]);
	Sat, 07 Sep 2019 17:20:35 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.43
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-loop: blinux-list@redhat.com
Cc: slint@slint.fr, Peter Youssef <kingtut41@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Sat, 07 Sep 2019 17:21:08 +0000 (UTC)

First run ttyrec to record a session in ttyrecord.
Then ttyplay ttyrecord >file.txt.
Why is file.txt better than typescript.txt?  No escape codes and no clean
up necessary either.


--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
