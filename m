Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id B058B51CE1
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jun 2019 23:13:43 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D53CF5D688;
	Mon, 24 Jun 2019 21:13:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEA9460BE2;
	Mon, 24 Jun 2019 21:13:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 42C40206D1;
	Mon, 24 Jun 2019 21:13:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5OLAsn6023354 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jun 2019 17:10:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CC7215C231; Mon, 24 Jun 2019 21:10:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx09.extmail.prod.ext.phx2.redhat.com
	[10.5.110.38])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C811B5C22F
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 21:10:52 +0000 (UTC)
Received: from omta03.suddenlink.net (omta03.suddenlink.net [208.180.40.73])
	by mx1.redhat.com (Postfix) with ESMTP id 349DC2F8BF0
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 21:10:41 +0000 (UTC)
Received: from wb5agz ([47.217.105.76]) by dalofep03.suddenlink.net
	(InterMail vM.8.04.03.22.01 201-2389-100-168-20180813) with ESMTP
	id <20190624211035.OLZF21494.dalofep03.suddenlink.net@wb5agz>
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 16:10:35 -0500
Received: from martin by wb5agz with local (Exim 4.89)
	(envelope-from <martin.m@suddenlink.net>) id 1hfWEU-0000NO-Eu
	for blinux-list@redhat.com; Mon, 24 Jun 2019 16:10:34 -0500
To: blinux-list@redhat.com
Subject: Re: Some basic Pulseaudio Questions
MIME-Version: 1.0
Content-ID: <1448.1561410633.1@wb5agz>
Date: Mon, 24 Jun 2019 16:10:33 -0500
Message-Id: <E1hfWEU-0000NO-Eu@wb5agz>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at
	dalofep03.suddenlink.net from [47.217.105.76] using ID
	martin.m@suddenlink.net at Mon, 24 Jun 2019 16:10:35 -0500
X-CM-Analysis: v=2.3 cv=D8g51cZj c=1 sm=1 tr=0 cx=a_idp_d
	a=0S4FDTH59LdN14syvppWKg==:117 a=0S4FDTH59LdN14syvppWKg==:17
	a=kj9zAlcOel0A:10 a=dq6fvYVFJ5YA:10 a=rCz9TYPGAAAA:8
	a=_T8ICCRmsbcQOBZfVlQA:9 a=CjuIK1q_8ugA:10
	a=htF16OsI-vQvU-fgfJpQ:22
X-CM-Envelope: MS4wfO0cLd4lyEQWLofEOxhbVUga+x1z+rsaNbm0ovjdfEQ09fXcGm9Lwy7jqAJn5XMvVMPnj1AR9DConxTLuQfGsVGcHclWhuqEUpNIXVJ7lJo9PG7vgEQJ
	8cHSmsnIeqGoGWSoRiw97L1A5YYWpIpXZJ1Oa9AybYwtqKJRdtBLf+uT
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.38]); Mon, 24 Jun 2019 21:10:44 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]);
	Mon, 24 Jun 2019 21:10:44 +0000 (UTC) for IP:'208.180.40.73'
	DOMAIN:'omta03.suddenlink.net' HELO:'omta03.suddenlink.net'
	FROM:'martin.m@suddenlink.net' RCPT:''
X-RedHat-Spam-Score: 0  (SPF_HELO_NONE,
	SPF_PASS) 208.180.40.73 omta03.suddenlink.net
	208.180.40.73 omta03.suddenlink.net <martin.m@suddenlink.net>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.38
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 24 Jun 2019 21:13:42 +0000 (UTC)

	Thanks for a very good answer.  I didn't know about mpv
and what I have read so far sounds very good.

	I have been using mplayer for around 12 years and being a
fork of that, mpv has a similar feel

Shlomi Fish  writes:
> Note that ALSA can do multiplexed sound too. Moreover, please try
> https://mpv.io/ instead of mplayer.

	Multiplexed sound is what I am after more than anything
else as I run standard debian Linux and am thoroughly happy most
days with how it works.

	Strangely enough, the playback-only sound device on the
Raspberry pI will mix at least two streams without missing a
beat.  I was very surprised.

Martin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
