Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C6618BAC13
	for <lists+blinux-list@lfdr.de>; Mon, 23 Sep 2019 01:00:50 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 50A57308FF32;
	Sun, 22 Sep 2019 23:00:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14895608C0;
	Sun, 22 Sep 2019 23:00:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B71521803517;
	Sun, 22 Sep 2019 23:00:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8MN0ZpQ028956 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 22 Sep 2019 19:00:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 562B55C1D6; Sun, 22 Sep 2019 23:00:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx29.extmail.prod.ext.phx2.redhat.com
	[10.5.110.70])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50C835C1B5
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 23:00:33 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1536F18C8932
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 23:00:31 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46c2wt2pd2z1S90
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 19:00:30 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46c2wt1lJ4zcbR; Sun, 22 Sep 2019 19:00:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46c2wt1hmlzcbQ
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 19:00:30 -0400 (EDT)
Date: Sun, 22 Sep 2019 19:00:30 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: current chromium version a dumpster fire!
In-Reply-To: <3990292b-2a12-b967-545a-be6e03ec2f6d@gmail.com>
Message-ID: <alpine.NEB.2.21.1909221856070.17569@panix1.panix.com>
References: <alpine.NEB.2.21.1909221404340.29542@panix1.panix.com>
	<3990292b-2a12-b967-545a-be6e03ec2f6d@gmail.com>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.70]); Sun, 22 Sep 2019 23:00:31 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.70]);
	Sun, 22 Sep 2019 23:00:31 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.70
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Sun, 22 Sep 2019 23:00:49 +0000 (UTC)

in Chromium 77.0.3865.90 this doesn't work either.  I removed the
--enable-speech-dispatcher flag from /etc/chromium/00-default.conf and
that changed no performance at all.  I'll try replacing
speech-dispatcher with chromevox to see if that has any effect.  The
.json file is in /usr/lib64/chromium/extensions/ for the record too.  If
there's no voice coming up once I do that change, this version of
chromium does not support chromevox..

On Sun, 22 Sep 2019, Linux for blind general discussion wrote:

> Date: Sun, 22 Sep 2019 16:45:42
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: current chromium version a dumpster fire!
>
> The best way to change the voice and keymap in Chromium with ChromeVox is to
> press alt+shift+o followed by o. It's counterintuitive to say the least, but
> starting in Afrikans is also counterintuitive ... something Google did wrong
> with their speech-dispatcher support, since it is supposed to start with the
> default voice, not the first available. The Afrikans speech even extends to
> the "ChromeVoc spoken feedback is ready" message even after the voice has been
> changed. In any case, the key sequence I mention here always has worked for
> me, and should still work in the latest package, since it is a ChromeVox
> sequence rather than a core key shortcut, and ChromeVox hasn't been changed
> for Chromium in probably the last 3 to 4 years. Hope it helps.
>
> Imetumwa kutoka orodha yangu
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
