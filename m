Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 27196282CEC
	for <lists+blinux-list@lfdr.de>; Sun,  4 Oct 2020 21:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601838902;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eq5Jl1I9fHOxKO8l3XjcgGq9QfYmPJw+E2LcW043aWY=;
	b=Rxm2E0sBki344l6BVXmsLi1U2cxdlAF4XpuNJF7SYA/8XsLlcYYT60KEizzKBuPCdtHB6Z
	UhgYffGw6vBpn276CCTHkrLXZEMnRWm91SYDoM37RogBqN89UbdqBRo+SFN8YeNTU68Jna
	DD1vmuz+G8Mx1bIBiTi6TUcW8HhnHJA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-592-ear8xSKVN4eO6T-D7EmCog-1; Sun, 04 Oct 2020 15:14:59 -0400
X-MC-Unique: ear8xSKVN4eO6T-D7EmCog-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00C701005504;
	Sun,  4 Oct 2020 19:14:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4042773683;
	Sun,  4 Oct 2020 19:14:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF61718184AE;
	Sun,  4 Oct 2020 19:14:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 094JEnwM012215 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 4 Oct 2020 15:14:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 02F814C82F; Sun,  4 Oct 2020 19:14:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F176349C1A
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 19:14:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3254800161
	for <blinux-list@redhat.com>; Sun,  4 Oct 2020 19:14:45 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-230-K781oIQKMJCxlUYyvHL_Qg-1; Sun, 04 Oct 2020 15:14:44 -0400
X-MC-Unique: K781oIQKMJCxlUYyvHL_Qg-1
Received: by mail-qk1-f174.google.com with SMTP id q5so9385148qkc.2
	for <blinux-list@redhat.com>; Sun, 04 Oct 2020 12:14:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=8pEpdFJqbq8+uXFGr0He4iS4SEerRlrAh5r46CBhRr4=;
	b=UBf7+cRxJ6WyV7ZyvkStheXb7CD5TQlQeJctGGS+ADX471qu7149dF8JvVMSYnr4cQ
	0IxZ8ZoFd4eBXUNV+fhC76YhnJeVhkMRP8JXxmfGDoFNFoe95x4Npqd1r3WJVr1t++Sw
	vKB0d5vupzXy1uL/Qby5U2RH8FvcD2iI9g8QYvBO1S4DwoOI0SY5PAM3wAAXRxSxfPx7
	9AAUPlNKYK/jWIzIw2tz78TV+jigNtE1O95HvHfOL9axb9Lp4tgXLODJLg44+v4Ogmcy
	VvC2h6VUBEWxM9gixOJ6SPLUdecLpxjvBlR1bg8GHAw2RWMvUc9RH5Wsbku0RiQE5vFw
	ZySg==
X-Gm-Message-State: AOAM532W/b3fUaWRRocc3JXOipXGSRkVHmFuDxpljYI8ViC/JW7J7Og/
	TyCzSfdmtU41kxK5pmX7MYEjM4BddrFko+P73q4VB//b4Dg=
X-Google-Smtp-Source: ABdhPJwJT28R6kdcvSTg72HZyCh+y+d+ai8VKoNmglXFWElh0bxnk78rea5spWjvK6i5Is9o4z2dxYMxejZ6ZK0egUU=
X-Received: by 2002:a37:7687:: with SMTP id
	r129mr11136723qkc.264.1601838883405; 
	Sun, 04 Oct 2020 12:14:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:cd91:0:0:0:0:0 with HTTP;
	Sun, 4 Oct 2020 12:14:42 -0700 (PDT)
In-Reply-To: <20201004130414.6b75be74@bigbox.attlocal.net>
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
Date: Sun, 4 Oct 2020 19:14:42 +0000
Message-ID: <CAO2sX30sh2cLHnm3AUCRP2iYFByeCZ7SHxHrHwoZFw9RVJb5rg@mail.gmail.com>
Subject: Re: Console screenreaders
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

I've never used Tmux, but that sounds like a prime example of why I
prefer SBL's less chatty nature to espeakup. To give a similar example
with a program I use regularly, Nano defaults to having a title bar on
the top and a status bar on the third line from the bottom(the bottom
two lines are a command quick reference). Espeakup will read these
everytime they change, but SBL will only read them if I use screen
review to read them, and in most cases, I prefer not to hear what's on
those lines(the one exception I can think of where I would prefer
espeakup's chattier behavior is in the case of pressing ctrl+C, which
prints current position on the status line(I also often care about the
lines written when saving a file, but since I'm usually at the end of
a file when saving, I can usually just use caps+pageDown to read from
current position to end of screen instead of having to manully
navigate to the status line with caps and up/down arrows like I
usually have to do with current position since I usually do ctrl+c in
the middle of a file).

Admittedly, there are cases I wish I could switch between "read all
newly displayed text" and "read only what I tell you to read" on the
fly. I find the latter better for most things, but the former is nice
when playing text adventures.

-Jeffery

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

