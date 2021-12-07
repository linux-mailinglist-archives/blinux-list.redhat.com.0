Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0664346C864
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 00:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638920879;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q8nkXuYtroQV6PQ/A0M9Valmh0yuHlIGy/4wbb2P2Ng=;
	b=HE5agP1B9NjZemrIITv2Ni3+voKcufgNN2pFXtVsIRstEdFqAlamKcuI7qnsv/aUEhMtxp
	N6zArlNHUReK7M9LU5OrfzEILZMJdJd02TG3aUEDGoDhAvlt4UBOa54R9g9xo1YsJqATlJ
	RBWwrn9r5vTK/pCTveZsNpt3E1K5FQM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-182-XBpTAUkaP0qB4C-mkiysWg-1; Tue, 07 Dec 2021 18:47:55 -0500
X-MC-Unique: XBpTAUkaP0qB4C-mkiysWg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEDB71023F56;
	Tue,  7 Dec 2021 23:47:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 340E51972E;
	Tue,  7 Dec 2021 23:47:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 777B81809CB8;
	Tue,  7 Dec 2021 23:47:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B7NlhdU018632 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 7 Dec 2021 18:47:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6E09A492CA4; Tue,  7 Dec 2021 23:47:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 693F1492CA3
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 23:47:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F44E1C13D5C
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 23:47:43 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-263-qZtfEadcMqqXm4YyqwAUtA-1; Tue, 07 Dec 2021 18:47:41 -0500
X-MC-Unique: qZtfEadcMqqXm4YyqwAUtA-1
Received: by mail-qt1-f172.google.com with SMTP id m25so748472qtq.13
	for <blinux-list@redhat.com>; Tue, 07 Dec 2021 15:47:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=iXFn5h6ffowgdDbO0wyVtROqRaIJQ9cb4lqm4oH5xtc=;
	b=6jU5IvEfxG6lRLo+mUUNxzIZfwpHcwxEI6DtzU9Gqa+HxdakJlH3cOzLAMDLXb+HQ7
	2zPPfQjpRwU2e9TQXylD73KkZPUX4OWhYpkeQIRxWclUZ6uRLmS4IeBpaV8I7c2ng0a9
	mtzwqxcmk6JRG/Tk5nHmdWCLGk3SwQbq67RVkYUlGcTyUcQi0pQWOPmZjNsMDvTfNrMg
	pXOGu/0eGanQCSVkeJ/Q4lRtyw0qdFgB8asG8j0VsK7TlNCmKCVqa9PYZyws1euAOmNy
	7dZITS6340kPf4APcUWEDFWwUXuRVGqhCv6S/MOZl9Dj6GviQDB0H+VWl26Vu4i/3bHS
	e2gw==
X-Gm-Message-State: AOAM532mJTp3Ns0TK2k4si1nS9A44ExtyxNzA/XhATe6R51e8GFaX0Jl
	4B4dFcPtj4N0b8KqjfIASy/lzrjCFWmtFWEs4pqqJudF
X-Google-Smtp-Source: ABdhPJwJFQAqvVPlOOEFAH6VnmBpjXPOYgubXOVra57I7SkumHnPzJqTK3YHJ+DfFggy+l5Zdgwp47G2JRuzlFyLHns=
X-Received: by 2002:a05:622a:391:: with SMTP id
	j17mr3622840qtx.228.1638920860892; 
	Tue, 07 Dec 2021 15:47:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP;
	Tue, 7 Dec 2021 15:47:40 -0800 (PST)
In-Reply-To: <e6a251f6-5a33-b88c-6bc4-b26dabcc4d9d@gmail.com>
References: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
	<CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
	<e6a251f6-5a33-b88c-6bc4-b26dabcc4d9d@gmail.com>
Date: Tue, 7 Dec 2021 23:47:40 +0000
Message-ID: <CAO2sX32V3Qw88EgrBFWTTr7WaVkusPC6bfgYTqyfwk-jbw0ioQ@mail.gmail.com>
Subject: Re: Other lightweight WM?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

According to Aptitude, jwm is 351k uncompressed while flwm is only
124k. Flwm also has fewer dependencies, though admittedly, most of
jwm's dependencies are already installed on my system(probably
depended on by xserver-xorg-core, Firefox-esr, or Orca either directly
or indirectly), though switching to jwm would require me to install a
terminal emulator.

And ctrl+Q to quit Firefox works in flwm, but I'm pretty sure that's
an application level hotkey, not a window manager level hotkey. Not
that I ever use it deliberately(my preferred means of closing Firefox
is using ctrl+w on the last tab, I mainly use ctrl+delete for getting
a count of open tabs via the You have n tabs open are you sure you
want to quit dialog it triggers when I have multiple tabs open, which
ctrl+q use to bypass.

No clue on flwm's RAM usage, but considering that Firefox and Orca are
a behemoth and a leviathan respectively, it's probably insignificant
by comparison... I'll admit my system does slow down sometimes if I
try loading pages in Firefox that are either really long or lousy with
excessive amounts of JavaScript, but then again, my system only has
4GB of Ram and all of my internal drives are platter-based.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

