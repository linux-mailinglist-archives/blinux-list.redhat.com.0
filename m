Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AB245ABE2
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 19:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637693869;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wiX9ZqXsAgDYsBG0QCiu+1/vh+9dYP27ssd7SYXVrxw=;
	b=dSzHelyuG2a8BIcStJ59YKO2k6wspd7CBDnkMcha24lh1poYqKo4Wep4QNLqThXvYCU28J
	4N9sfoftwRCo4xLq+gGqlbgfOIftU78a+Gb0QlSVW7o5m/Vf/iHVs2Ze4nTKRyAAQpt5j+
	38hPo0w2zHhdBamzlfWu5HMbqWZifLY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-246-EGq5gOQIMyyZocZDdM3zsA-1; Tue, 23 Nov 2021 13:57:47 -0500
X-MC-Unique: EGq5gOQIMyyZocZDdM3zsA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAA9E1023F50;
	Tue, 23 Nov 2021 18:57:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D52155D6CF;
	Tue, 23 Nov 2021 18:57:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BCA081832E7F;
	Tue, 23 Nov 2021 18:57:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANIvZrW001345 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 13:57:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B2823404727C; Tue, 23 Nov 2021 18:57:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACC744047272
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:57:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 92D2E185A794
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:57:35 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-575-rW92fPMRNFeYoNqP0nY4sA-1; Tue, 23 Nov 2021 13:57:33 -0500
X-MC-Unique: rW92fPMRNFeYoNqP0nY4sA-1
Received: by mail-wm1-f54.google.com with SMTP id i12so19660353wmq.4
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 10:57:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=/Kdw3mQKdmFhkYS6OHnbMwUrAMMuuF9WWuLf3/3MqW4=;
	b=C/t1NRARnG9CHib0sDaeVJoY6sXHjrLGMs9exsuHM2Wj49H4OmgdJf4iKvFkvjbI02
	OQGK6+5tTWisNr/FSV0FWRTfBXoFpu246OZuTJsEFtnyyG36RftEj6rk9wk7bK6wRsU7
	WXsYlSRHzllPSfMLEIS3Fxz4eKwOkQFMiRmxQVtT2VqKsFbgVMqjtrktW/7eJI+pCNXM
	h4Nu0FPjaXGs9HXx1sqB9do6ImR+R9fAwIEQrOwN4nW0OVgaK4cwpmb6bJ6EGBF0MD3K
	ha8OWeVlOzsR2e4kc4nBslCgbFKm9o/ATW7ZZI6PoWw5ttT3t37L3lVdvpYdLTX3DBJa
	d81Q==
X-Gm-Message-State: AOAM53092JAn3ex0HhThhEstyvuVS6xVPb1Y1f+QkRrhrozsNHXQoqj7
	UUOlnlq3VNYlyGxqDOBOlDa4JP+XlAekIg==
X-Google-Smtp-Source: ABdhPJwTNfnjBa+tl9IM84rdGnEgT4H6tC05lcVf6QdOki0AroV7Zk/tOh7OSnBHqoXWhvmduU7luA==
X-Received: by 2002:a05:600c:40b:: with SMTP id
	q11mr5936930wmb.185.1637693852470; 
	Tue, 23 Nov 2021 10:57:32 -0800 (PST)
Received: from [192.168.8.113] ([41.216.201.125])
	by smtp.gmail.com with ESMTPSA id
	k13sm12719958wri.6.2021.11.23.10.57.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 10:57:31 -0800 (PST)
Message-ID: <5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
Date: Tue, 23 Nov 2021 20:57:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Can I upgrade Coconut to Mint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <993f996a-d2ca-1ed0-e23c-3357d5a2f146@icloud.com>
In-Reply-To: <993f996a-d2ca-1ed0-e23c-3357d5a2f146@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


Coconut is an Ubuntu spin built on Ubuntu LTS. Mint is also an Ubuntu 
spin. Thus the question should be, what does mint do that my current 
install doesn't?


Once you answered that question, you should ask, what will do what I need?


Then you run $sudo apt-get install


with the list of packages you needed.


If a package is not in the repos, you hope there's a .deb compile out 
there. If not, you build it from source code, not my thing, I'll freely 
admit.


Warm regards,


Brandt Steenkamp


On 2021/11/23 20:50, Linux for blind general discussion wrote:
> Hi,
>
> Is there a way to upgrade coconut to mint without loosing my installed 
> programs?
>
> I dont want to have to install them again, if possible.
>
>
>
> Thanks,
>
> Rob
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
-- 
Warm regards,

Brandt Steenkamp

Sent from my Fedora Install using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

