Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFA651E23
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jun 2019 00:21:31 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 157714E938;
	Mon, 24 Jun 2019 22:21:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E93061001B05;
	Mon, 24 Jun 2019 22:21:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 63A1B1806B18;
	Mon, 24 Jun 2019 22:21:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5OMKx9J020135 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jun 2019 18:20:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AE5BF5B68F; Mon, 24 Jun 2019 22:20:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx01.extmail.prod.ext.phx2.redhat.com
	[10.5.110.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A971B5B68E
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 22:20:57 +0000 (UTC)
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de
	[134.119.228.111])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 998B781F31
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 22:20:43 +0000 (UTC)
Received: from [84.57.117.238] (helo=[192.168.2.111])
	by smtprelay08.ispgateway.de with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <chrys@linux-a11y.org>) id 1hfXKE-0005N5-MR
	for blinux-list@redhat.com; Tue, 25 Jun 2019 00:20:34 +0200
Mime-Version: 1.0 (1.0)
Date: Tue, 25 Jun 2019 00:20:34 +0200
Subject: Re: Some basic Pulseaudio Questions
Message-Id: <8DD43559-5653-4F0B-957D-DD13814C2CF1@linux-a11y.org>
References: <E1hfWEU-0000NO-Eu@wb5agz>
In-Reply-To: <E1hfWEU-0000NO-Eu@wb5agz>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.25]); Mon, 24 Jun 2019 22:20:53 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]);
	Mon, 24 Jun 2019 22:20:53 +0000 (UTC) for IP:'134.119.228.111'
	DOMAIN:'smtprelay08.ispgateway.de'
	HELO:'smtprelay08.ispgateway.de' FROM:'chrys@linux-a11y.org'
	RCPT:''
X-RedHat-Spam-Score: -0.7  (RCVD_IN_DNSWL_LOW, SPF_HELO_PASS,
	SPF_NONE) 134.119.228.111 smtprelay08.ispgateway.de
	134.119.228.111 smtprelay08.ispgateway.de
	<chrys@linux-a11y.org>
X-Scanned-By: MIMEDefang 2.83 on 10.5.110.25
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x5OMKx9J020135
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Mon, 24 Jun 2019 22:21:29 +0000 (UTC)

Howdy my friend,

fenrir ships by default a script to configure pulse for its usage if you want to have the full power Pulse. Fenrir does not belong to an kernel module and is just userspace based. I would not use my kernel al Audioplayer as well XD. I think the concept is dated.

Cheers chrys

> Am 24.06.2019 um 23:10 schrieb Linux for blind general discussion <blinux-list@redhat.com>:
> 
>    Thanks for a very good answer.  I didn't know about mpv
> and what I have read so far sounds very good.
> 
>    I have been using mplayer for around 12 years and being a
> fork of that, mpv has a similar feel
> 
> Shlomi Fish  writes:
>> Note that ALSA can do multiplexed sound too. Moreover, please try
>> https://mpv.io/ instead of mplayer.
> 
>    Multiplexed sound is what I am after more than anything
> else as I run standard debian Linux and am thoroughly happy most
> days with how it works.
> 
>    Strangely enough, the playback-only sound device on the
> Raspberry pI will mix at least two streams without missing a
> beat.  I was very surprised.
> 
> Martin
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
