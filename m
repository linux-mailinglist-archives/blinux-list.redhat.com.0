Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 925FD426105
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 02:19:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633652372;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/fWSMmdOQvz44E6eC6LzYxUwZ/65Z8lbwSKKaQyMVDw=;
	b=ixm68xbVRgNgmqHA8f7RIyl+keyl3pWukhy2IJu0x9V23vhNNQGliQqkciUfCNobVGx8QL
	a3Ua6k3hwTnVENQhaErY53/X2/l9HENGm7R7B2mXFoMyrauiz9iFK9vJdLMaX7Ko1nxOO3
	bKkTGqOuhKAE/a9sW9LU01n2djR2dEI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-282-_rOisftHOECw_pvlUOBBaA-1; Thu, 07 Oct 2021 20:19:26 -0400
X-MC-Unique: _rOisftHOECw_pvlUOBBaA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 86F4C835DE2;
	Fri,  8 Oct 2021 00:19:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4733010013C1;
	Fri,  8 Oct 2021 00:19:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 33C744E58E;
	Fri,  8 Oct 2021 00:19:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1980JG72025700 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 20:19:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1982620239E0; Fri,  8 Oct 2021 00:19:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1424D2026D46
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:19:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48F53100B8D1
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:19:13 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
	[209.85.210.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-163-i2J5Kk9fMri9UGcJ8Kyypw-1; Thu, 07 Oct 2021 20:19:11 -0400
X-MC-Unique: i2J5Kk9fMri9UGcJ8Kyypw-1
Received: by mail-pf1-f177.google.com with SMTP id p1so6694319pfh.8
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 17:19:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=1+fmYdKmxXM2cwUiJmrSFJpfgMgYz3z2zh2r1KGY+L0=;
	b=vLviNGAM4L9FpUfi0m1Lhr+BtIV8iJn4t3veAqTD/u66eM1+VtFYkc8i5dj/YjQYLc
	DXnuNVNi+wTiRJMTt/igqItQ74XTEmEGSjViYT3mVyLNFV+Qf7IXSUBOKVotSW3uRBs5
	/DrBnnYGpq2Ofj+Ye6p0iVZc+SDpijYqUFrict+Iqi7JhVBgF6TLk4pvBqzUgu+gkyoh
	SIYFJ6XNYk2NroKg5OWxV7u4eUpmF4yxsEihtmEOIB8d/4XETkLJXHwcPP1H+sXO8PmW
	RzPjUG3wn/G58aC5dFVXquYzpP13rdnX9ofEhB8PII/DcKsvZuB/9yaVtLj+rOPpntCc
	imUg==
X-Gm-Message-State: AOAM533Ay2wtmoEDw+tgnD42G850g9subJL0hVu6fM8VAnQkiQBZxJ3H
	4rlok6kHG+FGj8311zngwDkBFZOY9Os=
X-Google-Smtp-Source: ABdhPJw1GYC6V37AKMVlXf+Tw5YRIbvmc6jEQxVIVsAKcL1PjzLg+19V3fuw8jNTKj1qRKba1StRsg==
X-Received: by 2002:a63:1a0e:: with SMTP id a14mr2123170pga.195.1633652350348; 
	Thu, 07 Oct 2021 17:19:10 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id j7sm513443pfu.73.2021.10.07.17.19.09
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 17:19:10 -0700 (PDT)
Message-ID: <e3da5c47-c54b-f6a0-85f0-4792f512bdf3@gmail.com>
Date: Thu, 7 Oct 2021 20:19:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: Mate Desktop questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
	<bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
	<65725C7F-4111-46DD-9497-E59833E30053@gmail.com>
In-Reply-To: <65725C7F-4111-46DD-9497-E59833E30053@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Pipewire is the newest audio system for Linux. In most cases, it can 
successfully replace the alsa front ends, as well as jack and 
pulseaudio. There is also a second and supposed to be more comprehensive 
session manager for it called wireplumber, but I'm having the same 
conflicts using wireplumber when multiple users, in my case lightdm and 
my regular user, attempt to access the device at the same time. I will 
note that I only see this problem on Arch. My Fedora system doesn't seem 
to conflict in the way I mentioned, and it's been using pipewire since 
before pipewire was cool, at least from what I read.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

