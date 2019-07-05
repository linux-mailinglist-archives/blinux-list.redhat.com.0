Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC2060D35
	for <lists+blinux-list@lfdr.de>; Fri,  5 Jul 2019 23:39:49 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B42C93082120;
	Fri,  5 Jul 2019 21:39:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FE181BC3F;
	Fri,  5 Jul 2019 21:39:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E68B11818485;
	Fri,  5 Jul 2019 21:39:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x65LdCSE022887 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Jul 2019 17:39:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AFEEB1001B19; Fri,  5 Jul 2019 21:39:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx08.extmail.prod.ext.phx2.redhat.com
	[10.5.110.32])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABAA31001938
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 21:39:10 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4ED07C057EC6
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 21:39:08 +0000 (UTC)
Received: from [68.190.112.237] (helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1hjVv8-000H3V-Vq
	for blinux-list@redhat.com; Fri, 05 Jul 2019 16:39:07 -0500
Date: Fri, 5 Jul 2019 16:39:06 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Need a memory refresh
Message-ID: <20190705213906.GA11497@abilitiessoft>
MIME-Version: 1.0
Content-Disposition: inline
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.32]); Fri, 05 Jul 2019 21:39:08 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]);
	Fri, 05 Jul 2019 21:39:08 +0000 (UTC) for IP:'66.170.1.9'
	DOMAIN:'mailbox.supranet.net' HELO:'mailbox.supranet.net'
	FROM:'john@godtouches.org' RCPT:''
X-RedHat-Spam-Score: -0.701  (HEADER_FROM_DIFFERENT_DOMAINS, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,
	SPF_PASS) 66.170.1.9 mailbox.supranet.net 66.170.1.9
	mailbox.supranet.net <john@godtouches.org>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.32
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Fri, 05 Jul 2019 21:39:48 +0000 (UTC)

I am using Debian Buster, CLI  only. I have three users on the machine, besides the superuser. I can't remember the keystroke to switch from one user to another. 
ssh isn't really satisfactory, since it doesn't set up an independent user. Where can I find information like this?

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
