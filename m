Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C518BFDDE
	for <lists+blinux-list@lfdr.de>; Fri, 27 Sep 2019 06:14:13 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id AE39E2A09DB;
	Fri, 27 Sep 2019 04:14:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 834D05C21F;
	Fri, 27 Sep 2019 04:14:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E99A71803B37;
	Fri, 27 Sep 2019 04:14:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8R41bM8005416 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Sep 2019 00:01:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DD7005D9C3; Fri, 27 Sep 2019 04:01:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx25.extmail.prod.ext.phx2.redhat.com
	[10.5.110.66])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D80585D9C9
	for <blinux-list@redhat.com>; Fri, 27 Sep 2019 04:01:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B27F810C094B
	for <blinux-list@redhat.com>; Fri, 27 Sep 2019 04:01:34 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46fdQQ00Y5z1Mp1
	for <blinux-list@redhat.com>; Fri, 27 Sep 2019 00:01:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46fdQP5w7bzcbR; Fri, 27 Sep 2019 00:01:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46fdQP5YfzzcbQ
	for <blinux-list@redhat.com>; Fri, 27 Sep 2019 00:01:33 -0400 (EDT)
Date: Fri, 27 Sep 2019 00:01:33 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Keyboard freezing up
In-Reply-To: <alpine.NEB.2.21.1909262319580.7023@panix1.panix.com>
Message-ID: <alpine.NEB.2.21.1909262359450.14946@panix1.panix.com>
References: <20190927030106.GB1316@abilitiessoft>
	<alpine.NEB.2.21.1909262319580.7023@panix1.panix.com>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.66]); Fri, 27 Sep 2019 04:01:34 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]);
	Fri, 27 Sep 2019 04:01:34 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.66
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 27 Sep 2019 04:14:12 +0000 (UTC)

It's also possible to run fetchmail either in a chron job or get fluent
with fetchmail commands and have fetchmail run automatically without the
assistance of chron.

On Thu, 26 Sep 2019, Linux for blind general discussion wrote:

> Date: Thu, 26 Sep 2019 23:21:03
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Keyboard freezing up
>
> Have you tried:
> bg fetchmail
> That will run fetchmail in the background.
> to see it type jobs.
> On Thu, 26 Sep 2019, Linux for
> blind general discussion
> wrote:
>
> > Date: Thu, 26 Sep 2019 23:01:06
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: Linux for blind general discussion <blinux-list@redhat.com>
> > Subject: Keyboard freezing up
> >
> > I have Debian Buster CLI with BRRLTTY. Every once in a while when I start fetchmail or maybe mutt the keyboard freezes up. It won't respond to anything and BRLTTY
> > won't respond to any keys on the Braille
> > display. Has anyone had these issues, and have you found a solution?
> >
> > Thanks,
> > John
> >
> >
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
