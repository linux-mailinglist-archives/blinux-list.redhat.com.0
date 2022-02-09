Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7D74AFDA2
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 20:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644435941;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yrvER2EMN9ue5qnYdi3WSyy5Gx8c/2RoFDIE5XXK2rw=;
	b=dXBZFvE82jchkLcd7etEv3boX8QYuXJGxYfTMUioMOP1/jjw/hl2l1ixogpeIbA5j6X+KU
	vwE0C8y/7sTz52NipPpmcDkIUabpHoNhC9Re6GTmWQAzCPlxWkwiIpUTONIkNkHSqTOgvT
	67Iv+DUanrUV/WxWpxvm75+2/f4+b4k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-650-PM8KaSb1PI6GnFDk5N-HBw-1; Wed, 09 Feb 2022 14:45:38 -0500
X-MC-Unique: PM8KaSb1PI6GnFDk5N-HBw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7611C8143E5;
	Wed,  9 Feb 2022 19:45:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32CC012E00;
	Wed,  9 Feb 2022 19:45:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 47DFD1809CB8;
	Wed,  9 Feb 2022 19:45:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219JjTkT002400 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 14:45:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8DA821121335; Wed,  9 Feb 2022 19:45:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89DBB1121334
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 19:45:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3FA16899EC1
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 19:45:26 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-621-pP0CFzrCOy2wv5BPJ6AI_A-1; Wed, 09 Feb 2022 14:45:24 -0500
X-MC-Unique: pP0CFzrCOy2wv5BPJ6AI_A-1
Received: by mail-wr1-f43.google.com with SMTP id k1so5846296wrd.8
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 11:45:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=sgd154AT2+P+X4CoAAhVjmv2mCp2xf/vuSnqUbczCz4=;
	b=wWsBzx4RYHx1J5NZy4tV0Al6HrGlnPXRgB7bEuZzoY2mscqbyeASrGCnFZZ1s0wyi8
	pq/EFyUBlRgCM358n3lt8Ep2kfDS4PMH14w5UsPnQEEU/NOxh4YziQua+b5NISocmc0D
	KXWmf1Fx3xm+s65Z4UXscpSgEP6zCkDz1SIKAqcIHDy7/TGCrUtgMKYsO5F7xthPKajI
	DLTQbvOhoVu24X5SB9uIm+a8GrFFh+gQH/2UBu427ReWzJieAeaY20713lYYzrbBBqwO
	cFFlNEJL11ui7a/1ZU/F+1rf3dJM6tbcpA8SPg4l1YyKRQBvhSl+Ou3XcUjiHoTaICgf
	khiw==
X-Gm-Message-State: AOAM533TXJquu+WgIcKOW/RVrxppix/FNMXlDxY4juAehpZootdD0/wu
	TIxkKRIO+YfL1vPSexB41mVssQz6vzI=
X-Google-Smtp-Source: ABdhPJx5a/MT7vSFytBa3S9FM5tlRaGMKzxW1pw+Czjo7ndhvt3Kwyal9sT0JMDM9S1NYuY3hSAu3Q==
X-Received: by 2002:a05:6000:156d:: with SMTP id
	13mr3499878wrz.16.1644435923038; 
	Wed, 09 Feb 2022 11:45:23 -0800 (PST)
Received: from brandt-slint ([197.184.183.237])
	by smtp.gmail.com with ESMTPSA id
	a15sm5916136wri.22.2022.02.09.11.45.21 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Feb 2022 11:45:22 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.study.home>
Date: Wed, 9 Feb 2022 21:45:07 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
In-Reply-To: <CAO2sX30tkfHK=CR5Bz717rOKEYxyw5iXRiqfLW=BiYBtVAXffA@mail.gmail.com>
Message-ID: <8dc2aaf3-191a-b2f6-a4a2-0e55306d65@brandt-slint.study.home>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I personally don't need a lightweight Window Manager, 16 GB RAM in an I5 
machine from 2020 made sure of that one, but being the minimalist that I 
am, I hate wasting anything, that include resources I may have used for 
something else, even if that would be not using them to save the laptops 
battery.

I, for example, currently have the Rainbowstream Twitter client open in 
TTY1, mpv playing 
an internet station in TTY2 and this alpine in TTY3. I still have quite a few 
TTYs available for use, should I need them.

This is where a WM such as ratpoison would make your life easier, if, for 
example, you don't want to use the CLI based mpv media player, you could 
use VLC in an XSession, or Thunderbird for email in stead of alpine.

I could keep going, but I'll let things go here.

Whatever you like, use it! This is the beauty of running Linux, there's no 
one way to do something.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Wed, 9 Feb 2022, Linux for blind general discussion wrote:

> Date: Wed, 9 Feb 2022 16:04:19 +0000
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
>     besides ratpoison, which is great, btw
> 
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

