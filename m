Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 070DF381C3E
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 05:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621136048;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1D0p+tAmnKGCerLQT7PZZJls2b9qBIu5bjKIesVw+J4=;
	b=OuM/InQnVNaonpQktIU9i1gHRa/D1BKXkFxi+4oHFq9ac6sqmv2Bo8bbSy6Qo2k5ICuL1f
	5F4ZgXrE5RL35nN3DMhxXhko6bsoZEvrgFAm8+pdE4rlMcOVB2Br0yZoCbWpUwoGjrHuXW
	zrpvAcuo8K9YCnaZr9crQ+7ydMR/PMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-HFOhAiQ5MMyWmdv9yGBqIQ-1; Sat, 15 May 2021 23:34:05 -0400
X-MC-Unique: HFOhAiQ5MMyWmdv9yGBqIQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3093218397B4;
	Sun, 16 May 2021 03:34:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 171475D9F0;
	Sun, 16 May 2021 03:34:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E39D155347;
	Sun, 16 May 2021 03:34:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G3Xwd5024415 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 23:33:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E82D72034256; Sun, 16 May 2021 03:33:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4121203424D
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:33:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD1D01857F28
	for <blinux-list@redhat.com>; Sun, 16 May 2021 03:33:57 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-255-KC5LXWcVOuqEwYbPuS4Jzg-1; Sat, 15 May 2021 23:33:55 -0400
X-MC-Unique: KC5LXWcVOuqEwYbPuS4Jzg-1
Received: by mail-qt1-f181.google.com with SMTP id f8so2576417qth.6
	for <blinux-list@redhat.com>; Sat, 15 May 2021 20:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ucySgpZX7tve6HGX0+RJTLj+6EAHvxKNubt9P17foX8=;
	b=FfDrOqonyKglBp1y08dBshYSCT5cbOQ5pZYF3bapNuvMjD0oIdKSyaoNBSuOz5OW4D
	8RhrojcN6QI1uBWfIZLvcMZ8XPWehncqAMBz7Mfa9KtHp9nrDiU+OI0HxUJys5aiXj2r
	qhcwapSDxFC18zUt1GW3iFpxTl65raAyOb5y3t1Irxa7SMOga0umxGlgdnCwUoPX2j7+
	hcjhOsW33WUjGQepWNtCSTLUtSwa7WwPd8Sn9tezlKJgcDjElak/F+Lth/tpW+gC1D8x
	Nf+rNBErVqTIW3KCYnZzi1sk+b4uL0/n+KWqL5kRud7x1WMFs9IPS1TJsux2cdR6ArAy
	cRrQ==
X-Gm-Message-State: AOAM531LuxP9C3fSFRAdyCiEYodwOSOyr3PXimsyY3oB5ZX3hD1K9syO
	vOIrMztWvPl2/3rwSubP1kfR4IffZ7Y=
X-Google-Smtp-Source: ABdhPJyphCUgzye7Fiy8XjFevgZvlH15kyBpqhPjYTD8R7dRgw6eBRD7qSxbegFBUDK/XlY6P7GUsg==
X-Received: by 2002:ac8:7247:: with SMTP id l7mr49903095qtp.280.1621136034868; 
	Sat, 15 May 2021 20:33:54 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84])
	by smtp.gmail.com with ESMTPSA id g4sm7577924qtg.86.2021.05.15.20.33.54
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 15 May 2021 20:33:54 -0700 (PDT)
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
	<Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152219530.27440@panix1.panix.com>
	<Pine.LNX.4.64.2105152253500.2851470@server2.shellworld.net>
	<alpine.NEB.2.23.451.2105152327400.25128@panix1.panix.com>
Message-ID: <82b5a1c7-993d-9683-2a5a-309c353a9069@gmail.com>
Date: Sat, 15 May 2021 23:33:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2105152327400.25128@panix1.panix.com>
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
Cc: blindtlk@nfbnet.org
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

I think youtube-dl can download audio files from Youtube and convert 
them to mp3. It uses ffmpeg to do it as I recall. It can even clean up 
the filenames for you based on the information on the youtube page for 
the video. Last I knew, Youtube has no captcha, and youtube-dl still 
works as of the past week.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

