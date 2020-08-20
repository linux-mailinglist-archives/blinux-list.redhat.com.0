Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id B0C6324C6B6
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 22:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597954691;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rvzinkhw8z+G2DxQ1YLAuG+5lkoY5j87Qtl6vrdhSFc=;
	b=Iu4rvFSKfX7OXLkwipIDWAgF0D7i/Kb7UiUADbvIGACIWlygJmFlZeOmp7Skft7UlK06S4
	Nk4oT3FHpbulK9TLt4cPHI8LTBf5mgYNIXMzXC08Ek0fuyBn5QyjbnT8vqbzsGTfjvgqrv
	5fiZ3oq7YjtGUz4opeLeOFWdHadb8gA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-Cx2SWbnzPKuo-FyG-TpHMw-1; Thu, 20 Aug 2020 16:18:09 -0400
X-MC-Unique: Cx2SWbnzPKuo-FyG-TpHMw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E0935186A573;
	Thu, 20 Aug 2020 20:18:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B201219D7D;
	Thu, 20 Aug 2020 20:18:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF4E160370;
	Thu, 20 Aug 2020 20:17:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KKHrKm014586 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 16:17:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7270C115D7BE; Thu, 20 Aug 2020 20:17:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CC10115D7BC
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 20:17:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 39D3118AE958
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 20:17:51 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-63-rkoZFZ7dP2SfteUjXZ8Szg-1; Thu, 20 Aug 2020 16:17:48 -0400
X-MC-Unique: rkoZFZ7dP2SfteUjXZ8Szg-1
Received: by mail-wm1-f66.google.com with SMTP id k20so2998005wmi.5
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 13:17:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=20WJ1tkAMRvI+pq4mNdCChHqP7jMpK6pvw1zLxp/1Zg=;
	b=dei/E3+9SOQ9qLRcSrDI0LgdIb2+P5Ld09t4z7rq6VyjZF8nf/RL9c3QUzl/AC1fbS
	OH0UdLUmza6DS4EJXHOYDiO4Lrvak/WWOnLJgu1BTRxgOlO6n5RBR+pg8zzb+EBjJf1J
	Rv0b7XGi7Tv7iVNrgL9KRaaDcVh+1f2vghVtc/ay1sLgNMiAV973GZt/9FwhY5hwL64C
	HgGlLpN+Jojz2IZFfpXFbgWbxPeMubPBY76Vfud0Becg2G0cgJaSmQNhadIoQwlM8swL
	GswmJV6El8NUvuvqjCsUtRFuzsZ1QZva0jrqJUJZQJde7n99LSoT5KMWBZ4V8lx/UTXQ
	aqpA==
X-Gm-Message-State: AOAM532mfOOArM0I/SXAf5bkix9wDmIyPISYEHvl/k7yRX6VbVqspgeQ
	rtHpsattO7Zgh9+MOUNsHptbMe8Z4fQ+Ew==
X-Google-Smtp-Source: ABdhPJznU7oBv8+YsYJt+t50ZrvScvscGDsbQlbM0p3b0useeQ5vMcvo+oGhvABYkOQkQ5LnCzTkoQ==
X-Received: by 2002:a1c:4b17:: with SMTP id y23mr139582wma.143.1597954667458; 
	Thu, 20 Aug 2020 13:17:47 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	p22sm5976553wmc.38.2020.08.20.13.17.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 20 Aug 2020 13:17:47 -0700 (PDT)
Subject: Re: Accessible Distros for a beginner?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
Message-ID: <b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
Date: Thu, 20 Aug 2020 16:17:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I much prefer the way SBL does screen review to how
> espeakup does it, ...


For those people who do like to start from a shell, Fenrir has been 
available for a little while now. It's fairly new as compared to such 
screen readers as Speakup and SBL, and its most attractive feature is 
that it doesn't rely on staging drivers being compiled for the kernel. 
It does depend on some standard kernel features such as the vcsa system 
and evdev, but needs no extra modules or staging drivers. It does have 
screen review that is similar to Speakup however, although I do believe 
it is customizable. Regarding sbl, I do agree that it is a really nice 
text mode screen reader. But it does seem to be limited to a very small 
number of distributions, which makes me think that it may depend on 
something they compiled into their kernels as well, but I'm not entirely 
sure about this. It would be nice if someone could get sbl working on 
other distributions, especially on Raspberry Pi and similar non-Intel, 
non-AMD hardware architectures.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

