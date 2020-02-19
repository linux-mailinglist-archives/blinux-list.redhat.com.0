Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 688501645AD
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 14:37:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582119435;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kR8tigV80QL3d9pbx4BOpO3JUl0TMLQFCYTsxDSaS0s=;
	b=GP6g6Bj/4MtuL9WnFnIWSYLXWlxjYNftt89C54SEmjTgtGppSjy4tOLiKhTKi1SQhzaFAN
	86jzEdmaWe1dZanM9QEqb9n3DSsLSMaqPF7HYBMuqv6Hsqz9mld5bCSZ6kovIWt1w+8KaP
	wNCNweBwbgFX+aBaVuzmPEYV6Gt5gu8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-WNz7dCfMNxmifPBiPt830Q-1; Wed, 19 Feb 2020 08:37:13 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1E7F107ACC5;
	Wed, 19 Feb 2020 13:37:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA76360BE2;
	Wed, 19 Feb 2020 13:37:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 174E135B14;
	Wed, 19 Feb 2020 13:37:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JDb0wL007220 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 08:37:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B029210F1BE1; Wed, 19 Feb 2020 13:37:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AAD611004C6C
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 13:36:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 525A6802A56
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 13:36:58 +0000 (UTC)
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-12-vDNRjbRlPAKz-YiorHwasA-1; Wed, 19 Feb 2020 08:36:55 -0500
Received: by mail-oi1-f195.google.com with SMTP id l136so23805319oig.1
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 05:36:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=MZUHWMF6KdsgnI6c37nzx8+yhsawCEbfNSkdB9NjWpI=;
	b=tGxFsjwZJj2pSLS8RjY4P/AgXJcgB56ggp583tRPeuOf/RNV0NeMLi7dW/+MIzyJpB
	00GcziXIn8W4JKckTNTt7YVVV0RtJHCgwiYmZCww2H9JEMDRnvgvsDJGvqdzKFrDf1eD
	KQdFcFE8DC5cJRX5+LBQoHnc28bnt/F68gfOAuDLD6KBTF9gE7c1jWnYJOwE2RwIwEE3
	7HEx6+mbZtZjqOse0RX2pQKtIU2a+iFIvTarJOHwLfC7p8Ymga/jWJqnvdRJBLs0k87Y
	Ql4DkmXo0JPN17RKAfzWRaCMBs/BHchLpPmmpsSbmm2R9oV/jwxPhjAk8X/Q05jqLoXB
	a9+Q==
X-Gm-Message-State: APjAAAXJiVyD7/IkmpIDbs1sVzjU8ZewCI5/cVPpMwBkpUiLmbAnqzE0
	kgl2p36H61Oam7fPY9jU+64LopI9pQLDXLuM8mpvbg==
X-Google-Smtp-Source: APXvYqzc06WHE+/mZDISnrmR/OYchYyoLuQgEAa/4YtOVhTaGHurfeYxpoZjWJqLR9G+toThc+k+MqHb2YnviLqItF4=
X-Received: by 2002:aca:3805:: with SMTP id f5mr4608169oia.6.1582119414454;
	Wed, 19 Feb 2020 05:36:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:12f0:0:0:0:0:0 with HTTP; Wed, 19 Feb 2020 05:36:53
	-0800 (PST)
In-Reply-To: <alpine.NEB.2.21.2002190638280.12705@panix1.panix.com>
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
	<alpine.NEB.2.21.2002190638280.12705@panix1.panix.com>
Date: Wed, 19 Feb 2020 13:36:53 +0000
Message-ID: <CAO2sX33jnkXBT+OegeKWhN4NY3U30XnJpWEOzbChxmm5RboFMg@mail.gmail.com>
Subject: Re: early warning I hope
To: blinux-list@redhat.com
X-MC-Unique: vDNRjbRlPAKz-YiorHwasA-1
X-MC-Unique: WNz7dCfMNxmifPBiPt830Q-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JDb0wL007220
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

Speaking as the one who first mentioned Knoppix, I thought I did a
decent job of admitting it's shortcomings... most of which have little
to do with accessibility and everything to do with it being intended
as a live-only distro... Though, for what it's worth, it's the only
live distro I can remember hearing of that can be booted from DVD and
come up talking without any user input(though again, since the CD
edition was discontinued, such has required a bit of micro remastering
starting from the official images, which I fully confess isn't the
most newbie friendly thing to do). My running system is based on a
hard drive install of Knoppix despite all the reasons not to do so,
but I find SBL's screen navigation super intuitive whereas espeakup's
makes me wonder if that's how someone who grew up in the era of the
GUI feels when they encounter their first command prompt as an adult,
plus I like being able to launch Firefox without launching a full
desktop and having good, old LXDE waiting for me on the rare occasions
I need a full desktop. Would gladly switch to vanilla Debian if I had
any clue how to get SBL running as default console screen reader and
could figure out launching a single application graphical session with
orca. As for the stability of my setup, I take full responsibility for
most of the breakages that force me to boot Knoppix from DVD and
restore my root partition from backup and the fact I don't create such
backups nearly as often as I should, but then again, I'm a bit of an
incessant tinker.

Overly long commentary on my chosen distro aside, I think an important
point to remember here is that many of us are experienced Linux users
and were so prior to having any reason to care about Linux
accessibility. Much of what we consider straight forward and intuitive
might seem intimidating to a Linux oldbie suffering sight loss, or
downright terrifying to a blind user dipping their toes in Linux for
the first time(and I realize this list has both, but I'd expect those
groups to be asking about accessible distros rather than giving
opinions thereof), and speaking more generally, what seems obvious and
intuitive to an insider on any subject can be downright esoteric to an
outsider looking in.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

