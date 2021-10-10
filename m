Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6C92942828E
	for <lists+blinux-list@lfdr.de>; Sun, 10 Oct 2021 19:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633885980;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Oek0LXY7ZQ7knwhMUF6y+AtHYCHVQikXusVq7u0gGPE=;
	b=ZRyfa4xHhIhKHEhdgrLW0NkARmoVOzp02270Nv3vHIsEFaCIlf7IFvTjsZhnej1qF5BHtF
	vjwiz8VXe6TRJT8IkWAqItLl8K0JpEpTfFwIEA7TrfJZeciEAnqjLAdxJ4tbzQPwYV5Ats
	WuQW1DLurkYo2fe+JKkVnwPN6Su16iA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-49SOTL9jNU2VvllvO6dtTA-1; Sun, 10 Oct 2021 13:12:56 -0400
X-MC-Unique: 49SOTL9jNU2VvllvO6dtTA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3245F1023F4D;
	Sun, 10 Oct 2021 17:12:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 655AF60871;
	Sun, 10 Oct 2021 17:12:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6EDA24E58F;
	Sun, 10 Oct 2021 17:12:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19AHCGOT027829 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 10 Oct 2021 13:12:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 532E22026D48; Sun, 10 Oct 2021 17:12:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E4482026D46
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 17:12:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CA3F8007B1
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 17:12:11 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
	[209.85.219.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-513-8081ivH6MtCzZIJMLY1pTg-1; Sun, 10 Oct 2021 13:12:09 -0400
X-MC-Unique: 8081ivH6MtCzZIJMLY1pTg-1
Received: by mail-qv1-f54.google.com with SMTP id v2so142792qve.11
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 10:12:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=twAOfeBFFAfoQERhVDKR2bo2AOhbNT+Ju4d0Lkz7DfE=;
	b=dCN8Tw5Mj1zf37z8Z6ZQsk0PjKoSGU77NhFUttlNJsEDJNVACuzRjHUS2l1HXY4141
	fyDsv1RCouji+Xy07nKvPfarDs/qpgvyikBrATbxbQygNobnIl6SNj5rb77InZ9xt54T
	5zvsmQPPb8n5HKBKXklG3QC433No+ph524KBZ+Tzk5cC/VTdGt/evriFe5nOFBrHYLf4
	npOCqMpc+Q4k9zXOcyUfVPC/+E/1WLnC2b4BqOwoaIjhDZ+Ia/aCOjNEQwn0k/5+g6UF
	slUc/UX+Ua0piaVMwL1dC4ruzDT58Sc2xSods4+HBq68g10DwH5b0txkT9NWCPE0XCzA
	VTzA==
X-Gm-Message-State: AOAM531YXFQfZubcNEt8WVsLHsdS4X5qbgBEJ6oHIqkrPmxMh8nWANnY
	B92I+7r+sJRLOhmEc70yW8unY9t16tU=
X-Google-Smtp-Source: ABdhPJwPWZpPpGQbE3eetmT7udLqCZQjeQjfMaMtUWqpvJlxy8r3OgDV3XbMuplh5RDg5MBOZpYCQw==
X-Received: by 2002:a0c:9d4d:: with SMTP id n13mr20520712qvf.40.1633885928445; 
	Sun, 10 Oct 2021 10:12:08 -0700 (PDT)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10])
	by smtp.gmail.com with ESMTPSA id 15sm1292897qkb.9.2021.10.10.10.12.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 10 Oct 2021 10:12:07 -0700 (PDT)
Subject: Re: Mate Desktop questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
	<bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
Message-ID: <9a347e53-0f52-4867-f81b-3c62495c6d0f@gmail.com>
Date: Sun, 10 Oct 2021 13:12:06 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks for the tip on accessing the system tray. While I was able to 
access it, all that it contains is the time/date and the "show desktop" 
icons. I do not know where the WiFi icon is or how to put it there.

Regarding the "no sound" issue...
I determined that the sound is being muted. Luckily, the Thinkpad 
laptops I am working with have a physical mute button, so I can press it 
to unmute the sound and get Orca talking. I am baffled as to why the 
sound is being muted. I am the only person currently using these 
machines and I have no reason to mute the sound.
Therefore, is there a command that I can add somewhere, that can be 
executed during Linux boot, that will ensure that the sound is not 
muted? This will become a much bigger problem for me with the newer 
Thinkpad laptops, that do not have a physical mute button.
Thanks,
John


On 10/7/2021 8:05 PM, Linux for blind general discussion wrote:
> Isn't Linux Mint still based on Ubuntu? How did they fix the problem of 
> having to log out and back in to get a talking installer that Ubuntu has 
> yet to fix? Ubuntu 21.10 needs to take a page from the Linux Mint 
> playbook to make their installer talk without having to go through the 
> work-around logout login procedure to get it talking. I myself would 
> look at Mint, but I'm not fond of the Debian base. That doesn't preclude 
> my installation of this distro for others, as I have been known to 
> install Ubuntu for its ease of use, although I'm more partial to Fedora 
> Linux these days, especially since it includes flatpak out of the box, 
> and snapd can be installed quite easily. I actually have a couple of 
> snaps working here without any issues.
> 
> 
> First, to get to the panel with the system tray, you usually hold down 
> the alt and control keys and press the tab key repeatedly until you hear 
> "top panel." But if I remember correctly, Mint has no top panel, only 
> the bottom one, so your system tray is there. So if you never hear "top 
> panel," just go to the bottom panel and you're good.
> 
> 
> The sound issue is caused by a conflict between more than one user 
> trying to access sound at the same time. The conflict appears to be a 
> race condition where the first user's sound session doesn't get killed 
> fast enough, so the second user is blocked from using the sound device. 
> This usually is not a problem using Pulseaudio, but for some reason 
> Pipewire still has this problem. I switched up mine on Arch and I see 
> the same thing, even running a talking login screen and then logging in 
> as my normal user on a single-user system. Again, I only saw this when I 
> switched that system to pipewire and installed the pipewire-pulse or 
> pipewire-pulseaudio package, so it sounds like this may be what Mint is 
> doing. It should be possible to resolve the issue using regular 
> pulseaudio. If pulseaudio is already installed and this problem is still 
> occurring, I'm not sure where to look next, unless you can set up a 
> session wrapper script that will kill the user's running pulseaudio when 
> that user logs out, which should happen automatically, but may not be 
> happening early enough. I hope this helps.
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

