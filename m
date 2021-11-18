Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EEB4563E2
	for <lists+blinux-list@lfdr.de>; Thu, 18 Nov 2021 21:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637266258;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EpwR08bM5ENCvSVxVBK3MvKjv2KgP/y+KJw+gVrX8kA=;
	b=TPvCtI95/3+9HjNrKKlOX/x55A2VBjv4xNE31xM+/PTLXRtp/PscsvsiANTNYd1vwJxwun
	64QztaqkC2xNMVXarGq++02NiIxji8TEHtcQBQC/2lzhWGb3jjdzC6j/l4FBBYGjWy99fm
	KrFdUHneYHEfzMX/7dZvx9DXxZvUpTU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-419-E5ATxSGCMluFhI4qEXGnaA-1; Thu, 18 Nov 2021 15:10:55 -0500
X-MC-Unique: E5ATxSGCMluFhI4qEXGnaA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D189B101F001;
	Thu, 18 Nov 2021 20:10:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 701B060BF1;
	Thu, 18 Nov 2021 20:10:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 261374A703;
	Thu, 18 Nov 2021 20:10:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AIKAUWe015286 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 15:10:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5FC682026D60; Thu, 18 Nov 2021 20:10:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B4122026D46
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 20:10:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A0EC181E065
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 20:10:26 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-137-1sHv3Hd-PkiMpw0xkuuM7A-1; Thu, 18 Nov 2021 15:10:24 -0500
X-MC-Unique: 1sHv3Hd-PkiMpw0xkuuM7A-1
Received: by mail-qk1-f176.google.com with SMTP id i9so7753063qki.3
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 12:10:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Uh161Z3ewdTQ28UGhIDDXj7OZWTJlxzlxSr1Ao3fLY8=;
	b=WTF1l84TMWddELTpr4BXqGEt1tdMX8KV4fqSl4+pMmGlfwtkEnQKlVBvjrBEauPxJs
	94e01O4pwaZjgxvy0rmZJCLVLi+rCp57oVQqIFx5q+3xym/ClwjBJuIH2EAFydU8xUr5
	aREwt7rFGWqGyNYyJw1RQegfBEgrCVbnieN3zXBr4W7BkDmf6E7gd/xU0MubfGftewPE
	+zEPA06cHn854ple5wMnp9esXs1CG4n3USD/5CvdIp5epC3rYh9QXF8mZ8DbOeleO9Wq
	hgbP40lU9c15NUPROsNPSrrECpWPiSWAf7wugbfVHPSPEGJsNvryXe8La/c0oqxG9LIy
	xrhA==
X-Gm-Message-State: AOAM532wimD/udD+sLVCIxoNCoN0e31oiiWPIv/cgu9Ah9Ltt0elUsBR
	x8lisoHD/kGPtNPP6n0bAmUOYtha0f0=
X-Google-Smtp-Source: ABdhPJwKKpb9AR/Yw0yIio22TQZzNqbl9GXzYjI9YCPa8AEIQzaLt7Hodt11yGhgk0IHU90AzrDvMA==
X-Received: by 2002:a37:9cf:: with SMTP id 198mr23192110qkj.308.1637266223762; 
	Thu, 18 Nov 2021 12:10:23 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id h22sm430519qkk.14.2021.11.18.12.10.23
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 12:10:23 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
	<33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
Message-ID: <58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
Date: Thu, 18 Nov 2021 15:10:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The sound output can be switched from your MATE sound settings in 
applications->sound and video->sound. This is due to the fact that Fedora is 
using pipewire and wireplumber by default instead of Pulseaudio, and proper 
switch-on-connect support may not be fully enabled yet, although once you set it 
the first time, it seems to work. Pipewire can currently replace Pulseaudio, the 
ALSA front end stuff and even Jack, but it is still a work in progress that is 
used by default to give the wider community a chance to test things. So bumps in 
the road will still occur. For example, plugging in my headphones with their 
microphone to my computer results in the expected output switch, but the input 
doesn't switch automatically. But this is not a showstopper here, since I can 
switch the input easily enough, and if I use a USB box, both input and output 
are switching for me after setting it the first time. Still, I do believe this 
will get fixed, since my 3.5mm headphones didn't switch the output the first 
time I plugged them into the computer - the sound kept coming out of my speakers 
and actually, the mic didn't work at all, and now everything but the automatic 
input is switching correctly.

I use braille so little that I didn't notice any problem, but it looks like your 
user is not in the brlapi group by default. This causes permission errors when 
Orca tries to read /etc/brlapi.key. Try adding yourself to the brlapi group from 
system->administration->MATE user manager. Unlock it first, then open the 
setting groups window. From there, tick brlapi and logout. The next time you 
login, you should have braille. This is not a failing of the distro, as no one 
user should be in a ton of groups by default. I think if I remember correctly 
though that there is a way to set your groups in the installer. The distros you 
mentioned have their own issues, which you pointed out, along with others you 
hadn't seen yet. So do stick with this, and I believe in the end you'll be 
pretty happy with it overall.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

