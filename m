Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id CBFE6326EE0
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 21:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614456804;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a3nm9xg+mb7q3SXkIYbA1Mql3l9Q7UORRex/t9PvPS0=;
	b=d19F62KzHGKNXRZ4iiG0sYMnf7wO7kwCUypCE9XDi9lmMFTHo5g0UVq8IOrACtMo7WnJCH
	ah5xI8h96Jn98Rho2dK6fdRcBa12Rbn4KB0PCr7jxNR/+eH2LVlxSXqBwpc0bfGDXz5rw/
	oNthqVi1S7N5dWnKP2BtWusKGIblIiw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-duaK9nZXMmWNfXPabArSqw-1; Sat, 27 Feb 2021 15:13:22 -0500
X-MC-Unique: duaK9nZXMmWNfXPabArSqw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F1448030BB;
	Sat, 27 Feb 2021 20:13:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46CDA5D9CC;
	Sat, 27 Feb 2021 20:13:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 523404E58D;
	Sat, 27 Feb 2021 20:13:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RKD45J002020 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 15:13:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A89836B5BA; Sat, 27 Feb 2021 20:13:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2DFE6B5B4
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 20:13:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 721159988E4
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 20:13:02 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-484-mfPKePEzM8i1Ac9bXSPGGQ-1; Sat, 27 Feb 2021 15:13:00 -0500
X-MC-Unique: mfPKePEzM8i1Ac9bXSPGGQ-1
Received: by mail-qv1-f41.google.com with SMTP id 2so6286229qvd.0
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 12:12:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=trDAmEsORTwEEjhiOJmXI4VaEl/uaIO9ShFMsmxuxPw=;
	b=o529LVnsk+i3VSZ5CG6uVeOAKObMCUGzJ8y0ofEgKlpP28YeCSpGvq/ATEImjR5n9v
	/kL2IlG0m0z4zpAum5GFIiFAXodEYURwYv2F7/9TQ1TJIj+KTZLQ9EwCArPCb/JD5hzp
	to9QjqITv5/LOUPhSvgb4u5/gRr0waVp+8NlJRSBCQ6+9liueoRu0UfxW37t2ocZITip
	PO+OzkkzoCJ3oQNROqkQZktzogydromu/eKxJbbD6+EwQwHkU/4bfS9U1zSe7rfBmHWl
	L8084ZkGb7C7klYGrCABilO7Q28vG7dbFtgv3G4Lat+BkBQZjv0vSbO6/ggi55HSkfRo
	0IYg==
X-Gm-Message-State: AOAM5328AhPaX7z1CFZO0jOQbmVUvex44Ifv3jjvooWPgDy3/sJTKckQ
	7VFB1Wd6Fr0QF6b+a3WyUTs8d+maP+4=
X-Google-Smtp-Source: ABdhPJxJ3zO2U6qAEZk2M6wQ2ivznigaT24NW85Oi8AitRlkL04s10GhCkDWTgK6ricFmm/GgZa7mg==
X-Received: by 2002:a0c:c2d2:: with SMTP id c18mr8472789qvi.32.1614456779397; 
	Sat, 27 Feb 2021 12:12:59 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84]) by smtp.gmail.com with ESMTPSA id
	t128sm9305601qka.46.2021.02.27.12.12.58 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Feb 2021 12:12:58 -0800 (PST)
Subject: Re: Running Android Voices in Linux?
To: blinux-list@redhat.com
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
Message-ID: <e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
Date: Sat, 27 Feb 2021 15:12:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <161444854854.8.6967526014575932372.4265918@slmail.me>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

RHVoice is one of the best voice sets available for Linux, and it's also 
available for Android. I usually use the bdl voice, as it's probably the 
most clear and natural sounding voice, although nothing computerized has 
ever sounded naturel to me. Still, RHVoice bdl is good enough that I run 
it on my computer and on my Android devices, all except one, which never 
starts it and reverts back to Google's voices if I do get RHVoice 
working. Still, of the voices that are available on both Android and 
Linux, RHVoice is the best available and the easiest to get working.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

