Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id F1C603C8852
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 18:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626278633;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AVYzEOFtWulgh+lhWk+OXk7YP3JhFm4sJCPxNj2VBQc=;
	b=fsWAAwDIIGJBDIybGRQ/I9tYolOsUro0+xnfO75AnxzVDv3CbuHgDe+Bksstmg536nJAui
	jOfEimKC1oOtEHNmBz9s2ni8Nn96D3NMFsoW3Ye1A02LTPCj1rQ2y5pApXZStQtLe2fu9A
	7PhOnERsB5ttlP13gX0R66DwNaKxheQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-opYagYrFP3GjEFcb04gFNg-1; Wed, 14 Jul 2021 12:03:47 -0400
X-MC-Unique: opYagYrFP3GjEFcb04gFNg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C54750758;
	Wed, 14 Jul 2021 16:03:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A5095C1D1;
	Wed, 14 Jul 2021 16:03:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0132A4EA29;
	Wed, 14 Jul 2021 16:03:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EG3Vrd016796 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 12:03:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 73EB9115D7C3; Wed, 14 Jul 2021 16:03:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E302115D7BE
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 16:03:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 515E0802A5E
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 16:03:25 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-207-zpdcvkUoNK--_7jJJF4Ncw-1; Wed, 14 Jul 2021 12:03:23 -0400
X-MC-Unique: zpdcvkUoNK--_7jJJF4Ncw-1
Received: by mail-qt1-f176.google.com with SMTP id g8so2200245qth.10
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 09:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=tY1eTWu5L3MZeo+JtqgajvfHLKLBeFA+tIqYXLd37Ro=;
	b=WriM/8LwTUcXWLQPW4VXR5c1WLWF5j4iVReAnj4XxJSB26sbKuRXVj6bx+s+oVnpMV
	mSuhDNj4hLIWps1H+1wEClaeZObieDKgoVvrPkxC4IIv4Z9VSVbKaBkHWWLq4WEvfExD
	hUwErvb6NS6Ux5F22+cx8y0Xzq2CuJqQ5w+Ng2pPp3o6sdAazCzKRrdvOfI3Q5PXjRfV
	AUm/UeX1UpzZWFmbLqaNZ14dj6sReXPebRLqmYz0AK4WFGdG3eVVktajwenwNIns+JSa
	CH+A6XUMLzqr+lquLMQN24wizFt3KB51vRmsCsRBp1hSOcjaNbVCxwGNs6WNP8f0sxU4
	NWZQ==
X-Gm-Message-State: AOAM533UM5QIxpdi6kHK6ODG0B/p6rdC/rIeGVYCTFnD/hSiCtEatJ3F
	2DyngJFlKq26q35UvMdWlf64gCbFQgg=
X-Google-Smtp-Source: ABdhPJxCrss2zXQRj/voCTiNxRt5X5VjsV7hvEPNGc054syW6/cVN/4nZv5qQpY9D2RdLbqR8FJmoA==
X-Received: by 2002:a05:622a:1444:: with SMTP id
	v4mr10084224qtx.143.1626278602581; 
	Wed, 14 Jul 2021 09:03:22 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433])
	by smtp.gmail.com with ESMTPSA id r5sm908196qtm.75.2021.07.14.09.03.22
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 14 Jul 2021 09:03:22 -0700 (PDT)
Subject: Re: Cloud service
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
Message-ID: <e4bddc5b-213d-70e1-c50b-58bc06b3f535@gmail.com>
Date: Wed, 14 Jul 2021 12:03:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I recommend either self-hosted OwnCloud or NextCloud, or a service 
provider that offers one of these options. Far more than storage, both 
of these solutions offer powerful collaboration tools and can even sync 
contacts and calendars, and both are open source and secure. Check out

https://nextcloud.com/providers/

for available hosted NextCloud providers. All the private use providers 
will offer at least 2GB of storage, which is comparable to Dropbox, but 
some offer more free space.

It seems to be more difficult to find OwnCloud providers with free 
storage space, but it's usually better if you can do so to set up your 
own host, either at home or through a VPS (virtual private server) in 
any case.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

