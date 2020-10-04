Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 34ED3282C9D
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 20:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601837705;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b6fL0d3q8QpxTW01QwJ48J2nuuj3x4dZISg30SgPqdU=;
	b=CkCs1XE6YYr2m+LQVi7rvi7pnDsHhx3J+vS/CxcuKpoYb4ksSU6vlrtb5N4FFFFe3Y6Ewr
	t/qM/oiM7mIQvgWrZPa1upbMqtSFj8LCODmpPh5YefypEtyG0ThUaoNdrEVrdvulDGPcu6
	ONGlmpkbiPDe9HBkxYME0b0HBEEmAkc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-s5n7o-OSOias9rQotBw7sA-1; Sun, 04 Oct 2020 14:55:03 -0400
X-MC-Unique: s5n7o-OSOias9rQotBw7sA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D735107465A;
	Sun,  4 Oct 2020 18:54:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B30F7AEC4;
	Sun,  4 Oct 2020 18:54:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1360244A48;
	Sun,  4 Oct 2020 18:54:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094IqpdT010298 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 14:52:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1108E2166B44; Sun,  4 Oct 2020 18:52:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C1442166B28
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 18:52:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DFA3800CAF
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 18:52:47 +0000 (UTC)
Received: from gateway9.unifiedlayer.com (gateway9.unifiedlayer.com
	[74.220.192.195]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-388-qSU1Z75dPR2YqaMlyvHbKA-1; Sun, 04 Oct 2020 14:52:45 -0400
X-MC-Unique: qSU1Z75dPR2YqaMlyvHbKA-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway9.unifiedlayer.com (Postfix) with ESMTP id 085A3200992B3
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 13:04:16 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id P8Mpk7xJEDhm0P8Mpk2kBl; Sun, 04 Oct 2020 13:04:15 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:37853 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kP8Mp-002j6r-LX
	for blinux-list@redhat.com; Sun, 04 Oct 2020 13:04:15 -0500
Date: Sun, 4 Oct 2020 13:04:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
Message-ID: <20201004130414.6b75be74@bigbox.attlocal.net>
In-Reply-To: <20201004.134338.155.30@[192.168.1.130]>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
	<20201003130430.GA2173@rednote.net>
	<alpine.DEB.2.23.453.2010030632540.2247242@chime>
	<20201003100234.4f71a96d@bigbox.attlocal.net>
	<87y2knjmwe.fsf@cmbmachine.messageid.invalid>
	<20201004132601.GA9202@rednote.net>
	<20201004.134338.155.30@[192.168.1.130]>
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
X-Exim-ID: 1kP8Mp-002j6r-LX
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:37853
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Agreed, the hard-status line tends to be a bit interrupty.  If you
choose to use tmux, you can

  <prefix>:set -g status off

or put "set -g status off" in your ~/.tmux.conf

I can then use

  $ tmux list-windows

and

  $ tmux list-panes

to get further information about what windows/panes I have available
in any configuration (this information is in the default status bar
along with the clock, but the contant repainting of the status bar
gets chatty).

I suspect there is similar functionality in GNU screen.

-tim




On October  4, 2020, Linux for blind general discussion wrote:
> One of them is probably hardstatus. But yes, do share.
> Rob
> 
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Sun, 4 Oct 2020 09:26:01 -0400
> Subject: Re: Console screenreaders
> 
> > I'm a heavy user of GNU screen myself. Can't imagine my console
> > life without it. I especially like the ability to detach and
> > reattach a running screen session.
> > 
> > 
> > There are a couple settings one can apply to make screen a bit
> > more friendly for TTS screen reading. I don't remember them off
> > the top of my head. If someone asks, I should be able to dig them
> > out of my .screenrc.
> > 
> > Best,
> > 
> > Janina
> > 
> > Linux for blind general discussion writes:  
> > > Linux for blind general discussion <blinux-list@redhat.com>
> > > writes: 
> > > > Tim here.  If you need a larger cut-and-paste buffer, I
> > > > strongly suggest tinkering with a terminal multiplexer like
> > > > either tmux or GNU screen.  I use tmux primarily for the
> > > > multiplexing, split windows, the ability to detach &
> > > > reattach, and the silence/activity monitoring. But as an
> > > > added benefit, I can set my scroll-back buffer-size to
> > > > thousands of lines letting me copy/paste from it, even if my
> > > > actual terminal is only 80 by 25.  
> > > 
> > > When I've tried tmux, I've found oddities that made it slightly
> > > less pleasant to use with a console screen reader.  I know in
> > > my case the split windows and status bars etc are not wanted.
> > > I wonder if anyone has tried to work out screen-reader-friendly
> > > configurations.  I haven't; GNU Screen has been good enough for
> > > me, and I've used it for many years.
> > > 
> > > -- Chris
> > > 
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://www.redhat.com/mailman/listinfo/blinux-list  
> > 
> > -- 
> > 
> > Janina Sajka
> > https://linkedin.com/in/jsajka
> > 
> > Linux Foundation Fellow
> > Executive Chair, Accessibility Workgroup:	http://a11y.org
> > 
> > The World Wide Web Consortium (W3C), Web Accessibility Initiative
> > (WAI) Co-Chair, Accessible Platform Architectures
> > http://www.w3.org/wai/apa
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> > 
> >   
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

