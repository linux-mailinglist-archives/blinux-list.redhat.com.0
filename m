Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7F6AC3BF024
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 21:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625685535;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lNDHRZPNuiq3O7TnknCVWo2u8vmxhfS5VpqTXB0r3So=;
	b=N5Ej/iBsDANVa/2g4zOPGmyhJaZlXHPXKiSQ6+IV25GA95Jn2A99+2L9halh5b0mXFbkbE
	R8x6MrqoYQDvtrKTKicTZJ5eG6Sf6acGP6Tz3VIjKwBsdvtOU5McYJDeZeQzBqo7QWBm6+
	uP/rBFB9rXlbo0u1nBmnEIEQBkbcyro=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-dQN2HxxRP7OonTcl2C71uw-1; Wed, 07 Jul 2021 15:18:54 -0400
X-MC-Unique: dQN2HxxRP7OonTcl2C71uw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D255100C675;
	Wed,  7 Jul 2021 19:18:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FB695C1C2;
	Wed,  7 Jul 2021 19:18:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44ADB4A702;
	Wed,  7 Jul 2021 19:18:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167JIXDF013727 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 15:18:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9B84CE7792; Wed,  7 Jul 2021 19:18:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 951E6E77A9
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 19:18:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD4728C6A41
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 19:18:27 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-25-wbhbZMnjNBGs-jmoMqkzfw-1; Wed, 07 Jul 2021 15:18:25 -0400
X-MC-Unique: wbhbZMnjNBGs-jmoMqkzfw-1
Received: by mail-pg1-f176.google.com with SMTP id g22so3334874pgl.7
	for <blinux-list@redhat.com>; Wed, 07 Jul 2021 12:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=1Q/JrwStvPsB+9X6gMGvA01QdZIlosCd7HC/oV3fYA8=;
	b=h4m4g7Pg7KS9GJfE3TTRUZXoRWz/EAY972VUaaNlrMPAyvWXzYIcRgyCarrbxSTTUa
	P+zYjxXEpsNFFinglmVyvse0v8n6HobuIfsZu+tC9cUAQYRVA1rEYFf9pih3+sBDwzqY
	l8Bn7xzY4flEynD2ZpasgV3ZE8v0jP2KI6xja2EQSCpvNlzuZY+xTm0TzoRQOlh6PrTR
	ZyDmuqsNTzlHRwrNHKnKIZobbL46lS5+MgpHdDS63c5GnIzUSLmga26pSCMvCYfC2041
	HxLKixQn5QcSspFhe4gZW/U5pBL+0UxVNHomsA7ylLbmEfZ0r3iigsoKj3+wCw2PUqhK
	NUhA==
X-Gm-Message-State: AOAM5304nt6c5UNRhnUlpexUXKv/GWU6jAT2VG8BEG/1LY1jsOpKYLpY
	T3+66IRypS/07EqNDWvvI/2bYBK98V3fSA==
X-Google-Smtp-Source: ABdhPJyo5mdKQZiHzsU6A+vRYFxyHd0wh3W0XxFzQgLxt82xCG3yhYdX5AKKRPS0waDO3xX20/jvGg==
X-Received: by 2002:a63:f009:: with SMTP id k9mr27678132pgh.356.1625685504343; 
	Wed, 07 Jul 2021 12:18:24 -0700 (PDT)
Received: from ?IPv6:2601:501:100:cb70:e06a:5a50:a887:c12?
	([2601:501:100:cb70:e06a:5a50:a887:c12])
	by smtp.gmail.com with ESMTPSA id
	z15sm23709274pgu.71.2021.07.07.12.18.23 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 07 Jul 2021 12:18:23 -0700 (PDT)
Subject: Re: Starting linux again
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
Message-ID: <ef83c486-6b64-2c8a-cf68-d766b8b87345@gmail.com>
Date: Wed, 7 Jul 2021 12:18:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 167JIXDF013727
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello
I have a 2015 macbook air any info on what distros of linux I can run on it?

I will be using gui I wwill also jneed info on how to ijnstall linux on 
to it I have never useed a macbook fore linux

thanks

Hank


On 7/7/2021 5:37 AM, Linux for blind general discussion wrote:
> I've been very busy the last few years and have been using the terminal on my Mac for a lot of the things I used to do in linux. Now I would like to get a laptop for linux again. I mostly want it for command-line use rather than for the gui though I suppose I may end up expanding to that at some point. I mostly used debian when I was using linux with a few excursions into arch. I am totally blind and use speech and braille but the more I can use braille, the happier I am. I used thinkpads a lot and also converted old Apple machines but I don't have a spare Apple computer right now and probably would go for Lenovo. Can somebody tell me which dists are now the best for installing linux, especially knowing that I want to use the command line a lot? If I get a Lenovo with linux on it, am I probably going to want to reinstall anyway and how hard is that nowadays? Obviously this email is prompted a lot by the thread about getting a laptop for linux. It really feels funny writing about th
 is
>    as if I was a complete novice when I used to install and set up systems all the time but I guess one has to restart somewhere.
>
> The only problem I had with my Lenovos, and this was after years of use, was having the fan quit. Some of this was just the age of the Lenovos but it seemed to me that it was becoming harder to know how to set up the system so the fan worked right where at the beginning of my use of linux I never had to pay attention to fan settings. It may of course be that it was mostly the age of the laptops - I got years of use out of them - but I'm still a bit hesitant because of that.
>
> I know this email covers a lot of territory - I'm basicly thinking out loud - so just respond to whatever you know and can address.
>
> Thanks for any suggestions.
>
> Thanks.
>
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

