Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE1746D423
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 14:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638969001;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rvdzN4Azf1Hqztaf0lJoB69oqIEWvIIO4752TGsZRmQ=;
	b=Eona+QosltkTXocNKenRvjsdiUpgs7L8hlO5jRsVNnnskTpbi3kg6NJneMhMdrUuJfV+5C
	F7NKu/s0pqtfcxfCSdY0PWjGeZeyDfLBVyO6SG667KH9XbxB/6kuHaC88FK8+FzPgMol6b
	V0fXAtxFKOo4I3OXg+m3mfryd9FOfuc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-467-IVFw_dBqNIyD8FblcgMYsQ-1; Wed, 08 Dec 2021 08:09:59 -0500
X-MC-Unique: IVFw_dBqNIyD8FblcgMYsQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2805C192CC45;
	Wed,  8 Dec 2021 13:09:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 480717095E;
	Wed,  8 Dec 2021 13:09:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8CFC218329B3;
	Wed,  8 Dec 2021 13:09:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8D9bLU007706 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 08:09:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 90AE72166B2F; Wed,  8 Dec 2021 13:09:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B4C02166B26
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 13:09:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A82D53C9A010
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 13:09:34 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-189-lk-A6aGZMuO4_VLHSYmFew-1; Wed, 08 Dec 2021 08:09:33 -0500
X-MC-Unique: lk-A6aGZMuO4_VLHSYmFew-1
Received: by mail-qt1-f180.google.com with SMTP id a2so2074596qtx.11
	for <blinux-list@redhat.com>; Wed, 08 Dec 2021 05:09:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=KKdprK1SBrM7sKkwvaEYyT6Fw0g1y+sw8m/In94uxbA=;
	b=qfCBzt6bwJlI+Q9rsFjNuEZhbmzioXOa/LxgR+5jyyKkdZy/RgESZLW3T3QbzVCHDy
	3pixaKyouRVvLOtI2NHMuSe5eNEu+f5uZcFLXvfHTl02gQ9yh2AkWeTzb8mZVt/LXG4Q
	XrdV8NIvVVJi5Y41plofXsbDb8E7Dn4tg3Cu4jqqcAP/xwHR7Os0WQMBPCsI/o0ExfUZ
	nU7E9NAbJWtHtnGZaJg1VwpI3OtAxWVlvqZa8+2fxwoFuYNiy6NLmn8KTQtWcdAwT9dY
	2qEkrNlppCEtH5+msaGMy6B+TunwtsvqbRgjXQHA/rmqBEsNtf4MN7v7I1JK8crYVeNS
	PnXA==
X-Gm-Message-State: AOAM530o/qaVfeOpE7g3IYW5F7xmeA5G7e2FvJleSd7IsanAnK6zPy7d
	nuVK5QJrWQf7HNaudQxfzqVNZcXY2sQ=
X-Google-Smtp-Source: ABdhPJxcJBRHGZHBRFp8YX0mBh6P8d+0AlPu5Rl9WGoFN2ZVH/tOzn3P/kQDc9Paq7WZUUCcX+eFbA==
X-Received: by 2002:ac8:5914:: with SMTP id 20mr7674570qty.409.1638968972628; 
	Wed, 08 Dec 2021 05:09:32 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id g5sm1417856qko.12.2021.12.08.05.09.32
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 08 Dec 2021 05:09:32 -0800 (PST)
Message-ID: <2c3a935e-00dc-598c-062d-d478fd26b54f@gmail.com>
Date: Wed, 8 Dec 2021 08:09:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Other lightweight WM?
To: blinux-list@redhat.com
References: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
	<CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
	<e6a251f6-5a33-b88c-6bc4-b26dabcc4d9d@gmail.com>
	<CAO2sX32V3Qw88EgrBFWTTr7WaVkusPC6bfgYTqyfwk-jbw0ioQ@mail.gmail.com>
	<5235dc4b-a473-d903-4cf4-d849d8b1aab3@gmail.com>
In-Reply-To: <5235dc4b-a473-d903-4cf4-d849d8b1aab3@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Jwm and flwm are only window managers. You need a menu or desktop 
application to be used as a launcher, which is part of what Strychnine 
provides. The benefit of Ratpoison over window managers like flwm or jwm 
seems to be the programmable key shortcuts that can launch applications.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

