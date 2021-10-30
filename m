Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C92440C2A
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 00:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635633309;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nQcnnAKuh5TlxR5ISqwpCR602/HKcI4Eh8MoHDVuBbY=;
	b=epe8usy19Rdogdg6a3qKJF5rh2uEP6cEuKIxl4x4x/K1LDFx4UQSC0HBWVPT86D1AliC6C
	5Kkz3fE1Yvjp6rw6w2LvWhn62rMgWNOMHXSUv/18zRBABHb8oyquDbAW1obiILKQWOg+q/
	w3xDZDJd5oYcrjZqx3REH+h3oRS/jFc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-203-ETkbroOEM_-11x1a1pWEpw-1; Sat, 30 Oct 2021 18:35:05 -0400
X-MC-Unique: ETkbroOEM_-11x1a1pWEpw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C311E802B7E;
	Sat, 30 Oct 2021 22:35:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3AF61045E9B;
	Sat, 30 Oct 2021 22:34:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B8DD44A703;
	Sat, 30 Oct 2021 22:34:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UMYnpc030798 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 18:34:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 55FDD218014D; Sat, 30 Oct 2021 22:34:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 509852180150
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:34:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64A6F8001EA
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:34:46 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
	[209.85.216.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-326-h5bRXyFcP_iEL5EvohwjCA-1; Sat, 30 Oct 2021 18:34:44 -0400
X-MC-Unique: h5bRXyFcP_iEL5EvohwjCA-1
Received: by mail-pj1-f45.google.com with SMTP id
	y14-20020a17090a2b4e00b001a5824f4918so6590813pjc.4
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 15:34:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=CJyEWlOd3NafAm02JdQ5jF7Sc0NqShyEqvmvw1UtA14=;
	b=EEay3A855iGnNs8Otn7lJOYfogw5G06IXOhD+0aefRioZNoB6PMtZS086aairTxMqF
	kPQrzIJVbuRCOAa/Liy9Ymwz74cNCE0cMYrvxpXQK5XiDWxFb/6zkML3N4Jks6OA2xu6
	kj3zEwWygUtKeRqjhg7o3T8/m61QMHajvArLMld5s/VmPZtiCgcZYAEct8tW2veHmvFQ
	GZe2CQcfL7XUT4Rofh3+mZL5oJcyv07gcVByS5qQjs1rla31q4xg1SoZN5jBXibhMT5d
	lSytlw58F5GB5/iYrzCqCI/PSnVWE0/m1jcejRYYO4P1xXGP0sU983KV56TWfkxGFUBk
	J34Q==
X-Gm-Message-State: AOAM531Fhai+utNuegR8HCEwCO7/Qro0KK1Gsar/zif/GV2X3SFPN7MK
	qZwn2+pY+V0ARpani6+qHrHSpIDW4hgICg==
X-Google-Smtp-Source: ABdhPJw5PWOO7t+mKXpW8syEObBFrqGQL8+MXm5I+Do5MmDIeUfn3M711WRClR9DSYa06SzvxiYlFg==
X-Received: by 2002:a17:903:41c1:b0:141:c15e:d3c8 with SMTP id
	u1-20020a17090341c100b00141c15ed3c8mr5913505ple.52.1635633282971;
	Sat, 30 Oct 2021 15:34:42 -0700 (PDT)
Received: from [192.168.1.103] ([103.121.18.19])
	by smtp.gmail.com with ESMTPSA id
	h35sm8891346pgh.71.2021.10.30.15.34.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 30 Oct 2021 15:34:41 -0700 (PDT)
Subject: Re: System image backup?
To: blinux-list@redhat.com
References: <ae005db1-091b-d05d-250c-3b54a71765b9@gmail.com>
Message-ID: <81796f3a-548f-fc4c-cd9c-c423daaead0b@gmail.com>
Date: Sun, 31 Oct 2021 05:34:39 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ae005db1-091b-d05d-250c-3b54a71765b9@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I use timeshift.


If you can access shell after messing up, you're just a few steps away 
from restoring your system.

Otherwise you need live CD.


https://itsfoss.com/backup-restore-linux-timeshift/


HtH

On 10/29/21 4:59 AM, Linux for blind general discussion wrote:
> Dear List,
>
> Is there a easy and accessible way to create a system image?
>
> So if I screw up something, I could restore from a inage.
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
Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

