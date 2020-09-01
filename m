Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5B027258517
	for <lists+blinux-list@lfdr.de>; Tue,  1 Sep 2020 03:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598923340;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3NLkq77Aj8eBGugtHB9NHhwbqm8tGMAOWgGLol/a6jw=;
	b=CN3VL8ECYNLiQui/jYuJK4Y+aCTbpBDifkP5hZsKjeMs4wUV1FDEX6HPdo6EjBNfrUUQU/
	6oEcoJSLsiEK2ZOIj7bbd4BpPda1yGhhoRS3YMFLVCQk04EqVf4h9T6oC8yRm4XGeu+Ezy
	Zq+1Kde+InHNKccOy0LiUfuc0udwcaw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-7qoGO_mmNxC5SZVPL1QzNQ-1; Mon, 31 Aug 2020 21:22:16 -0400
X-MC-Unique: 7qoGO_mmNxC5SZVPL1QzNQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B0E210054FF;
	Tue,  1 Sep 2020 01:22:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C12560C15;
	Tue,  1 Sep 2020 01:22:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF1F918A0C24;
	Tue,  1 Sep 2020 01:22:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0811M0A4015753 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 31 Aug 2020 21:22:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1126D2166B28; Tue,  1 Sep 2020 01:22:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D47C2166B44
	for <blinux-list@redhat.com>; Tue,  1 Sep 2020 01:21:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B02D7811E76
	for <blinux-list@redhat.com>; Tue,  1 Sep 2020 01:21:57 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-373-kDiKeClUMEKbszee5T20uw-1; Mon, 31 Aug 2020 21:21:55 -0400
X-MC-Unique: kDiKeClUMEKbszee5T20uw-1
Received: from spot.local (spot.local [IPv6:fe80::108f:61b6:e9ea:e7ae])
	by cfcl.com (Postfix) with ESMTP id 75BCD1402554
	for <blinux-list@redhat.com>; Mon, 31 Aug 2020 18:21:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: FYI: PinePhone community edition for Manjaro
Date: Mon, 31 Aug 2020 18:21:47 -0700
References: <51090E19-5D47-4439-B62C-1CF068A75451@cfcl.com>
	<6ac837df-d42f-02dc-9e60-cc14d3c552c6@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <6ac837df-d42f-02dc-9e60-cc14d3c552c6@gmail.com>
Message-Id: <BE741911-CF77-4532-9486-242ED63B578D@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0811M0A4015753
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.503
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> Someone asked:
> 
> What does the OS look like?

Erm, it's complicated?

# Background 

Most Linux systems are going to run the X Window System (aka X11) or some descendant
such as Wayland.  However, this mostly defines "mechanism, not policy".  So, each app
(including the window system) gets to decide how to lay out its portions of the screen.

This begs the question "What portion(s) of the screen does an app own?"  It varies,
but AFAIK each app normally pretends that it owns zero or more rectangular areas, on
some screen or screens.  In reality, most window systems use overlapping windows, so
portions of the underlying windows may be obscured from the sighted user.  However,
the app typically ignores such considerations; it's up to the user to make sure that
they don't hide critical information.  Window systems are a bit special; they own a
set of rectangles corresponding to the physical screens, minus the portions taken up
by the subsidiary apps.

The appearance of each app's area, in any event, is up to the app and the libraries
it uses.  More to the point to a blind user, however, is the fact that most apps use
the libraries to define the behavior of common widgets.  I presume that typical screen
readers interact with these widgets; does anyone here know some details about this?

Finally, some apps (such as web browsers) use internal forms of interpretation that
a screen reader can access.  So, for example, it might get information from CSS,
HTML, and perhaps JavaScript.

# Options

Any major Linux variant (e.g., Alpine, Arch, Debian) will support a variety of window
systems.  Descendant variants may also add their own; for example Puri.sm's Phosh (for
"phone shell") is quite popular among mobile Linux operating systems.  That said, most
variants will have some default standards; other window systems may receive less care. 

So, for example, Official Editions of Manjaro include Architect, Gnome, KDE, and XFCE.
Community Editions include Awesome, bspwm, Budgie, Cinnamon, Deepin, i3, LXDE, LXQt,
MATE, and Openbox.

All told, however, Manjaro supports 13 (!) "Desktop Environments and Window Managers (https://wiki.manjaro.org/index.php?title=Desktop_Environments_and_Window_Managers):
Awesome, Budgie, Cinnamon, Deepin, Enlightenment, Gnome, i3, KDE, LXDE, LXQt, MATE,
Openbox, XFCE.  I've heard good things about MATE's accessibility, but I'm not any
sort of expert.

> Does it have swiping gestures or how is the setup?

Given the number of options cataloged above, the best answer may be "it depends".  In
any case, this isn't a question I can answer.

Rich Morin (rdm@cfcl.com)



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

