Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A307492987
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 16:19:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642519181;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aYrx4kheRjLFNLoJ5i8jSFgWL5X/5ONEaXHpvzLeBeo=;
	b=f6t3jcUs3reGByg5FF2gRRkljoSjdqu91JNMPsKYPpP18O87WEM0BYc68MitwL61rt3fX2
	RBOiq2zuPYoLXwB9hALlgPe1s1q4+ci5X59TTpw8nb9LeBNyJx5X+KbQCO1WXbUwvwDNs6
	vnzFKY1KYCBIMygu8u+qCaAcgVKoNOo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-205-2TigRtHVO6O6iJI_mxPZCQ-1; Tue, 18 Jan 2022 10:19:35 -0500
X-MC-Unique: 2TigRtHVO6O6iJI_mxPZCQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F37CD100C674;
	Tue, 18 Jan 2022 15:19:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A4FFB189B;
	Tue, 18 Jan 2022 15:19:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07C281806D2B;
	Tue, 18 Jan 2022 15:19:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20IFImPR022188 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 10:18:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 82A84401E2C; Tue, 18 Jan 2022 15:18:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F360401E21
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 15:18:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6723A101A52D
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 15:18:48 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-251-KngPY4EBOMunfy2reQbEEg-1; Tue, 18 Jan 2022 10:18:46 -0500
X-MC-Unique: KngPY4EBOMunfy2reQbEEg-1
Received: by mail-qv1-f42.google.com with SMTP id kl12so21631022qvb.5
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 07:18:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=un+wSgxvElJX4zEy1IdSlYQ4FiZOgwrFdIUmtrq68yI=;
	b=0zBrLL/OY7SLdU03MbMYVFn6VegXnX/JuHx5EOige3OdkPIgcGlTsL8yJ2h8CZDE9y
	s2V7lJ6lbQUpSVHDlGQJM0aChfJv7bh1ekNtvgUSqm2jxppAwaBvHdvITFWsNeaIYXGV
	TR0uWgCI1whonZBjM/XzWG0sFkCjFse5n7DbZJDeBmsvT1RYKm2TeVlZsrbRyz0hm3GJ
	+ilTchuYqyGTfbJufIZILc5W4BjKhHpfADu2SLlSGiubkXSMzFP5Zit7W2sX1ggqH16o
	p194pGVTfMRoJAHqgT/zKzhR3jZwkf2eCNCgw/5rLqe7O/Rg8AjF4ouPyrMYzaMRD9Zz
	JOGg==
X-Gm-Message-State: AOAM532qhC1j/+Idc6fQNXra+XQ0vw58ShMLrqJKTpa7KbTdhEH/EaK1
	mcKr4krWUKHwB4JvL3kJb8HkAojtWXGyHA==
X-Google-Smtp-Source: ABdhPJwSMrnVQzHUc1kHbwroAD8ilwSxz3jbyXA32+qDwlOI5iAtR60E/5WxvtCOvaaeGgD9hdRMAA==
X-Received: by 2002:a05:6214:2508:: with SMTP id
	gf8mr22904423qvb.92.1642519126020; 
	Tue, 18 Jan 2022 07:18:46 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	o5sm10351882qkl.95.2022.01.18.07.18.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 18 Jan 2022 07:18:45 -0800 (PST)
Message-ID: <3869b29d-c142-7ca8-bd53-d93145b94edf@gmail.com>
Date: Tue, 18 Jan 2022 10:18:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: starting out with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
In-Reply-To: <CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Looks like some distros don't have it by default. My Fedora has it, but 
Arch does not. However, I don't think that means it won't recognize it 
if it's added. I seem to recall creating /etc/vconsole.conf being one of 
the steps of Arch installation if you don't use the US keyboard layout. 
Still, as I recall, I think it only works for the text console, not the 
graphical one, as the desktop layout is controlled at the X server 
level. I do know that changing the keyboard layout in MATE is not 
editing /etc/vconsole.conf, and I'm fairly certain that GNOME isn't 
using that file either.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

