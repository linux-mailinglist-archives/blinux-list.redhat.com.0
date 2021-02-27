Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8B059326F09
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 22:30:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614461409;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=El5zFUIdq1sm6L4TVKoumyiCvEXlnRDYw6gbNXrQ3a4=;
	b=dKffVWp8LWv0tBCwP+hMWQHZhS53LGjlAwd5YCdbt/+hO7KH7KceQJpXKe5E9QEU2GROA6
	i9CyiqYZLIZ/Sm1xhlZJ+V5UuAVRebOiYVobYudh6kRCxwomoRu18uqBOVcvX1pSQ042Pt
	E01+TvC5zjhm797xXVFarTqgD2vbAPk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-ZP-bV0tCM62f0RHk8shF3Q-1; Sat, 27 Feb 2021 16:30:07 -0500
X-MC-Unique: ZP-bV0tCM62f0RHk8shF3Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4B41802B45;
	Sat, 27 Feb 2021 21:30:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 487FB67CC8;
	Sat, 27 Feb 2021 21:29:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A368A4E58E;
	Sat, 27 Feb 2021 21:29:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RLTl0j010898 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 16:29:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1DEB92166B2D; Sat, 27 Feb 2021 21:29:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1732D2166B27
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 21:29:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D68BF1022F09
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 21:29:44 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-513-J8B-4K8nMsa0xzHyNVNysA-1; Sat, 27 Feb 2021 16:29:42 -0500
X-MC-Unique: J8B-4K8nMsa0xzHyNVNysA-1
Received: by mail-qk1-f171.google.com with SMTP id z190so12840564qka.9
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 13:29:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=i3zpXAAnsM2kjDdXq93s89smONl1LnuuE60hvIVyO50=;
	b=FY2OUPS8Mskm+cypsoD0SUVcqOxEBt3VzN7TnHiLNZBDvkO4NBfZO7jIadWuXL2Ooc
	UhYtrnJoB4LvblqFVJdMJjmaiokJ6Y35GWBRxrAZoQ+OGPGt7OzF385tkd5nsfl8Wcuj
	PVO7OE5oxCMVPjlymT/3hSLSZEBknJjO8ay4eVo/CxuIUSL86yM9nxWf30gBYWtXEBWt
	nKqknYtN3kbvtj1KOBqZqt+5ylFbnrbX+k3/6Z9bPt/E+n5vy7phSGdZOFKxla+tbw8N
	UPT60K8T0CyoYRvyIIVnXLCjIA6UqizlFegdGwQSEptztj3nYzd03LBl4wxZT3FZ6NKD
	zQvw==
X-Gm-Message-State: AOAM533gi6GyGLKyYOkISiU72rG/GRmRNAMpzU+M0nfzxf+VR7PwW3or
	hicEvDHof3e5o/qnk4Y9x9f7xBXvPRI=
X-Google-Smtp-Source: ABdhPJzjxaYGyOPC/afbCngFmbf3f1vi/9bfbrRlexlwt2nMEei/H+eQsLopgb7GsKi+hNHLZvRiPA==
X-Received: by 2002:a05:620a:10:: with SMTP id
	j16mr8703670qki.310.1614461381769; 
	Sat, 27 Feb 2021 13:29:41 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84]) by smtp.gmail.com with ESMTPSA id
	o12sm9517887qko.117.2021.02.27.13.29.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Feb 2021 13:29:41 -0800 (PST)
Subject: Re: Running Android Voices in Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
Message-ID: <5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
Date: Sat, 27 Feb 2021 16:29:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I know that samples are available for RHVoice in the Android app, but 
I'm not immediately finding samples on a website or anything currently. 
The RHVoice Linux software can be cloned from

https://github.com/rhvoice/rhvoice.git

and of course have a look at the main repository page.

https://github.com/rhvoice/rhvoice

Hope it helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

