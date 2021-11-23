Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CF245AEBB
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 22:50:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637704234;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OJiNBkrsOLi6JzaJodD6EjKxfkrQRgqgyFgUHgO/nxQ=;
	b=M3f5uCkhMzrTXG2uoZnk6AWPA2li355riss3xAUzBP5Kr59XFW87385qqh9l5kE2YJuzEG
	jfl5aQpzrVKlowOtwkEgFrsTI2Iei6jnMTtMRSgtgP5FLTHb7+qiuGIXD0MKeytwAHZRg6
	Vgh4c0YEtH+lEEcYbqG6EejSqVE4G2k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-234-9hdd7Ma-OymPTDlXtiTCSw-1; Tue, 23 Nov 2021 16:50:30 -0500
X-MC-Unique: 9hdd7Ma-OymPTDlXtiTCSw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E08F29F92D;
	Tue, 23 Nov 2021 21:50:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F15060C7F;
	Tue, 23 Nov 2021 21:50:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B48F4E58E;
	Tue, 23 Nov 2021 21:50:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANLnTU7020227 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 16:49:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5CD1E2166B26; Tue, 23 Nov 2021 21:49:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 577792166B25
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 21:49:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6441A8001EA
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 21:49:26 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-370-vQgl99FCPsW7zQPyo3Do3g-1; Tue, 23 Nov 2021 16:49:24 -0500
X-MC-Unique: vQgl99FCPsW7zQPyo3Do3g-1
Received: by mail-wm1-f54.google.com with SMTP id y196so307262wmc.3
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 13:49:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=b+wKn/nCLKRvhl0jMvDEFi9lRNk3F0FU7gMWxSzCbv0=;
	b=WLBeRIU8MaCCJ2qzJ/mBfR5CZY4Wb8Iz+KLk+u4vc5+4CwodCgQbJ0yWAlYsFMDcIZ
	tG2TQgF6fQZ8iDCFEMnQAceg3v+kjJUXVdyuP+U1ARzkOpb2r3/ywwS4Ek8nehk+s1M5
	RhZn2EBqbIXxq37SdG8UZp9OPVeC6+K1leeIbs5hlT1KfYieF6f18BVqZjo3F+rsIjuf
	Jii3+bz+EYW1J9tum3G2Y9GMAxVB7vHfqrswN5QRCNKT+0Ww9u19p5Xf8TiKvsK9Ol2g
	H/fx1JPPfZ5QoZmAADmWp4DD04Fq6NDeAyGW182yZeCZIWTPXtLZ10ZDstD4FKHFOTND
	JhYg==
X-Gm-Message-State: AOAM530d5odPx/WeAI/HExUge0M97MHiNGugb8yKjHbSw33ZDd6YEOcl
	acWDlCc4d1kwplDJEQwQkxHM8+uojvaOyg==
X-Google-Smtp-Source: ABdhPJyL0nP+sXVV1FA24JmjOuI+4TpUgjW5Y9bYdlm9GCa+f3vVj96Ot33QTBoK3i5xQJkO7N8NKw==
X-Received: by 2002:a7b:cf10:: with SMTP id l16mr7773676wmg.17.1637704163306; 
	Tue, 23 Nov 2021 13:49:23 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id 8sm2145639wmg.24.2021.11.23.13.49.22
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 13:49:22 -0800 (PST)
Message-ID: <9ec61018-27d4-8eb3-98a2-3ac4cd8a0ca5@gmail.com>
Date: Tue, 23 Nov 2021 21:49:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for two gui accessible applications ClipGrab
To: blinux-list@redhat.com
References: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
	<E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
	<CAO2sX32rX+pa=rWwkCuH2gwUuY2NcrjA3UNZHR5HMQvqhDE+ig@mail.gmail.com>
	<a5e32fec-9c12-db07-69b7-ca6a5e7a8397@gmail.com>
In-Reply-To: <a5e32fec-9c12-db07-69b7-ca6a5e7a8397@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Just gonna chime in and say I have snaps on Solus out of the box as 
well. Really, I don't care if it's 'too much like SWindows', if I can 
get apps easier than having to install a bunch of packages I'll only 
ever use once...it's a win win for me really

On 11/23/21 20:06, Linux for blind general discussion wrote:
> Snapd isn't just an Ubuntu thing. I have it on Fedora, and it's also 
> available from the AUR for Arch users. Flatpak is another similar type 
> of cross-distro packaging system, and it's available from the Arch 
> community repository, Fedora and Solus, and I think it's available for 
> other distros as well.
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

