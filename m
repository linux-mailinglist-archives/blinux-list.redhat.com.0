Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD30B1479
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2019 20:33:08 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 84D0A83F4C;
	Thu, 12 Sep 2019 18:33:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3F44452F;
	Thu, 12 Sep 2019 18:33:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3B0952551C;
	Thu, 12 Sep 2019 18:33:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8CIWx8v031412 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Sep 2019 14:33:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D4435100195C; Thu, 12 Sep 2019 18:32:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx30.extmail.prod.ext.phx2.redhat.com
	[10.5.110.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CFDB810018FF
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 18:32:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 596201DA4
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 18:32:56 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46TnSl410zz12PD
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 14:32:55 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46TnSl2rrSzcbR; Thu, 12 Sep 2019 14:32:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46TnSl2T6fzcbQ
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 14:32:55 -0400 (EDT)
Date: Thu, 12 Sep 2019 14:32:55 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Comunicating from your Linux machine?
In-Reply-To: <adcbe24e-619c-9580-0ccb-8efcad238a62@slint.fr>
Message-ID: <alpine.NEB.2.21.1909121426550.18044@panix1.panix.com>
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<bd79fcc8-262e-b178-1518-cf12f5ba9b6d@F123.org>
	<87zhja4b8g.fsf@gmail.com>
	<ba434a94-0e7b-633c-9a1e-9586f6aa8cd2@gmail.com>
	<alpine.NEB.2.21.1909121120200.6115@panix1.panix.com>
	<adcbe24e-619c-9580-0ccb-8efcad238a62@slint.fr>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.71]); Thu, 12 Sep 2019 18:32:56 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]);
	Thu, 12 Sep 2019 18:32:56 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.71
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Thu, 12 Sep 2019 18:33:07 +0000 (UTC)

I expect not.  When I ran telegram-cli earlier an import function for
the author of telegram was one of the failures and that oughtn't have
happened since that import was for the original author of telegram who's
address can be found in the README.md file in the source of
telegram-cli.  The import address had strange coding with lots of
backslash characters too.  What I need is a test set of commands that
work on the standard version of telegram I can try on this version of
the package.  That way, I can speed up what I do on this end and you
will have any successes and failures to examine on your end.

On Thu, 12 Sep 2019, Linux for blind general discussion wrote:

> Date: Thu, 12 Sep 2019 13:56:51
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Comunicating from your Linux machine?
>
> Hello Jude and list,
>
> Telling "I'm not certain sending functions work yet", "may not have been
> buikt the last time" or "Other distributions may have better compiled
> versions of telegram-cli available" don't help to find issues in the
> package, if any."
>
> What I need is actual testing by users, stating what works and what
> doesn't after having actually tried.
>
> So please try the sending functions and report your findings, whatever
> they be. A good report could look like "I did this, excpected  result A,
> got result B."
>
> I never used myself telegram, so I have to rely on end users to file
> bugs in a way then allow to find what's wrong, case occurring.
>
> I am also eager of feedback on any other package shipped in Slint.
>
> Best regards
>
> Didier
> --
> Didier Spaier
> Slint maintainer
>
> On 12/09/2019 17:25, Linux for blind general discussion wrote:
> > On slint we have telegram-cli and although receiving functions work I'm
> > not certain sending functions work yet.  It is a new slint package
> > having first lived in slackbuilds repository so may not have been built
> > properly this last time.  Other distributions may have better compiled
> > versions of telegram-cli available.  It's worth checking.  You will need
> > a cell phone and to provide your cell phone number to telegram-cli to
> > set up an account since for future logins you'll use your username and
> > the provided login code.  The login code is sent to your cell phone and
> > you enter it on the computer to finish setting up your account.
> >
> > On Wed, 11 Sep 2019, Linux for blind general discussion wrote:
> >
> >> Date: Wed, 11 Sep 2019 22:42:15
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Linux for blind general discussion <blinux-list@redhat.com>
> >> Subject: Re: Comunicating from your Linux machine?
> >>
> >>> Telegram works fine here using emacs +emacspeak.
> >>>
> >>> Is there a specialized client you run to make that work, or can it run in
> >>> a
> >>> regular terminal? The Telegram app I saw was a graphical app, but I think
> >>> I
> >>> don't have something set properly, although I assume it's a qt5 app, and I
> >>> had Mumble qt5 working. I would prefer something that interfaces with
> >>> Pidgin, so I stick to the phone for Telegram, as I just didn't look hard
> >>> enough to find a Pidgin plugin, and Pidgin here seems to have trouble with
> >>> voice. That said, looking for telegram didn't yield a Pidgin plugin,
> >>> although I do recall seeing a text client, though it seems it was separate
> >>> from the "official" (air quotes there) client.
> >> ~Kyle
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >
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
