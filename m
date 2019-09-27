Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9FDBFD8A
	for <lists+blinux-list@lfdr.de>; Fri, 27 Sep 2019 05:12:14 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6473F5AFE3;
	Fri, 27 Sep 2019 03:12:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD41E10018FF;
	Fri, 27 Sep 2019 03:12:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A08D84E589;
	Fri, 27 Sep 2019 03:12:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8R31B56002523 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 26 Sep 2019 23:01:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AA2C05D9D5; Fri, 27 Sep 2019 03:01:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx23.extmail.prod.ext.phx2.redhat.com
	[10.5.110.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4FB95D9C9
	for <blinux-list@redhat.com>; Fri, 27 Sep 2019 03:01:09 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 90AA610576D7
	for <blinux-list@redhat.com>; Fri, 27 Sep 2019 03:01:08 +0000 (UTC)
Received: from [68.190.112.237] (helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1iDgVH-00051G-1V
	for blinux-list@redhat.com; Thu, 26 Sep 2019 22:01:07 -0500
Date: Thu, 26 Sep 2019 22:01:06 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Keyboard freezing up
Message-ID: <20190927030106.GB1316@abilitiessoft>
MIME-Version: 1.0
Content-Disposition: inline
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.64]); Fri, 27 Sep 2019 03:01:08 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Fri, 27 Sep 2019 03:01:08 +0000 (UTC) for IP:'66.170.1.9'
	DOMAIN:'mailbox.supranet.net' HELO:'mailbox.supranet.net'
	FROM:'john@godtouches.org' RCPT:''
X-RedHat-Spam-Score: -0.452  (HEADER_FROM_DIFFERENT_DOMAINS, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,
	SPF_PASS) 66.170.1.9 mailbox.supranet.net 66.170.1.9
	mailbox.supranet.net <john@godtouches.org>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.64
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 27 Sep 2019 03:12:13 +0000 (UTC)

I have Debian Buster CLI with BRRLTTY. Every once in a while when I start fetchmail or maybe mutt the keyboard freezes up. It won't respond to anything and BRLTTY 
won't respond to any keys on the Braille 
display. Has anyone had these issues, and have you found a solution?

Thanks,
John

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
