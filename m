Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D6F0825A271
	for <lists+blinux-list@lfdr.de>; Wed,  2 Sep 2020 02:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1599007797;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aSoY0LgoHyGoTdCYMLd0IEgLHKxh54XouYt8/86fKYU=;
	b=i2fb1J+yigGcdWQ3AfsZNfLRbv/4FYzP5MIdH2VL65/9K9tXOaXK7f2C7iJfphlj42B5jM
	dQ9saCvnzmr2JXRCzXQtm0IdOPaQ1OT5zqf3HhIGrDDudj3cZdILMMvfAPF2j89hsP4jfa
	e3TFXhVTWTZhgiebrGs6rtQfJMFrugw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-YfKIxLkUPwGUmlSwZoOQ5Q-1; Tue, 01 Sep 2020 20:49:55 -0400
X-MC-Unique: YfKIxLkUPwGUmlSwZoOQ5Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3B3E1DDF6;
	Wed,  2 Sep 2020 00:49:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7303B76E01;
	Wed,  2 Sep 2020 00:49:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A6F7B79A3D;
	Wed,  2 Sep 2020 00:49:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0820nVAq021496 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Sep 2020 20:49:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DCC17201EF59; Wed,  2 Sep 2020 00:49:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6266202450A
	for <blinux-list@redhat.com>; Wed,  2 Sep 2020 00:49:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 865C3811E76
	for <blinux-list@redhat.com>; Wed,  2 Sep 2020 00:49:28 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-353-TsP8VMl_OqueM8u1WYVX2g-1; Tue, 01 Sep 2020 20:49:25 -0400
X-MC-Unique: TsP8VMl_OqueM8u1WYVX2g-1
Received: by mail-io1-f65.google.com with SMTP id h4so4018600ioe.5
	for <blinux-list@redhat.com>; Tue, 01 Sep 2020 17:49:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2VNPO8zUrg0YDYzG5uU7mXID0/UXh7XpW6lb/305DNo=;
	b=GWaGOzstW0sSCOm4s+c7RMO2zvo88dSz4aOnRtCqj0YzOdpIt9RNRzvSOwrdzof+XG
	d20b1V5SQyG5mP8smKbfF9p4S9s/3bLE7NijlHEvu7KE93ftDl/NiHWIOEapIX8EJN6S
	8WG5kJuZsNwewcBkL2rdAs9yqqZz4l22cZZIkxCJLeCRTfo+HQn0W13CYBB7xtGMq08C
	hLJhXjZ2D+vdPGZjMR1DkWILBd5LgBvcjEBaFPwS8p8MGBR1Pv1I+eTUo0ofzR+YglXN
	aZuf9h+kEeEkVPxEzEgjgm0gXgmoYA9ho17hbZPCqvZx10G6dSu+PUsB50SJrnmVsabw
	KjcQ==
X-Gm-Message-State: AOAM531Q80DZGhnWYYves3n+/ZlPNY8XKUUyjmRu1nZP78tOPHJzkEfr
	GESlVO8ck+drS3nwS+n7OY6qPFEQ7XvdLw==
X-Google-Smtp-Source: ABdhPJzkYvL6rslwpNS9BM/ah30yRSEH5kyU170GnbbDJCa1s8s5Yd6pRwfvANFJ2H5EyDMKrnGH/Q==
X-Received: by 2002:a02:2b22:: with SMTP id h34mr806519jaa.57.1599007764650;
	Tue, 01 Sep 2020 17:49:24 -0700 (PDT)
Received: from ?IPv6:2601:249:c000:3ca0:c510:a9d:edb3:4371?
	([2601:249:c000:3ca0:c510:a9d:edb3:4371])
	by smtp.gmail.com with ESMTPSA id
	y19sm1395310ili.47.2020.09.01.17.49.23 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 01 Sep 2020 17:49:23 -0700 (PDT)
Subject: Re: FYI: PinePhone community edition for Manjaro
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <51090E19-5D47-4439-B62C-1CF068A75451@cfcl.com>
	<6ac837df-d42f-02dc-9e60-cc14d3c552c6@gmail.com>
	<BE741911-CF77-4532-9486-242ED63B578D@cfcl.com>
Message-ID: <5ef5c3c0-17a7-11c2-4800-0179dadbbfde@gmail.com>
Date: Tue, 1 Sep 2020 20:49:22 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <BE741911-CF77-4532-9486-242ED63B578D@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Would be good to know when you get the device I was wanting to get one 
my self but wasn't sure of the options for accessibility.

On 31-Aug-20 21:21, Linux for blind general discussion wrote:
>> Someone asked:
>>
>> What does the OS look like?
> Erm, it's complicated?
>
> # Background
>
> Most Linux systems are going to run the X Window System (aka X11) or some descendant
> such as Wayland.  However, this mostly defines "mechanism, not policy".  So, each app
> (including the window system) gets to decide how to lay out its portions of the screen.
>
> This begs the question "What portion(s) of the screen does an app own?"  It varies,
> but AFAIK each app normally pretends that it owns zero or more rectangular areas, on
> some screen or screens.  In reality, most window systems use overlapping windows, so
> portions of the underlying windows may be obscured from the sighted user.  However,
> the app typically ignores such considerations; it's up to the user to make sure that
> they don't hide critical information.  Window systems are a bit special; they own a
> set of rectangles corresponding to the physical screens, minus the portions taken up
> by the subsidiary apps.
>
> The appearance of each app's area, in any event, is up to the app and the libraries
> it uses.  More to the point to a blind user, however, is the fact that most apps use
> the libraries to define the behavior of common widgets.  I presume that typical screen
> readers interact with these widgets; does anyone here know some details about this?
>
> Finally, some apps (such as web browsers) use internal forms of interpretation that
> a screen reader can access.  So, for example, it might get information from CSS,
> HTML, and perhaps JavaScript.
>
> # Options
>
> Any major Linux variant (e.g., Alpine, Arch, Debian) will support a variety of window
> systems.  Descendant variants may also add their own; for example Puri.sm's Phosh (for
> "phone shell") is quite popular among mobile Linux operating systems.  That said, most
> variants will have some default standards; other window systems may receive less care.
>
> So, for example, Official Editions of Manjaro include Architect, Gnome, KDE, and XFCE.
> Community Editions include Awesome, bspwm, Budgie, Cinnamon, Deepin, i3, LXDE, LXQt,
> MATE, and Openbox.
>
> All told, however, Manjaro supports 13 (!) "Desktop Environments and Window Managers (https://wiki.manjaro.org/index.php?title=Desktop_Environments_and_Window_Managers):
> Awesome, Budgie, Cinnamon, Deepin, Enlightenment, Gnome, i3, KDE, LXDE, LXQt, MATE,
> Openbox, XFCE.  I've heard good things about MATE's accessibility, but I'm not any
> sort of expert.
>
>> Does it have swiping gestures or how is the setup?
> Given the number of options cataloged above, the best answer may be "it depends".  In
> any case, this isn't a question I can answer.
>
> Rich Morin (rdm@cfcl.com)
>
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

