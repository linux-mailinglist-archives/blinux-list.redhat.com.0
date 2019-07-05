Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDC460D65
	for <lists+blinux-list@lfdr.de>; Fri,  5 Jul 2019 23:57:36 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E2747308339B;
	Fri,  5 Jul 2019 21:57:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94044860D9;
	Fri,  5 Jul 2019 21:57:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F153F18184A5;
	Fri,  5 Jul 2019 21:57:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x65LvVHR028429 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Jul 2019 17:57:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 967C2804B1; Fri,  5 Jul 2019 21:57:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx04.extmail.prod.ext.phx2.redhat.com
	[10.5.110.28])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 912428049F
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 21:57:29 +0000 (UTC)
Received: from gateway3.unifiedlayer.com (gateway3.unifiedlayer.com
	[74.220.209.96])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 625A885543
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 21:57:13 +0000 (UTC)
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway3.unifiedlayer.com (Postfix) with ESMTP id D851020090EB6
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 16:57:12 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id jWCehZKBTDhm0jWCehlpfQ; Fri, 05 Jul 2019 16:57:12 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=thechases.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OIF9q5yclnJ/cSG+FGHxNZcRi+jZSk3RAVAE/Q5IK9M=;
	b=M5mR8RIoZ+czkxdj3fQ5Lv6WWM
	YFSAP1GfL1e453xkfoFq+RmWGo5NQnYJZPb9zwyhE74/uVTYC3KiZZkqjXlH4kVFbegETBYQVvjOJ
	kPfHB/lf0DIjFOLE0Dc2zrxdHz0gABb1Is5knNBKgyYDgZ5G4N+Dq+8zMfS8Mt5CRNplUcM5Bh0/O
	rdf/+iK4Npt1bINXF5JO+Tixt5cVYcw7B5G9aR4Wr20R9FyUjh64N8uBPRmeJ9PY52i7fbk49XZ17
	lUv5y4QXEwSt5ouE8u40I6Gn26AFjULc0RVIVDh4xww0mw5urIhS1IzRONTYwTQEMMi2BjrYNGELt
	fw++HTUQ==;
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:56368 helo=bigbox.christie.dr)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1hjWCe-003e7a-Gp
	for blinux-list@redhat.com; Fri, 05 Jul 2019 17:57:12 -0400
Date: Fri, 5 Jul 2019 16:57:11 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Need a memory refresh
Message-ID: <20190705165711.342e4e48@bigbox.christie.dr>
In-Reply-To: <20190705213906.GA11497@abilitiessoft>
References: <20190705213906.GA11497@abilitiessoft>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1hjWCe-003e7a-Gp
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.christie.dr) [172.0.250.193]:56368
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.28]); Fri, 05 Jul 2019 21:57:22 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]);
	Fri, 05 Jul 2019 21:57:22 +0000 (UTC) for IP:'74.220.209.96'
	DOMAIN:'gateway3.unifiedlayer.com' HELO:'gateway3.unifiedlayer.com'
	FROM:'blinux.list@thechases.com' RCPT:''
X-RedHat-Spam-Score: 0.2  (DKIM_INVALID, DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 74.220.209.96 gateway3.unifiedlayer.com 74.220.209.96
	gateway3.unifiedlayer.com <blinux.list@thechases.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.28
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Fri, 05 Jul 2019 21:57:35 +0000 (UTC)

Tim here.

Depending on the way you're switching, there are at least three
different ways that occur to me:

1) use control+alt+F1 through F6 or so. These switch between the
virtual consoles.   The actual number of them are assigned in
your /etc/inittab where you'll see lines like

  1:2345:respawn:/sbin/getty 38400 tty1
  2:23:respawn:/sbin/getty 38400 tty2
  3:23:respawn:/sbin/getty 38400 tty3
  4:23:respawn:/sbin/getty 38400 tty4
  5:23:respawn:/sbin/getty 38400 tty5
  6:23:respawn:/sbin/getty 38400 tty6

that instruct /sbin/getty to listen on the various virtual consoles.

2) use su(1) to switch to the given user 

  john@linux$ su - otheruser
  password: ********
  otheruser@linux$ whoami
  otheruser

3) use a terminal multiplexer like tmux or GNU screen in conjunction
with #2 to use your one terminal, but then switch between various
virtual terminals.

I used to use method #1 but once I learned about and became adept at
using GNU screen and later tmux, I use method #3.  This also works
particularly well with terminal screen-readers like yasr.  I can
start yasr, then start tmux within it, and then have it read the
virtual terminals regardless of who I log in as.  If I use method #1,
with yasr inside it, only that virtual terminal gets read.

#3 also has the advantage that if you SSH into your machine from some
other box, you can connect to your already-running session and pick
up right as if you were sitting there.

So I think that, while you're asking for #1 (control+alt+Fn), you
might come to appreciate #3 more like I have. (grins)

-tim

On July  5, 2019, Linux for blind general discussion wrote:
> I am using Debian Buster, CLI  only. I have three users on the
> machine, besides the superuser. I can't remember the keystroke to
> switch from one user to another. ssh isn't really satisfactory,
> since it doesn't set up an independent user. Where can I find
> information like this?
> 
> Thanks,
> John
> 
> -- 
> John J. Boyer
> Email: john.boyer@abilitiessoft.org
> website: http://www.abilitiessoft.org
> Status: Company dissolved but website and email addresses  live.
> Location: Madison, Wisconsin, USA
> Mission: developing assistive technology software and providing
> STEM services that are available at no cost
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
