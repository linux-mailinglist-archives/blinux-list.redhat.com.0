Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2424623B5
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 22:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638222493;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zd0/ZtZCQ2cvnHrwjAUGK9IbSdYXM4GhsJEz3AA7uPE=;
	b=boydUAed2r9hE1hj5zawYjiTvrHGjDbv4f55g90XljOIR3CzNxY3GwFu5uflC3EY55q/MD
	fdmjgf9X9Z4dbR5S1VVgdI9OyLhXZOCY1emZnL1qCI3sFJi7uy+d0O5mwtVOzmyF60XidO
	7j0hgjRt0gJWd5sAr3PMv1aIdxWhszE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-343--u2jrRGNM0GWkaF2aDOdcw-1; Mon, 29 Nov 2021 16:48:09 -0500
X-MC-Unique: -u2jrRGNM0GWkaF2aDOdcw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18212192CC40;
	Mon, 29 Nov 2021 21:48:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0183245D62;
	Mon, 29 Nov 2021 21:48:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 392BA1809C89;
	Mon, 29 Nov 2021 21:48:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATLm1Sd011182 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 16:48:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3CCE051E1; Mon, 29 Nov 2021 21:48:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36DE051DC
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:47:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A849E185A794
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 21:47:55 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-457-EUF5Nwz_PKSl_g89vh8ptA-1; Mon, 29 Nov 2021 16:47:53 -0500
X-MC-Unique: EUF5Nwz_PKSl_g89vh8ptA-1
Received: by mail-wm1-f48.google.com with SMTP id i12so15818126wmq.4
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:47:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=8w0gTS7OD4wCxkVxFGnXi7G6BiBBXltxq/G/DFZ4D1M=;
	b=TYaW5cgcspXf7Hxj6Pj0+QnUMs2b+z3xRe6UJHuTcqENYyEyRbfuxE4fTMF1FRbksk
	531PEvs59sohFUCsdiBr5ctI/CFJ9O65b45sNKSWmOgpSo4H2lKy3zUXQqJZs3kL52ML
	3/gC+rFamlYPsWcgRKFtHSnATo62v1L0kXKppvoplfDNHIfqRA233YW8H4eEBQti6XMF
	sugb0wn0g6PbInUZBljllmJ9qeKApUfGLUFG/Pjf+YIFG5U41/wkVD/HakaqLdp0tVR3
	G1sI9+1xT1OZALsjC5cfC63t7Z7ZjhC9PKCvq/WV4BKO6yDDh7vKF0XJCAhoYcu0qW9p
	8hsQ==
X-Gm-Message-State: AOAM530mzgx9yNYtPCz8ZxFuFdWGssdrkHBSWjwuibouI1FYAC8ShcRZ
	wgoTTpncLFuzG0hXxoaeLp6d/vg3h790qA==
X-Google-Smtp-Source: ABdhPJxbFjK45JPmJ0BbOWe5ovQm9L4BkZmqu/C5RCPsiu5VmG339GtSlWnk5H/3rjTYstGSUgYCyg==
X-Received: by 2002:a05:600c:ce:: with SMTP id u14mr621346wmm.83.1638222472355;
	Mon, 29 Nov 2021 13:47:52 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	d1sm14266182wrz.92.2021.11.29.13.47.51 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 13:47:52 -0800 (PST)
Message-ID: <be0a3ef3-9637-a7d9-8d0b-030b3e28e75b@gmail.com>
Date: Mon, 29 Nov 2021 21:48:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
In-Reply-To: <dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

See I usually throw a terminal/console text editor in on any CLI only 
systems/installs for that reason, or for working in a TTY when I want to 
edit stuff or am on an SSH connection. It's always nice to have a 
simple, easy to use editor in my pocket so if my desktop falls over or I 
need to SSH into a machine I can just do nano filename and get right to 
work without having to fight an editor that thinks it knows what I want. 
No. I just want to get in, edit text, save, and get things donen.



On 11/29/21 21:31, Linux for blind general discussion wrote:
> Unless you are running a text-only installation, installing from 
> scratch, editing configs before you have a desktop environment 
> installed or working remotely, your best bet is going to be whatever 
> editor comes with your desktop environment. Usually that will be 
> either pluma on the MATE desktop, gedit on the GNOME desktop, or you 
> may have leafpad or mousepad installed. Any of these give you very 
> easy cut/copy/paste functionality, easy to use find/replace pop-up 
> windows and a fully accessible menu system for doing other things. All 
> these editors are fully accessible to Orca and are found in your 
> accessories menu or its equivalent depending on your desktop.
>
> If you are looking for a terminal-based text editor, usually for 
> installing a system manually or working remotely via ssh, the best and 
> easiest to use by far is nano, although I usually like to use pluma 
> even over ssh, since sshfs mounts my servers as if they are on the 
> local disk, so I get access to every file on my servers just as if 
> they are right on the computer I'm using to access them. I have edited 
> server configs and even websites in this way.
>
> Forget EMACS. I gave up on that crap after 5 minutes of mucking about 
> in it, and emacspeak didn't make it any better. A text editor should 
> make it as easy as possible to edit text, and that is all. It 
> shouldn't require a computer science degree, nor should it try to be a 
> complete desktop that tries to turn every application into an editor. 
> The editors I mention here are mostly straight-forward, with the 
> possible exception of nano, which is mostly consistent with pico, but 
> not so consistent with any other desktop editor, and they all do what 
> they should and nothing extra or overly complicated. If you want 
> complicated text handling and word processing, LibreOffice Writer is 
> the way to go, as it's a sophisticated word processor, not a text editor.
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

