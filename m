Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9345E456765
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 02:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637284813;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QbOoLkNO5QYfI4tFpVU5Ed7KKUiD6y3SaHIk69/5qPw=;
	b=DPW4uMPXz/54hBw0sJBDwnmPG/2qW6GTAkg/fNf7EChi+GFWcDL2Rx7UvlctuO4kNR8AUX
	FTpAccNk8LBQfch1kPsjXg61bicBT5yA+qT/KjBcK53WSmSqxPYNXrU9Yq0sza6lTTigZ8
	GLTL7B2FIzPSj01VcjmAlRyXX9rqu78=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-172-OclKUTy0OU6sjDutzEEt5Q-1; Thu, 18 Nov 2021 20:20:09 -0500
X-MC-Unique: OclKUTy0OU6sjDutzEEt5Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A291E1023F4D;
	Fri, 19 Nov 2021 01:20:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54C603AEA;
	Fri, 19 Nov 2021 01:20:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6B6FB1800FE4;
	Fri, 19 Nov 2021 01:19:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJ1JlGP015810 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 20:19:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B1BA4404727A; Fri, 19 Nov 2021 01:19:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADC474047279
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 01:19:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91632181E06D
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 01:19:47 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-571-31YJ3GTXOZmTv-j0yO-ThA-1; Thu, 18 Nov 2021 20:19:46 -0500
X-MC-Unique: 31YJ3GTXOZmTv-j0yO-ThA-1
Received: by mail-qk1-f175.google.com with SMTP id 132so8545400qkj.11
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 17:19:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=xFhquPw9KBVhZ5GvhXdn0QF2PvlESZRBs+EYOD7sRl0=;
	b=XMZ9yPSWfe5LP5L2EH8020WafSXTBVi9fEoNSwM4A3rhbL3pLI1/Xhm88h9/WJQeES
	FFaz12N+AwnnMeGi0Ym/wOEiLwOqlwoM7/oEZ1hNfyyuw1lex+Ar/z9ApMM9+i9T+EJN
	xm/rvEaJurnJchrhtvnVhkWpjYosvRyusVJhiiW0bqL/MVk6rogqsmPrTFm1vNcAnrry
	HeYlei43ScUNtws9Kkgp2nA+uiHlQ3KZWxF3LO5CH2IsYidycDtE538p7W/VoFDqb+Dv
	UvStPArIHrGFLqpkIJH++pYRP8IdxoqMiRUSFOgO6LR+k1dWyoRno5+ioycs5qAATjTn
	SMIg==
X-Gm-Message-State: AOAM532KctFVR/mx/tzBZtX/StT0utn8q/4Pzv5POGg24BSurlZcs1r0
	LwgykA1pfcRQ1SspykPKnWAmQmFCs2zSRjK7
X-Google-Smtp-Source: ABdhPJwboD5BWvpgqyiKEiVGFGyXpPRy3pplyRx8LlLYUwdFiPHKESeqfJ365W/7xoGCniHiVnAxZA==
X-Received: by 2002:a05:620a:3dd:: with SMTP id
	r29mr13964041qkm.208.1637284784737; 
	Thu, 18 Nov 2021 17:19:44 -0800 (PST)
Received: from ?IPV6:2601:152:4000:330:f88c:fcef:e1cf:a97c?
	([2601:152:4000:330:f88c:fcef:e1cf:a97c])
	by smtp.gmail.com with ESMTPSA id
	bp18sm911750qkb.39.2021.11.18.17.19.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 17:19:44 -0800 (PST)
Message-ID: <ef5d97c0-090f-becd-2b7a-958852c90376@gmail.com>
Date: Thu, 18 Nov 2021 20:19:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
	<33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
	<58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
In-Reply-To: <58865fc1-1566-b9a3-21d6-3b2aa13346aa@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I fixed the sound problem. Now the speech comes out of my headset not 
the laptop speakers, just the way I like. However, I can't seem to have 
the Braille to work, although I added myself to the braille group.

Now, how can I activate a connection to the internet? I did not do that 
during the installation. I tried to type nmtui in a terminal but I got 
command not found. What is the exact way of getting the list of wi-fi 
networks available so that I can connect to the internet with fedora?

Cheers,

Ibrahim

On 11/18/2021 3:10 PM, Linux for blind general discussion wrote:
> The sound output can be switched from your MATE sound settings in 
> applications->sound and video->sound. This is due to the fact that 
> Fedora is using pipewire and wireplumber by default instead of 
> Pulseaudio, and proper switch-on-connect support may not be fully 
> enabled yet, although once you set it the first time, it seems to 
> work. Pipewire can currently replace Pulseaudio, the ALSA front end 
> stuff and even Jack, but it is still a work in progress that is used 
> by default to give the wider community a chance to test things. So 
> bumps in the road will still occur. For example, plugging in my 
> headphones with their microphone to my computer results in the 
> expected output switch, but the input doesn't switch automatically. 
> But this is not a showstopper here, since I can switch the input 
> easily enough, and if I use a USB box, both input and output are 
> switching for me after setting it the first time. Still, I do believe 
> this will get fixed, since my 3.5mm headphones didn't switch the 
> output the first time I plugged them into the computer - the sound 
> kept coming out of my speakers and actually, the mic didn't work at 
> all, and now everything but the automatic input is switching correctly.
>
> I use braille so little that I didn't notice any problem, but it looks 
> like your user is not in the brlapi group by default. This causes 
> permission errors when Orca tries to read /etc/brlapi.key. Try adding 
> yourself to the brlapi group from system->administration->MATE user 
> manager. Unlock it first, then open the setting groups window. From 
> there, tick brlapi and logout. The next time you login, you should 
> have braille. This is not a failing of the distro, as no one user 
> should be in a ton of groups by default. I think if I remember 
> correctly though that there is a way to set your groups in the 
> installer. The distros you mentioned have their own issues, which you 
> pointed out, along with others you hadn't seen yet. So do stick with 
> this, and I believe in the end you'll be pretty happy with it overall.
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

