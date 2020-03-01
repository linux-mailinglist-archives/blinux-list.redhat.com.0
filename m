Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id A2431174EB5
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 18:31:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583083889;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uqqhIuXtgXhj5VAt6eDJD4qR8/qWR7gr/9iwWReJZis=;
	b=G4vin7G4/u9Xqav2uNpGiaXouPNgMhnh2JawGWtj/2+Wb12PelQtCfztpSeafl4jH7B9VN
	p6F5HnYpdghNEDIVJaqKv4yuRgUhp8yh1X/7Hf9slKjAHE9NPQ43C3ra47DtdsBBjv6NUA
	lyPbIXifqbvfDtzzClbDYssWzs8Exjc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-203-SkCfeeYdPFi0EWpVy6I0RQ-1; Sun, 01 Mar 2020 12:31:27 -0500
X-MC-Unique: SkCfeeYdPFi0EWpVy6I0RQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D6878017CC;
	Sun,  1 Mar 2020 17:31:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7399660BF3;
	Sun,  1 Mar 2020 17:31:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E9B8D84493;
	Sun,  1 Mar 2020 17:31:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021HV4o5032539 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 12:31:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6BEF510EE77F; Sun,  1 Mar 2020 17:31:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 676AB10EE77D
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 17:31:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B0388805A87
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 17:31:01 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-303-5lGMyQe0MtalwzVU3YGLhg-1; Sun, 01 Mar 2020 12:30:59 -0500
X-MC-Unique: 5lGMyQe0MtalwzVU3YGLhg-1
Received: from [68.190.112.237] (port=57098 helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1j8SQc-000CSE-GD
	for blinux-list@redhat.com; Sun, 01 Mar 2020 11:30:58 -0600
Date: Sun, 1 Mar 2020 11:30:57 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Want to try a GUI. Which one is best?
Message-ID: <20200301173057.GA14419@abilitiessoft>
References: <20200301111759.GA12551@abilitiessoft>
	<alpine.NEB.2.21.2003010712220.19233@panix1.panix.com>
	<CAO2sX310Obvpt=w1X=1+Tz7eWgXC5aiBz=53nond=1i0PpfSog@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX310Obvpt=w1X=1+Tz7eWgXC5aiBz=53nond=1i0PpfSog@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 021HV4o5032539
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello,

Thanks for all your suggestions. I have Debian Buster, command-line only. I may just wait until the next Debian testing is available and see if they include Mate. 
I 
will be using brltty, and no speech.

This leaves one concern in my original message for discussion. I want Debian to boot into the command-line, but I want to have a command or script for starting 
the GUI when I need it.

Thanks,
John J. Boyer <john.boyer@abilitiessoft.org>

On Sun, Mar 01, 2020 at 01:54:07PM +0000, Linux for blind general discussion wrote:
> Best I can tell, Mate 1.24 is currently available in both Debian
> Testing(aka Bull's Eye which will eventually become Debian 11) and
> Debian Unstable(aka Sid).
> 
> It's unlikely something as big as a new version of Mate will make it
> into Debian 9 aka Stretch or oldstable or Debian 10 aka Buster or
> Stable as Debian priortizes stability over cutting edge, though it
> might make it into backports(more likely for Buster than for Stretch,
> but I confess to not knowing how long Debian supports Oldstable when a
> new Stable is released).
> 
> That said, while Orca, the primary, and possibly only, graphical
> screen reader for Linux, is officially part of Gnome and persumably
> optimized for that environment, and probably works so well with Mate
> due to Mate's origins as a Gnome fork(as I understand it, Gnome 3
> brought many controversial changes to look and feel and Mate startedas
> a way to keep the Gnome 2.x look and feel in an updated environment),
> Orca should, in theory, be able to work with any GTK-based Desktop
> Environment or Window Manager, though anything QT-based(KDE chief
> among them) is currently a bit hit or miss.
> 
> Gnome or Mate might be the best options for a beginner as they're the
> most well documented DEs for using them with Orca, but Knoppix using a
> combination of LXDE and Orca when launching a full Desktop seems to
> work well, and I've heard people have had success with the ratpoison
> window Manager.
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

