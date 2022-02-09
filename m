Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D2B4AF7D9
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 18:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644426623;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CUaobnY8UJZ8eXI9+JNvCQXHVwBHJG1W4q16XyLgMU8=;
	b=OVVwWZ076avdH34IB1oNQovKgY802bWi1GNpW6CSwcODn8MKHAL6jCCPKY4X2+DfPN7l2I
	Jq8quFp1KJtMEiSVDYxumaFl7LyFZ0marQAzrGhbtBp1h3p0+WAH8TC3EQPcQNUUZOSrGH
	VgACgfs5wYxwirQtNrQIv38+KYnYzac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-67-NumbzborNwWNDgKInXv0MQ-1; Wed, 09 Feb 2022 12:10:21 -0500
X-MC-Unique: NumbzborNwWNDgKInXv0MQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 67114802932;
	Wed,  9 Feb 2022 17:10:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97C9384D1C;
	Wed,  9 Feb 2022 17:10:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1245C1809CB8;
	Wed,  9 Feb 2022 17:10:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219HA6gk022119 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 12:10:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5F284112132E; Wed,  9 Feb 2022 17:10:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B3FD1121315
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 17:10:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35008185A79C
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 17:10:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-194-e3W3CK0-M1-rTzEgSFYmDw-1; Wed, 09 Feb 2022 12:10:00 -0500
X-MC-Unique: e3W3CK0-M1-rTzEgSFYmDw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jv5wR4MyjzGsW
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 12:09:59 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jv5wR4BkVzcbc; Wed,  9 Feb 2022 12:09:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jv5wR3rnhzcbC
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 12:09:59 -0500 (EST)
Date: Wed, 9 Feb 2022 12:09:59 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
In-Reply-To: <CAO2sX30tkfHK=CR5Bz717rOKEYxyw5iXRiqfLW=BiYBtVAXffA@mail.gmail.com>
Message-ID: <9559c617-742a-eb76-e2b6-f9339fcbefac@panix.com>
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
	<da2dd400-8055-3777-60a3-89c1b8a34df5@protonmail.com>
	<CAO2sX30tkfHK=CR5Bz717rOKEYxyw5iXRiqfLW=BiYBtVAXffA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
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

I think the solution is to get xfce accessible and combined with ratpoison
and strychnine on some of this old hardware there might be room for orca
to work well.


On Wed, 9 Feb 2022, Linux for blind general discussion wrote:

> I think the point of wanting an accessible ratpoison, i3, etc. setup
> is that Gnome and Mate are both fairly hefty environments in terms of
> resource usage, and Orca, if you'll pardon the pun, is a whale of a
> resource user itself while these alternative window managers are
> designed to be as lightweight as their creators could manage.
>
> One of Linux's appeals is breathing new life into old hardware, and
> there are many machines that would choke on modern Windows and could
> handle either Gnome/Mate or Orca, but can't handle both Gnome/Mate and
> Orca and still have enough resources left over for running apps with
> acceptable performance. And since the only real alternative to Orca is
> ditch the GUI and do everything in the console, the focus for putting
> an accessible desktop on old machines tends to be onstripping out
> unused parts of the desktop environment and switching the vital
> components to lighter weight alternatives.
>
> Also, as its name suggests, ratpoison is built from the ground up with
> a keyboard-only, no mouse setup in mind, and blind users tend to fall
> into the category of users who don't like using a mouse.
>
> Anyways, I myself am using the fast, light window manager(flwm)... but
> I can't really speak to its accessibility since my setup doesn't
> include anything remotely resembling a full desktop. Firefox is the
> only graphical application I use and I launch it via a script I did
> not write and understand next to nothing of how it works that
> basically gives me Firefox+orca running as a kiosk on top of
> flwm(though, while a true kiosk would prevent closing Firefox, on my
> setup, closing firefox ends the xsession and drops back to the
> console. The script uses compiz as its default Window manager, but
> changing which window manager it uses is the one thing I've figured
> out, and flwm was just the smallest window manager I tried that worked
> as a drop in replacement... and even then, Firefox+Orca are such a
> Behemoth and Leviathan combo that some websites(or having many tabs
> open) slow my 4GB Ram, i7 20-something-hundred machine to a crawl(My
> system drive being platter based probably doesn't help matters
> either).
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

