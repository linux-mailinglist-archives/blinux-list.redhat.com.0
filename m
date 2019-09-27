Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C51D0BFDA5
	for <lists+blinux-list@lfdr.de>; Fri, 27 Sep 2019 05:30:09 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 600F218CB8F6;
	Fri, 27 Sep 2019 03:30:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FDE85D6A3;
	Fri, 27 Sep 2019 03:30:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 886441803518;
	Fri, 27 Sep 2019 03:29:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8R3L9qm003329 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 26 Sep 2019 23:21:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1430C5D9D5; Fri, 27 Sep 2019 03:21:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx17.extmail.prod.ext.phx2.redhat.com
	[10.5.110.46])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E2815D9C9
	for <blinux-list@redhat.com>; Fri, 27 Sep 2019 03:21:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 333FC3082E44
	for <blinux-list@redhat.com>; Fri, 27 Sep 2019 03:21:05 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46fcWg4Ylnz1Lwx
	for <blinux-list@redhat.com>; Thu, 26 Sep 2019 23:21:03 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46fcWg39ywzcbR; Thu, 26 Sep 2019 23:21:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46fcWg2ss1zcbQ
	for <blinux-list@redhat.com>; Thu, 26 Sep 2019 23:21:03 -0400 (EDT)
Date: Thu, 26 Sep 2019 23:21:03 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Keyboard freezing up
In-Reply-To: <20190927030106.GB1316@abilitiessoft>
Message-ID: <alpine.NEB.2.21.1909262319580.7023@panix1.panix.com>
References: <20190927030106.GB1316@abilitiessoft>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.46]); Fri, 27 Sep 2019 03:21:06 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]);
	Fri, 27 Sep 2019 03:21:06 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.46
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]); Fri, 27 Sep 2019 03:30:08 +0000 (UTC)

Have you tried:
bg fetchmail
That will run fetchmail in the background.
to see it type jobs.
On Thu, 26 Sep 2019, Linux for
blind general discussion
wrote:

> Date: Thu, 26 Sep 2019 23:01:06
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Keyboard freezing up
>
> I have Debian Buster CLI with BRRLTTY. Every once in a while when I start fetchmail or maybe mutt the keyboard freezes up. It won't respond to anything and BRLTTY
> won't respond to any keys on the Braille
> display. Has anyone had these issues, and have you found a solution?
>
> Thanks,
> John
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
