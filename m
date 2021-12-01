Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2B24659AB
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 00:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638400461;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gXtibNGAOO7Va36hNBNUkVA7dO3lwQGGppWMzE0t0fE=;
	b=VckTDwlKld/dLQgKF7PSxTSCEy8j24NkIycmzYzrv7Cb5eqedQq5g7mxsIZjkIuOlCvSea
	GwU5L5SxcKbSAwp5obJewAhYFcIaCQkhLwhCEkF1k3+lmtfgrRz9yTancTzBiSc+dy4sbX
	rpZXZOmrhOF/Q4qO5KwnBezmsMLmo+M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-341-LkgqblnKP4-gXMedpZZwbQ-1; Wed, 01 Dec 2021 18:14:18 -0500
X-MC-Unique: LkgqblnKP4-gXMedpZZwbQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B03373E743;
	Wed,  1 Dec 2021 23:14:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50E5310016F4;
	Wed,  1 Dec 2021 23:14:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5F301809C87;
	Wed,  1 Dec 2021 23:13:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B1NDeLc016136 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 18:13:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 79B1C401E58; Wed,  1 Dec 2021 23:13:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 761F3401E56
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 23:13:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B8A4811E76
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 23:13:40 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-443-Y1qCNFh9Nb2mYwJB7_l3jQ-1; Wed, 01 Dec 2021 18:13:37 -0500
X-MC-Unique: Y1qCNFh9Nb2mYwJB7_l3jQ-1
Received: by mail-wm1-f46.google.com with SMTP id
	g191-20020a1c9dc8000000b0032fbf912885so2277140wme.4
	for <blinux-list@redhat.com>; Wed, 01 Dec 2021 15:13:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:from:subject:to:content-transfer-encoding;
	bh=46UclQe9M1E3I/UDRGq9LVGLHPITA/IUoH3G45wIHH0=;
	b=kOp33W9glIVBtrFuNQCISu9J01fx5LS9v7y/D0g9Q+oIuVcpCKNT58+K5JessSYhno
	Yp69hv6rjGL43YiZHGn4hN9sv6fJiFxlSRa/DhiGGAoHjRNgZJcTW8A88+w2pJKK4PxA
	Aj5wk+Bm1LynuJ5/MiEJtnJQ7guMN1c8KAMMSQ5uOAazKwUmwS5zb4UxdrIMW4iQu3Rq
	TmhsCvQ8+S07sfP5Rtebe/Jv4M4DehTMDPAg3B5utWTud5PSGR5FLie2619LtMraoOfI
	iJ8ENd7kLUAYkLTE4+VD1eIUa8g0mVwMpi8ObjOE7iz1NFP6A7fofbPTj4Qa7VlUuuvr
	2C9g==
X-Gm-Message-State: AOAM531WPAAAm/amBz8TRDOS626GXv6ot5tUHCtTjml4QxQLjXgA22IK
	1VqJ12DDedwWUu4lG3cg+6Ez9XIlHdQ=
X-Google-Smtp-Source: ABdhPJyuYAlgxbAbK/RHEaCOSWNvWorNL3BTLP1NskzgXU/JDyR215exV69d7QNtHFgwEJ6HiZWd9g==
X-Received: by 2002:a05:600c:4f87:: with SMTP id
	n7mr1527780wmq.168.1638400415286; 
	Wed, 01 Dec 2021 15:13:35 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id f13sm680654wmq.29.2021.12.01.15.13.34
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 01 Dec 2021 15:13:34 -0800 (PST)
Message-ID: <876af2ae-8b5c-52e7-df02-22b68180ae1b@gmail.com>
Date: Wed, 1 Dec 2021 23:13:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Arch, startx and Pulse in user space?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So this has stumped me for a few days. I've got it working once, but...

I've got my quick and dirty vanuilla Arch install set up. I want to log 
in via startx and have pulseaudio come up so I can just have orca 
autostart. Tha's the goal to have startx just launch into a talking Mate 
desktop so I just have to do one command and be good to go without 
having to mess around with a ton of extra stuff.



I can get startx to launch Mate without a problem. I've got Pulse all 
set up good to go.

Now here's where I run into an issue. I'm stuck on how exactly I'd get 
Pulse to recognize an X session is running. The Pulses service is 
enabled and loaded in user space. Yet somehow, going from the CLI into 
the xorg session via startx causes it to not recognize that the xorg 
session (and thus the desktop) is loaded

once I do startx and have it ready to go.
Currently I have to do systemctl --user restart pulseaudio every time I 
log into the desktop. I already have start-pulsaudio-x11 in my startup 
apps on Mate by default. Admittedly I've not tried putting systemctl 
--user restart pulseaudio in there, mostly since I'm not sure it'd work.

So what's the easiest way to solve this. Is it simply to have the 
startup apps do systemctl --user restart pulseaudio, or can I tell the 
.xinitrc hey, you're loading an X session and executing mate-session so 
automatically restart Pulse.

Or is there an even easier way I'm overthinking? I don't want lightdm at 
all. Ideally I'd like to run it all through startx (or as much as is 
possible)


For reference my .xinitrc is the default one I copied over from the 
/etc/X11/xinit/xinitrc to /home/jace/.xinitrc

I took out all the twm/clock/xterm stuff so after the final fi it merely 
has exec mate-session in it. I've tried putting pulseaudio related 
things in and around that line but no joy so far


Also no, I'm not interested in switching to Pipewire, no. Pulse works 
fine once started and the Mate desktop comes up. I don't want to change 
something that works

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

