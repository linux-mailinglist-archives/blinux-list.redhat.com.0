Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1DFBC3CBFF8
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 02:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626480431;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wtpr3u4fsjgh1rtsobU3PLudrbUDUaPMoEWTtRkcc7w=;
	b=M2H8G6wV3+lfgfMsFGkgXWjDvUUHGJaIdEbZKYDtu+os5DEHLvF5yl6gxkVQb7hPeDJpzY
	2jj6lfH46qNEiridOwlN0aYXkG2R9lywtWCHq+tU1VBqxoMWtBSSY8CG8JmHRqWPetY2FW
	d6yjviopFlH1qTtRKnT3fxLpQ4oUKJA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-HoUAUIpKOiSy_BvAWV39GQ-1; Fri, 16 Jul 2021 20:07:09 -0400
X-MC-Unique: HoUAUIpKOiSy_BvAWV39GQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA5EE800D62;
	Sat, 17 Jul 2021 00:07:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 735455D9DE;
	Sat, 17 Jul 2021 00:07:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 730C41809C9A;
	Sat, 17 Jul 2021 00:07:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16H0608B010763 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 20:06:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2BAF210545E0; Sat, 17 Jul 2021 00:06:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 276E910545C8
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 00:05:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2122380D2B7
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 00:05:57 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-310-ToVcmLrWMrqUKulg3kiE4A-1; Fri, 16 Jul 2021 20:05:54 -0400
X-MC-Unique: ToVcmLrWMrqUKulg3kiE4A-1
Received: by mail-qt1-f181.google.com with SMTP id z12so8432830qtj.3
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 17:05:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=pdWmSMZUFyrPly2MvtQp6B6A04JM0L4DXS0tBVfzIyo=;
	b=g7T/QeQ+zaVRMu49Ycau8Dlc53jMl1PE0FdQxy/BYQ1b0PMHPVFh4n0DD7FMDYYmSp
	EBEyBBpHgdeDq/RPuPXZm+oscTfKelx6eWfZ7XIDcX9dgS0cWYagxNpFrXHgFGOTDP3x
	0MkBdgKwxP+sMozO+OSP/8xuhu6r+fxd2tPA6F3HU/hunrYT74uBqiZL7FhFp/VoSTa8
	Li8Z8wU3dSjFari3Rui4t6JztsfdhE+DX5048SaTGFntYbPbWyIo12GwwejH96KmL6uE
	A8vg+busKQwiymKfPzz79/4dRuJzcS8zRqH3ppEGN262PWYZeV8YUwyQxjy5nuUAQMUm
	FLvQ==
X-Gm-Message-State: AOAM5311XAONeVbX3QDIeg85lJMNJdvrBhp1WzHPuJKtM0DPXAiaVoVN
	59ayOm+OjhN7GV0QHcFctn4h0f6FRDE=
X-Google-Smtp-Source: ABdhPJymJ6t9mJ0/0Mhc58mgZLpayRMAzmO0evZXWy8Xug/AM9/67uHuwcvDnqtSFV2zOQvS7cUakg==
X-Received: by 2002:ac8:5f0d:: with SMTP id x13mr11657040qta.69.1626480353886; 
	Fri, 16 Jul 2021 17:05:53 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433])
	by smtp.gmail.com with ESMTPSA id a9sm1756843qka.32.2021.07.16.17.05.53
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Jul 2021 17:05:53 -0700 (PDT)
Subject: Re: Fedora pros and cons
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
	<C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
	<alpine.NEB.2.23.451.2107161359250.15260@panix1.panix.com>
	<CAGJxbF6PEh1_SoHaoUTfgSvOHJZ=+5j3bm1jYGxLPfQKx-QA6A@mail.gmail.com>
	<alpine.NEB.2.23.451.2107161924380.11557@panix1.panix.com>
	<6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
Message-ID: <16a5758e-184d-1a83-60df-83e9b75095c1@gmail.com>
Date: Fri, 16 Jul 2021 20:05:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <6C5267F8-9939-4327-ABB8-759DC75D37EF@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

Dmix is a pretty big can of cream corn that I only opened once and 
quickly threw away. They never did fix that speech issue whereby two 
voices talk at once and the first voice just won't shut up for far too 
long. Festival and Espeak did the same thing.


Can someone explain in plain English what is an apple approach to 
accessibility vs a microsoft approach to accessibility? I don't like 
either, but maybe that's because for many years I have just used Linux 
with Orca, which I have speaking on my desktop of choice, which once was 
GNOME 2.x and now is MATE. None of the corporate behemoths take this 
approach, allowing me to choose the interface I like the best, the one 
that works for me the best.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

