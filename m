Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 91309F411
	for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2019 12:18:16 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CB3F730833A3;
	Tue, 30 Apr 2019 10:18:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CC9910013D9;
	Tue, 30 Apr 2019 10:18:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7257741F3D;
	Tue, 30 Apr 2019 10:18:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x3UAI1K9008228 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Apr 2019 06:18:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E38697C818; Tue, 30 Apr 2019 10:18:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx09.extmail.prod.ext.phx2.redhat.com
	[10.5.110.38])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD7277C821
	for <blinux-list@redhat.com>; Tue, 30 Apr 2019 10:17:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5D153AC2E5
	for <blinux-list@redhat.com>; Tue, 30 Apr 2019 10:17:58 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 44tcsx1Sz9z1XXk
	for <blinux-list@redhat.com>; Tue, 30 Apr 2019 06:17:57 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 44tcsx0W6szcbR; Tue, 30 Apr 2019 06:17:57 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 44tcsx0KGhzcbQ
	for <blinux-list@redhat.com>; Tue, 30 Apr 2019 06:17:57 -0400 (EDT)
Date: Tue, 30 Apr 2019 06:17:56 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help for partitioning during installation: what do you consider
	best?
In-Reply-To: <bfa52acc-6b9f-63b0-6ceb-3f2402ff2210@slint.fr>
Message-ID: <alpine.NEB.2.21.1904300610530.24233@panix1.panix.com>
References: <bfa52acc-6b9f-63b0-6ceb-3f2402ff2210@slint.fr>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.38]); Tue, 30 Apr 2019 10:17:58 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]);
	Tue, 30 Apr 2019 10:17:58 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.301  (RCVD_IN_DNSWL_MED,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.38
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Tue, 30 Apr 2019 10:18:15 +0000 (UTC)

I've installed a few different kinds of accessible linux over the years.
 My first install happened with Redhat 5.0 when Redhat 5.0 was popular
and current.  Best installer I've run into to date has been slint.  For
partitioning Debian has its guided partition path one can use and Fedora
and other GUI installers have their automatic partitioning paths
possible but the problem with all of these is you don't necessarily know
that the guided partitioning or automatic partitioning actually got you
an optimal partition set for your use case probably far into use of
post-installed linux and you may incorrectly attribute computer problems
to issues other than partition sizing.  Now if there's actually more
guideance than twice the available ram, that is additional factors to
take into account I've not yet run into that information.

On Tue, 30 Apr 2019, Linux for blind general discussion wrote:

> Date: Tue, 30 Apr 2019 05:10:48
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: vinux-support@googlegroups.com,
>     Linux for blind general discussion <blinux-list@redhat.com>,
>     slint <slint@slint.fr>
> Subject: Help for partitioning during installation: what do you consider best?
>
> Hello,
> '
> I would like that the next Slint installer be more newbie-friendly for choosing and setting up the partitions' layout.
>
> The idea is to ask the user some questions, to determine what layout fits best his or her needs and preferences,
> then do the partitioning for him or her in most cases.
>
> So, my question is: among the accessible text installers, which one do you consider the best, and why?
>
> Here, "best" means mainly "easy to use for newbies".
>
> Didier
> --
> Didier Spaier,
> Slint maintainer
>
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
