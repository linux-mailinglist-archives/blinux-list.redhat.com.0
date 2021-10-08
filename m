Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DAA744260F6
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 02:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633651972;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hacYKOnrY38MUhv6NA7NzqKbCV4UB+EmHPFuS9dM7cI=;
	b=g9c8Hw18vNUhxEeYjN58BS3d8afLZMUnuUt+94cyrGa6DYeBrDmkzd6cpWgd91BmDSF4Q0
	Lc8osK8Xx++Dx57KMAhhBeWnr1FUS2tEHNeKp7wYtnOOtmLIwz4QloiyPU6zT3AOFKbtsS
	TP++09wjre9qy5cSyA6pAniFvR6+6zw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-584-7hszitJbMNS8bcDIPhCMYw-1; Thu, 07 Oct 2021 20:12:51 -0400
X-MC-Unique: 7hszitJbMNS8bcDIPhCMYw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D000D112BA02;
	Fri,  8 Oct 2021 00:12:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D1AD6091B;
	Fri,  8 Oct 2021 00:12:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A6C741800B8B;
	Fri,  8 Oct 2021 00:12:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1980CZBJ025378 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 20:12:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 886BA20239E0; Fri,  8 Oct 2021 00:12:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 838C92026D48
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:12:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CEFF811E78
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:12:22 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-565-otHu5W3pNJe8ZunMeU9RZA-1; Thu, 07 Oct 2021 20:12:20 -0400
X-MC-Unique: otHu5W3pNJe8ZunMeU9RZA-1
Received: by mail-oi1-f173.google.com with SMTP id n63so11387828oif.7
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 17:12:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=jlP1sm1JFC5XH6LCKz9TgWlIwNV3j/zu1BcpyxOnkCo=;
	b=g/exd9q6VEcmPaaTb9ct98sn9Qw55A1jfnm939HSxSCbEm0S3MvTNky7erDbiEGAl+
	aeJvCMrU3oV6ZYwMIXOnkx280905/SyGQcVlm4wpa+mlAdhrGPbeb4BKYN0EvLcDAOYT
	Q9DBqPMCLrjadMcyD+/QveRUzS3kwPv1HJEaEPV6Don+DgTsIc2K4TDYckguwTK+UXpa
	EcvoZUoOjV5BIaJQ0BwQM2pslWJHKGspCFIhwWI1eycOsDmno2JjSivvlOAvtCfRtjsW
	jjcZp5KOwnV+E1DCaM/1kW5bavM6zBCb0cUd3peKlDRRKwkUPue4mWxQZ3upsRnxmslO
	0I9w==
X-Gm-Message-State: AOAM5326UJ4V73WxfPcJSyTrCL86h/RjAXsbleX5cPVcKKilHQ7YKVXq
	HUKZ/WOaDl3mhK7CmOOTb3nY9cHzA9g=
X-Google-Smtp-Source: ABdhPJxdWaTEIStEfGG+DBKI2kqVbCPepNFX303vlNeX9nRYeunKxaCKAeHADK6YzjxYw3+yKjkBZQ==
X-Received: by 2002:a05:6808:cf:: with SMTP id
	t15mr5288642oic.93.1633651939759; 
	Thu, 07 Oct 2021 17:12:19 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:596f:c81f:df28:2df3])
	by smtp.gmail.com with ESMTPSA id 15sm202097otf.14.2021.10.07.17.12.19
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Oct 2021 17:12:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Mate Desktop questions
Date: Thu, 7 Oct 2021 19:12:18 -0500
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
	<bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
Message-Id: <65725C7F-4111-46DD-9497-E59833E30053@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1980CZBJ025378
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

What is pipe wire?

> On Oct 7, 2021, at 7:05 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Isn't Linux Mint still based on Ubuntu? How did they fix the problem of having to log out and back in to get a talking installer that Ubuntu has yet to fix? Ubuntu 21.10 needs to take a page from the Linux Mint playbook to make their installer talk without having to go through the work-around logout login procedure to get it talking. I myself would look at Mint, but I'm not fond of the Debian base. That doesn't preclude my installation of this distro for others, as I have been known to install Ubuntu for its ease of use, although I'm more partial to Fedora Linux these days, especially since it includes flatpak out of the box, and snapd can be installed quite easily. I actually have a couple of snaps working here without any issues.
> 
> 
> First, to get to the panel with the system tray, you usually hold down the alt and control keys and press the tab key repeatedly until you hear "top panel." But if I remember correctly, Mint has no top panel, only the bottom one, so your system tray is there. So if you never hear "top panel," just go to the bottom panel and you're good.
> 
> 
> The sound issue is caused by a conflict between more than one user trying to access sound at the same time. The conflict appears to be a race condition where the first user's sound session doesn't get killed fast enough, so the second user is blocked from using the sound device. This usually is not a problem using Pulseaudio, but for some reason Pipewire still has this problem. I switched up mine on Arch and I see the same thing, even running a talking login screen and then logging in as my normal user on a single-user system. Again, I only saw this when I switched that system to pipewire and installed the pipewire-pulse or pipewire-pulseaudio package, so it sounds like this may be what Mint is doing. It should be possible to resolve the issue using regular pulseaudio. If pulseaudio is already installed and this problem is still occurring, I'm not sure where to look next, unless you can set up a session wrapper script that will kill the user's running pulseaudio when that user logs
  out, which should happen automatically, but may not be happening early enough. I hope this helps.
> 
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

