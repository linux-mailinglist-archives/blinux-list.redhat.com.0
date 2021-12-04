Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AD446868F
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 18:34:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638639258;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BZK3RsP9bgKGhr/atXP3e5AcVDqTQdL97ONTSNJt4uE=;
	b=Hjlz+G5LxbjKCuI+ydbXFns6nIwJG0y5hsYjS/etar/XAsvIktqbwccPrCGQQJgl2OtmBQ
	EK6L4leq8qX5ZzDdZU0Gw+1XilAkpm3/qu+CIyduwnferm2/A2TxDKJ/JGDd2o4QmRTxBO
	cpPztyZgp+ab1W2o0xWAHhwt1aLvjBc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-520-N14lJAJEOq2-qxteXfxSmA-1; Sat, 04 Dec 2021 12:34:15 -0500
X-MC-Unique: N14lJAJEOq2-qxteXfxSmA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C75A88042E1;
	Sat,  4 Dec 2021 17:34:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F40985DF4B;
	Sat,  4 Dec 2021 17:34:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9B7364BB7B;
	Sat,  4 Dec 2021 17:34:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4HWRcr015578 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 12:32:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 07E86492C3B; Sat,  4 Dec 2021 17:32:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03692492C38
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:32:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD54885A5A8
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:32:26 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-394-sU-8VIpPNf-rIWX1j7ZASA-1; Sat, 04 Dec 2021 12:32:25 -0500
X-MC-Unique: sU-8VIpPNf-rIWX1j7ZASA-1
Received: by mail-qv1-f53.google.com with SMTP id kl8so6020391qvb.3
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 09:32:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=qEgcYwHvIkWmkrnBjsulAIjhFly+lAPpORE/zfnz0MY=;
	b=H9WH9bOKW1AyCLKhHfJlhL2SuITbNnB/A5kTS+h7T226peN7yrPiGl1pfjBOZD407X
	yf5d0N/oDlLMdT4RU/Yndj5IQF3VcUdKCA1jI6ifEljleZZF/H0/fThTTaR3hhqNNIhk
	Iw12IrywnvuGJDVUfh+AzsO8HO3Qj/HpKQg/NPshxPmfXDVpAKVq9wI9y2POUNJRJnqj
	JlBNDqEFotfiWK6W242I0N0s+8KUoxPgcilOoVLLJY8+D2eLXGlisojC+xM9kyd+zp8D
	21hcXzIBfNN87FFxKZRPq7HS7McZ50q9Rz4bAu20jRzsjqrjL8qIikakqSjkvUnXMLQm
	+rnQ==
X-Gm-Message-State: AOAM5327KpaapFP69PYJBMCkvkaVw5cgzkKC7vfjZEerEmFx2GFxaJ0m
	ilP2bvz9o8MtwH9ZS5I9O0hsFRi23ac=
X-Google-Smtp-Source: ABdhPJwGVwenSEeOY7vY5bfoWHinkRAoAr4YZO+aTuz1VtvNROF3UBTD9th/AV6rv94NzMI7V7U8fA==
X-Received: by 2002:a05:6214:d8e:: with SMTP id
	e14mr26103615qve.50.1638639144723; 
	Sat, 04 Dec 2021 09:32:24 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	d187sm4026316qkc.122.2021.12.04.09.32.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 09:32:24 -0800 (PST)
Message-ID: <d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
Date: Sat, 4 Dec 2021 12:32:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
In-Reply-To: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, you indicated you already have a text editor, and I would say 
leafpad is probably the lightest one available. The best file manager I 
am aware of would be caja, but you say you don't want any of the MATE 
stuff. It does pull in some MATE dependencies, but it's one of the 
lightest and most screen reader accessible file managers currently 
available. Caja does also have desktop functionality, but you don't have 
to use this unless you want it.


Some time back, some people had said they were successfully using a file 
manager called pcmanfm, and it is quite a bit smaller in size than caja, 
but it appears to be quite old, and the URL listed in package repositories

http://pcmanfm.sourceforge.net

which redirects to

https://wiki.lxde.org/en/PCManFM

indicates that it can't access the database, so I can't even get any 
information about it. I just installed it here and tried to run it, and 
I can't even get it to speak to me, so it looks like caja is your best 
bet, even though it takes up a bit more disk space and pulls in a bit of 
MATE along with it.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

