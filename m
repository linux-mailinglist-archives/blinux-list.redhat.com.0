Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 368773CC084
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 03:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626485587;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=si38N+6z1X9X4IAl2+mJ5a6ndiVC2r8l72ZHnlczlUk=;
	b=WEtFrvh7pbd90VBpBNbpqS9V/X/nSeFTs+u3MCpztM6XjqSSLOhqy58RCg20Ackh1cMPQB
	PSb4KhXJPpL3+jrs+tiCNpMq5JQRWdkWVhlvr3oQbwQZ5mFb8mOaydgboYwLRVpkIstQzz
	o+lZC3KXJOznmFqh6FZom2Q5iIeLIVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-344-vdCEBtJrPa2Q4Ip_TQ1M9Q-1; Fri, 16 Jul 2021 21:33:05 -0400
X-MC-Unique: vdCEBtJrPa2Q4Ip_TQ1M9Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F9BD100C611;
	Sat, 17 Jul 2021 01:33:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E847E60C0F;
	Sat, 17 Jul 2021 01:33:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7BB774EA2A;
	Sat, 17 Jul 2021 01:33:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16H1SL5s016379 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 21:28:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D66E6116716; Sat, 17 Jul 2021 01:28:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D0D39116712
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 01:28:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6494189C7DC
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 01:28:19 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-505-1KU8tf4uNLaO2w8WdwWpfg-1; Fri, 16 Jul 2021 21:28:17 -0400
X-MC-Unique: 1KU8tf4uNLaO2w8WdwWpfg-1
Received: by mail-qt1-f174.google.com with SMTP id g12so8550311qtb.2
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 18:28:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=04IcWQ1rce3PRcAk44xJov6jBfeHOu1owA1RwWpK45U=;
	b=OPLA9Ixml4cB6DsesraJ1L9haYIruyoh0GuDM6sTzIDj0OB9jnPQCFKGReSNd/aWWp
	K9BedUct/dNQvKhw/mqBAmfz7KhNP7U5qkDq5yEmP5x+DHvjpc4QH+ccmqscoaS4fjKR
	q7Omf11dxJtJkjD9KH0jWoG2EjXG3U87EjczoQMaTPYyy/+ZVgB6hiHQV3FEW4HanUU8
	/YjL1C94VcJUPy8F42D/T6gEF/rZJLLI1AqgjUVGElkVi5Krvh2bAzajLL6Ks0WZfaVm
	JBDtTM0OoGnt/Ki/JdFenAquKVU42SR9NbF4EcuSJTRqlBp5+60ohqAW3bEu4UVY3YYN
	dXxw==
X-Gm-Message-State: AOAM5318qA+mUptKxyW093RWpP1gsPwTzp/xaezWuVbHP3GcqoAO4q0o
	KZKER7jQ9wQhy+jytqQYUVikPaFmGZs=
X-Google-Smtp-Source: ABdhPJxaPMG0jVzFJU1UZUZRqMtwbzbvsZHgJ/JzjMVYps6PGSaoHV2ANta68wGsO/xOuRgWq1lDjg==
X-Received: by 2002:a05:622a:11cf:: with SMTP id
	n15mr12021669qtk.256.1626485296718; 
	Fri, 16 Jul 2021 18:28:16 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433]) by smtp.gmail.com with ESMTPSA id
	s12sm3974264qtc.72.2021.07.16.18.28.16 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Jul 2021 18:28:16 -0700 (PDT)
Subject: Re: Fedora pros and cons
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
	<6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
	<16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
	<71fec14a-4782-77b2-7e6c-354065ebf6d1@hubert-humphrey.com>
	<D464B3F2-1585-4785-83D4-73E995D97527@gmail.com>
	<538acdb6-a9d-76a-ebf3-34b16773294e@hubert-humphrey.com>
	<eefa3664-8c37-e99b-203b-92119f466772@gmail.com>
	<17988e75-2d9a-f7ff-328e-8b7db7eaa40@hubert-humphrey.com>
Message-ID: <26301e17-bdcf-160b-0a31-fca2069da722@gmail.com>
Date: Fri, 16 Jul 2021 21:28:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <17988e75-2d9a-f7ff-328e-8b7db7eaa40@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

There's no setting that I'm aware of that will fix it. The only thing 
that has worked for me is either to use Pulseaudio or Pipewire, to be OK 
with having only one sound being able to play at once, or the best 
solution if you can still find such a thing these days, get a sound card 
that handles mixing in hardware. The Raspberry Pi does this, so I would 
imagine this kind of thing is still being made that will plug into a 
computer, either via usb or internally.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

