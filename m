Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B09455405
	for <lists+blinux-list@lfdr.de>; Thu, 18 Nov 2021 06:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637211663;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=u4Kjn0TBixsmgrwBSsF6EijG8rotXhf4MtEOk7B6iG8=;
	b=IXUbonCoBEQNknOIFiHRV02njBCYiql+cHv6UlAQjGyOvFujVAqeLNfJTLXXPnwoEBNoNj
	ESuaYgFgA0+Snyh/VnRBgnnR5oGIvLzZdqrxbEkwshBnlB8Z3+mJy8N5Rj6A8CoYDLHeez
	I6OoYWi7mUvL1jyBJUuXNp2uR95YvwI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-58-wODmJNfLNfaTr1LGKYMKMg-1; Thu, 18 Nov 2021 00:00:58 -0500
X-MC-Unique: wODmJNfLNfaTr1LGKYMKMg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B608802E6D;
	Thu, 18 Nov 2021 05:00:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2556E5D9DE;
	Thu, 18 Nov 2021 05:00:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9663A180BAD1;
	Thu, 18 Nov 2021 05:00:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AI4wFbx028478 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Nov 2021 23:58:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8AB15404727A; Thu, 18 Nov 2021 04:58:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86E2B4047279
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 04:58:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CC0D85A5A8
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 04:58:15 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-1-72GYP4HmNWqyS7QKRtIXXQ-1; Wed, 17 Nov 2021 23:58:13 -0500
X-MC-Unique: 72GYP4HmNWqyS7QKRtIXXQ-1
Received: by mail-qt1-f170.google.com with SMTP id o17so4967618qtk.1
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 20:58:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=zw2TtqosJflWs+kaAzE9bcFR16OYXTre/E5JcClzJQs=;
	b=wHw/eD0j044tsIuCU3xGFl/d7ynmzEe4GKGqek3a+FJe7u7M3ct6vq3u7CYVS+Sjz+
	Cuyylt6CDoHHJiuQAHUqRZG1qCjfZmpor/1aN20XqE5H7bTleFsCQlSsh1/3HviPRpOQ
	823dLPEmzsWvWjcXmfRgCLHN2JeqQrKOOdzqK8FUOL5BlMPAwB5exbjZ34pg+zuoZiAu
	hqwm9zuXtmwbGEEDLc/xvMTqN8MQE+Ou35wtYdtksvRuJg8rG+lx/D68wbssOA4ktNW7
	9NCS+IX6P3FM2MeYBn3bD8xdg1ULbGh38kJnu+7XNBUFCJcUj7BkhW5vNBn6u8wn27RO
	ChMQ==
X-Gm-Message-State: AOAM531aUVkIdTvmSIHqFd66gX+LSwy1hFRPBBDr7l3TYerdxrvYRrd2
	Cc73cvXlL8POVJK+bCPGxvLoC4kC9dY=
X-Google-Smtp-Source: ABdhPJyW3WoxLE+EFh2tmRheqihf1gitEP+mF+SAXgIJkjFNs/kbsdGWYFigRMVjgczgMZySpeE0nQ==
X-Received: by 2002:ac8:4e41:: with SMTP id e1mr22619588qtw.116.1637211493343; 
	Wed, 17 Nov 2021 20:58:13 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	d19sm1049281qtb.47.2021.11.17.20.58.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 17 Nov 2021 20:58:12 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<9c6a8c47-c0d5-4fdb-f832-8145a23f580f@gmail.com>
	<f9655dde-b48c-9199-6997-666a45bdbebf@gmail.com>
Message-ID: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
Date: Wed, 17 Nov 2021 23:58:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <f9655dde-b48c-9199-6997-666a45bdbebf@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Fedora allows installation on USB media. I was also able to start an install to 
an SD card inserted into the slot on my computer, but the slot writes so slow 
that I couldn't get halfway through the install in 8 hours, so I gave up on 
that. On the other hand, USB worked perfectly, both on a thumb drive and using a 
USB card reader.

Yes, Fedora can be made to talk quite easily right out of the box. I didn't try 
Fedora Workstation, but I did get Fedora MATE Compiz working from the spins 
page, and this is my daily driver now. I did notice that I didn't have access on 
the MATE spin to the alt+super+s shortcut to start Orca on either the live image 
or after installation, but entering orca in the run window certainly does work 
in both cases, and although I did need to tick the assistive technologies 
checkbox on the installed OS, I didn't have to do this on the live iso to gain 
access to a speaking installer. Hope this helps.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

