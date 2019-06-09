Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C78633A400
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2019 08:14:55 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2AD0A59468;
	Sun,  9 Jun 2019 06:14:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8BC360BE5;
	Sun,  9 Jun 2019 06:14:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 251C41806B18;
	Sun,  9 Jun 2019 06:14:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x596EcI3005433 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 9 Jun 2019 02:14:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CD5FE5F9C2; Sun,  9 Jun 2019 06:14:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx08.extmail.prod.ext.phx2.redhat.com
	[10.5.110.32])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C83D95F9B5
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 06:14:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 71C08C057F3B
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 06:14:35 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 45M5Zb4dSHz1Hx4
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 02:14:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 45M5Zb2jtSzcbR; Sun,  9 Jun 2019 02:14:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 45M5Zb2M77zcbQ
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 02:14:31 -0400 (EDT)
Date: Sun, 9 Jun 2019 02:14:31 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Audio Recording
In-Reply-To: <20190609.055021.701.16@[192.168.1.181]>
Message-ID: <alpine.NEB.2.21.1906090212360.20043@panix1.panix.com>
References: <20190609.052602.869.15@[192.168.1.181]>
	<alpine.NEB.2.21.1906090142180.26372@panix1.panix.com>
	<20190609.055021.701.16@[192.168.1.181]>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.32]); Sun, 09 Jun 2019 06:14:35 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]);
	Sun, 09 Jun 2019 06:14:35 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.32
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Sun, 09 Jun 2019 06:14:54 +0000 (UTC)

I think alsa-utils package has it but try apt-file search aarecord to
see.  I'm on slint now so would have actually have run that command on
debian for you myself.

On Sun, 9 Jun 2019, Linux for blind general discussion wrote:

> Date: Sun, 9 Jun 2019 01:50:21
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Audio Recording
>
> That program doesn't seem to be in the repos for debian.
> Where do I find it?
>
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Sun, 9 Jun 2019 01:43:51 -0400
> Subject: Re: Audio Recording
>
> > On cli I'm using aarecord with some parameters so we don't record a .wav
> > file since size is limited.  The wav file you can record you can use to
> > verify your microphone's volume once you listen to the recording.
> >
> > On Sun, 9 Jun 2019, Linux for blind general discussion wrote:
> >
> > > Date: Sun, 9 Jun 2019 01:26:02
> > > From: Linux for blind general discussion <blinux-list@redhat.com>
> > > To: blinux-list@redhat.com
> > > Subject: Audio Recording
> > >
> > > What are we using for audio recording on linux these days. In the gui. Is audacity still the best one from an a11y standpoint? How about CLI?
> > > I'm interested in recording from line-in so I can archive some of my tapes.
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> > --
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
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
