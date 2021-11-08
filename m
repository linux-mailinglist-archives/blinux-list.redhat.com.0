Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD6B449E50
	for <lists+blinux-list@lfdr.de>; Mon,  8 Nov 2021 22:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636407424;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=u8Sq4hsZterqPcPP5WUkc7+k05lT/r1outpYiGvTZk8=;
	b=LcicLMzDoEIFXTV44jvIvyhj0g4dgvldCCorbIR1/9Qwf08fgjQI9FCYM4lnRFoPR5INkR
	zvBBNSdSeyB/owBeKQh3j4HX/Ga+59bJlZQm56xO/DvnroAds/A8eIlGt2mgKZzH7MEA9U
	Z5usGCy+BichqOqWSN2ndRWsyL6GfCA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-131-cTF50DNzNRWku4zCn8c2sQ-1; Mon, 08 Nov 2021 16:37:01 -0500
X-MC-Unique: cTF50DNzNRWku4zCn8c2sQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EE1619057A4;
	Mon,  8 Nov 2021 21:36:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3608A60843;
	Mon,  8 Nov 2021 21:36:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7D834180BAD2;
	Mon,  8 Nov 2021 21:36:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A8LaPgA030287 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Nov 2021 16:36:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E6500404727A; Mon,  8 Nov 2021 21:36:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E29E94047272
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 21:36:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB64A811E76
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 21:36:24 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-390-z37GpItUMyisOJa56mca6w-1; Mon, 08 Nov 2021 16:36:23 -0500
X-MC-Unique: z37GpItUMyisOJa56mca6w-1
Received: by mail-qv1-f43.google.com with SMTP id d6so12885237qvb.3
	for <blinux-list@redhat.com>; Mon, 08 Nov 2021 13:36:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=1U0xa9jUMd1R+3vdNDQt2uMYUE5MCrgRlQZyQx8HVRU=;
	b=Sli/FB+igagdW5IDTZ9nMI9veKxOKgJks33GRcrDdV8pOTqcjwmlZR77vyVAXLWsgq
	3u6DOo57DKDy3u0cGlYLpKlyigMGIc3gNqZ/KdX8I/oRzIlgEH++S32I6V8Ms0FO1mbX
	URC0CE+PPVqHPxmqI8CLOqCo3/XAtR9BDOR+0XRZ+DkgNPq0oI6HA7xPhXmaIw2ER1Uh
	lT/se/Wi3RQn4qx/D5U5TaoqE4YgF6uVUhGF0kPTuZs8khEYwG4YcW7ggk1MZO+xp6vQ
	IybgGWcclCs9/1otwhO/LvExJFono7lHjgAPLL9nmght6YYgMWcCwh/0exlOzHgYZX29
	OYJA==
X-Gm-Message-State: AOAM530aYcXzxDpavpx/d7zxkt7lv+hWd4VnEBksdUE0p5RpTjV4JlGz
	Nyqgjfedpf1vQnXTzeTLUyh0VwQNY60=
X-Google-Smtp-Source: ABdhPJwQFeIiGOC0esIqLX8VSuibc5jADOCTJCqznr+mSEQq40t3WUeZ36VWiRNDhpWFjrYLzIZgcg==
X-Received: by 2002:ad4:4451:: with SMTP id l17mr2130678qvt.33.1636407382039; 
	Mon, 08 Nov 2021 13:36:22 -0800 (PST)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	c16sm3007189qte.63.2021.11.08.13.36.21 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 08 Nov 2021 13:36:21 -0800 (PST)
Subject: Re: Mate Desktop questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
	<bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
	<9a347e53-0f52-4867-f81b-3c62495c6d0f@gmail.com>
	<d43b7b51-c1e2-dac8-9554-9745478538c9@gmail.com>
Message-ID: <25a261fa-8974-626c-0b3d-c855aee31ad7@gmail.com>
Date: Mon, 8 Nov 2021 16:36:21 -0500
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <d43b7b51-c1e2-dac8-9554-9745478538c9@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

"... To be sure that the sound is unmuted, your best option is to run 
something like
alsactl store
in a terminal. This should happen automatically when you shut down the 
laptop, so it's baffling me why your sound is muted every time you boot. 
It's possible that the restore isn't working at boot time either, so you 
may want to stick
alsactl restore
into your boot sequence at some point as well. "

Can someone point me to where the "boot sequence" referenced in the 
reply quoted above, is located? I am running Mint Mate 20.2.
It would also be nice to know where I can find the commands that are 
executed at logoff or shutdown. I am still fairly new at Linux, but 
learning a ton over the past few months.
Thanks,
John


On 10/10/2021 1:52 PM, Linux for blind general discussion wrote:
> You should have a NetworkManager applet on your panel. This should be to 
> the left of the time and date toggle, but in my experience it doesn't 
> like to tell you when you're on it. So my best recommendation would be 
> to shift tab once you hit the time and date toggle and then press the 
> enter key. A menu should pop up with wifi connections, along with a menu 
> item called more that will give you more connections if yours is for 
> some reason not at the top of the menu.
> 
> 
> To be sure that the sound is unmuted, your best option is to run 
> something like
> 
> alsactl store
> 
> in a terminal. This should happen automatically when you shut down the 
> laptop, so it's baffling me why your sound is muted every time you boot. 
> It's possible that the restore isn't working at boot time either, so you 
> may want to stick
> 
> alsactl restore
> 
> into your boot sequence at some point as well.
> 
> ~Kyle
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

