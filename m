Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2880028326E
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 10:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601887669;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J3dKr13iYNkoH0HoC9NP9U5FzVDmuVbgXfZddqKiQTU=;
	b=DadWrqoGG5CHk+yDrh1KgaIKJA8k/IZaDqWRH/Sj9hmTfMjVpKj/yWuNR83/E8MBhhOQFl
	vE22VqxtonSs1FNoc8qZRc+uRiq0opf+dNvp5gqIiIDatCFQhbzFZjHJppYlYnBJrBRzIK
	UYHb+bo4JtBn9B29GCwQkXeVjMHlVwU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-30-XuxS-NLSOeG8i58AI_Na_w-1; Mon, 05 Oct 2020 04:47:47 -0400
X-MC-Unique: XuxS-NLSOeG8i58AI_Na_w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB6F6186840B;
	Mon,  5 Oct 2020 08:47:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D988E9CBA;
	Mon,  5 Oct 2020 08:47:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B38F44A4A;
	Mon,  5 Oct 2020 08:47:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0958lTui004674 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 04:47:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9BB8E2157F23; Mon,  5 Oct 2020 08:47:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96D342166B28
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 08:47:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1500318AE949
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 08:47:27 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-480-mWmKpzEaNoyQGN768C7PpA-1; Mon, 05 Oct 2020 04:47:23 -0400
X-MC-Unique: mWmKpzEaNoyQGN768C7PpA-1
Received: by mail-qk1-f172.google.com with SMTP id q5so11070625qkc.2
	for <blinux-list@redhat.com>; Mon, 05 Oct 2020 01:47:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=JxZDIDz+Mo/MKc8oqq3GG/SNQBrqnmfVJhORPj4Tpr4=;
	b=T/wuXjKGS8sDdqBiluHVpHBsotwG93b7Cj9o7gsSDYA0/CdFSfxd6eHasqNLN8u+TX
	kYvPzV4eY6eh63MpO2TqCUbiCm/IssCnAwPCqUvjx7muBdlJQPm6bzqpX6+3FJ0lp8Xs
	fxJf8LI7oCljSVPjETwlD1O3JCcrbYQYFuFKN6tnXUDyD/Qxc+qE8ZTChtbPButq+g1G
	xs2m02FeqgY4c/MV7cMhSsuZNLZ7HItk8iCwkvrS8bQSmdn0yRLXZLKkai/weItEPRzz
	lM/CAW/f/jMx1fWMT67CM5tXksBBWNvRwi7ys9BXqm6jxkTa5mQmym7MbhwWjdNQjZu9
	nggQ==
X-Gm-Message-State: AOAM533OaK4m0Xy/L8pzQtjC5x9shQ22Gksdo4oLnsTdqASbAKc0M4jH
	yXrxrT2ihO0Ll09AL4P2nLTAhz1NVLuqdLrDcznZjzPO
X-Google-Smtp-Source: ABdhPJyuVSVuteztTnu0Bgxs0/oGqO/V4aFssDHrBsCkiuQkGBRSmU8wlkP+bNRFdVbr8tXkB3IoXVBucjxDsEdWYP8=
X-Received: by 2002:a37:480f:: with SMTP id v15mr13146943qka.279.1601887642767;
	Mon, 05 Oct 2020 01:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<87tuvf2km3.fsf@cmbmachine.messageid.invalid>
	<20201003130430.GA2173@rednote.net>
	<alpine.DEB.2.23.453.2010030632540.2247242@chime>
	<20201003100234.4f71a96d@bigbox.attlocal.net>
	<87y2knjmwe.fsf@cmbmachine.messageid.invalid>
	<20201004132601.GA9202@rednote.net>
	<20201004.134338.155.30@192.168.1.130>
	<20201004130414.6b75be74@bigbox.attlocal.net>
	<CAO2sX30sh2cLHnm3AUCRP2iYFByeCZ7SHxHrHwoZFw9RVJb5rg@mail.gmail.com>
In-Reply-To: <CAO2sX30sh2cLHnm3AUCRP2iYFByeCZ7SHxHrHwoZFw9RVJb5rg@mail.gmail.com>
Date: Mon, 5 Oct 2020 10:47:13 +0200
Message-ID: <CAPo=n--CSkWCtp0Vc-XW+JT9w2aU4T0h4dyMU0NF1wAwZh-JgA@mail.gmail.com>
Subject: Re: Console screenreaders
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

With Speakup you can turn the automatic reading of updated content on and
off with speakupkey+keypad-enter, or control+speakupkey+normal-enter.
Fenrir has a similar mechanism.

Regards,

Rynhardt

On Sun, 4 Oct 2020, 21:15 Linux for blind general discussion, <
blinux-list@redhat.com> wrote:

> I've never used Tmux, but that sounds like a prime example of why I
> prefer SBL's less chatty nature to espeakup. To give a similar example
> with a program I use regularly, Nano defaults to having a title bar on
> the top and a status bar on the third line from the bottom(the bottom
> two lines are a command quick reference). Espeakup will read these
> everytime they change, but SBL will only read them if I use screen
> review to read them, and in most cases, I prefer not to hear what's on
> those lines(the one exception I can think of where I would prefer
> espeakup's chattier behavior is in the case of pressing ctrl+C, which
> prints current position on the status line(I also often care about the
> lines written when saving a file, but since I'm usually at the end of
> a file when saving, I can usually just use caps+pageDown to read from
> current position to end of screen instead of having to manully
> navigate to the status line with caps and up/down arrows like I
> usually have to do with current position since I usually do ctrl+c in
> the middle of a file).
>
> Admittedly, there are cases I wish I could switch between "read all
> newly displayed text" and "read only what I tell you to read" on the
> fly. I find the latter better for most things, but the former is nice
> when playing text adventures.
>
> -Jeffery
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

