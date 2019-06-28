Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F855A7B8
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jun 2019 01:45:39 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4BBA7A705;
	Fri, 28 Jun 2019 23:45:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B63645D71B;
	Fri, 28 Jun 2019 23:45:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C8B6C54D3D;
	Fri, 28 Jun 2019 23:44:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5SNebg2017707 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jun 2019 19:40:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A81F36012D; Fri, 28 Jun 2019 23:40:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx10.extmail.prod.ext.phx2.redhat.com
	[10.5.110.39])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A26C5600C6
	for <blinux-list@redhat.com>; Fri, 28 Jun 2019 23:40:35 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0305D59463
	for <blinux-list@redhat.com>; Fri, 28 Jun 2019 23:40:30 +0000 (UTC)
Received: from [68.190.112.237] (helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1hh0Tk-0009Ze-Ly
	for blinux-list@redhat.com; Fri, 28 Jun 2019 18:40:28 -0500
Date: Fri, 28 Jun 2019 18:40:27 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Keyboard freeze-up in Debian
Message-ID: <20190628234027.GA1027@abilitiessoft>
MIME-Version: 1.0
Content-Disposition: inline
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.39]); Fri, 28 Jun 2019 23:40:32 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]);
	Fri, 28 Jun 2019 23:40:32 +0000 (UTC) for IP:'66.170.1.9'
	DOMAIN:'mailbox.supranet.net' HELO:'mailbox.supranet.net'
	FROM:'john@godtouches.org' RCPT:''
X-RedHat-Spam-Score: -0.701  (HEADER_FROM_DIFFERENT_DOMAINS, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,
	SPF_PASS) 66.170.1.9 mailbox.supranet.net 66.170.1.9
	mailbox.supranet.net <john@godtouches.org>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.39
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 28 Jun 2019 23:45:38 +0000 (UTC)

Hello,

I am using Debian Buster with BRLTTY  5.6. Every once in a while the keyboard will become totally unresponsive, but brltty continujes to respond to keys pressed 
on the Braille display. I've had the same problem with previous versions of Debian. Any sugesions will be appreciated.

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
