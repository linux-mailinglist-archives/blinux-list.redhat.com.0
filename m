Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A6C431EC
	for <lists+blinux-list@lfdr.de>; Thu, 13 Jun 2019 01:52:05 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 271317F769;
	Wed, 12 Jun 2019 23:51:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 873DD60185;
	Wed, 12 Jun 2019 23:51:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 809131806B16;
	Wed, 12 Jun 2019 23:51:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5CNpVAJ008715 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jun 2019 19:51:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A56395ED3B; Wed, 12 Jun 2019 23:51:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx12.extmail.prod.ext.phx2.redhat.com
	[10.5.110.41])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A01FF5ED38
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 23:51:29 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 12E68306641B
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 23:51:29 +0000 (UTC)
Received: by server2.shellworld.net (Postfix, from userid 1028)
	id 9EE458C0367; Wed, 12 Jun 2019 23:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 9E56B8C02A4
	for <blinux-list@redhat.com>; Wed, 12 Jun 2019 16:44:00 -0700 (PDT)
Date: Wed, 12 Jun 2019 16:44:00 -0700
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: 2 Debian Issues??
Message-ID: <Pine.LNX.4.64.1906121630310.30932@server2.shellworld.net>
MIME-Version: 1.0
X-Greylist: Delayed for 00:07:26 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.41]); Wed, 12 Jun 2019 23:51:29 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]);
	Wed, 12 Jun 2019 23:51:29 +0000 (UTC) for IP:'66.172.12.120'
	DOMAIN:'server2.shellworld.net' HELO:'server2.shellworld.net'
	FROM:'chime@hubert-humphrey.com' RCPT:''
X-RedHat-Spam-Score: 0.002  (SPF_HELO_NONE,
	SPF_NONE) 66.172.12.120 server2.shellworld.net
	66.172.12.120 server2.shellworld.net
	<chime@hubert-humphrey.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.41
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Wed, 12 Jun 2019 23:51:59 +0000 (UTC)

Well, many months ago Tim was quite a help in a related item. Yes, I can at 
least change the beep and length as something like
setterm -bfreq 440 -blength 200
However, can you please inform where to put these so they servive a boot.
But now, I think since an upgrade to Kernel 5.1.3 while I can run commands for 
changing rows-and-columns, they are not affective. Mostly running Sid with 
135lines, but my laptop only has 112. In searching, a mention was made of xrandr 
but I am not running an x server. However, while I am in TCSH, it doesn't work 
in bash either. Thanks so much in advance for any guidance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
