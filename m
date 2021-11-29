Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B005D4615B0
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 14:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638190889;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qdOODoPYe9tDsr6bxo9Gqxuua2LLCnr/tYvseBhs7OI=;
	b=P/6Lt9X9h7UKqLiF/KC4e+dcT4sPaHp7vWbMyCyS8PL2zrH4wwjKJC5NpWQxc7homix3yx
	WUxVlmn2AxRd/VSK5nHg7kk86abtdxicDnXikMmNGsNO+mPV1TR40r56Icg4YqLTVSpQw4
	aeHMb7V1HjlYtvaV58lY3ePgIpFaRwE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-509-V1mVpmAVOoaPQUqvAKVp6Q-1; Mon, 29 Nov 2021 08:01:28 -0500
X-MC-Unique: V1mVpmAVOoaPQUqvAKVp6Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11CF1363B0;
	Mon, 29 Nov 2021 13:01:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02ABF5DF2E;
	Mon, 29 Nov 2021 13:01:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6146F1802E2E;
	Mon, 29 Nov 2021 13:01:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATD18xO025791 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 08:01:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B5C9251E1; Mon, 29 Nov 2021 13:01:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B05CC51DC
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:01:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCF03811E80
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 13:01:05 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-122-sE2Ts1oZO_O4-B3tBeENWQ-1; Mon, 29 Nov 2021 08:01:03 -0500
X-MC-Unique: sE2Ts1oZO_O4-B3tBeENWQ-1
Received: by mail-qk1-f173.google.com with SMTP id m186so22712985qkb.4
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 05:01:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=gXEYtu1zh3eFDJGOIcFSVKXz7J8wLo50XXRVaxd6V1M=;
	b=FLYU13jUkHGcw6pQBHUrgCqjlgHsCli65iGyK8vz3v2qFjjZwlGCYp7lR+c5TVA24H
	0aWrY9OR80bkrv3ieC+B4TeV07pL6CTW9CMWBW/D8EbQU6Q8d6U2q/5pWkPfYld5GYDt
	edunf6itvwfmPdy3dBz4trPYIdE2L0mofBSO7Teg8WpBb0H2kuf9lV8nDdihKPPwiMSL
	i378vqCBjqKjVupjy4jviIeZhcXLCNKbWy3mzSbAtAy5g5TfkMddeY+QbVFfWGOGE7x9
	dhMG/6SekWBRIzntZsdpuWCN6QoVXVVUD0lSgJ+2SPBwPeQZkBhjmE03qQmUk6TbH10N
	u0Cw==
X-Gm-Message-State: AOAM532ugmhI+m3cWh73N4d+4vl9mpuorRit0ERk6vKqpYWGbSlvKr5w
	WF/oMUAiPsn3iVOOEIqsOU/JzZ3+uiQ=
X-Google-Smtp-Source: ABdhPJxE66N1/IXkjl5K6q9+7G2sbHMPgH+f+oz4jYHZMSHOrFgvPtwOnT9QNzWJE8kk5o0VDoIkag==
X-Received: by 2002:a05:620a:2a0e:: with SMTP id
	o14mr38771396qkp.461.1638190863224; 
	Mon, 29 Nov 2021 05:01:03 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id s7sm9169927qta.31.2021.11.29.05.01.02
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 05:01:02 -0800 (PST)
Subject: Re: Pipewire and Orca and audio
To: blinux-list@redhat.com
References: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
Message-ID: <15aba746-8692-1ead-7c9c-8fc226bdb269@gmail.com>
Date: Mon, 29 Nov 2021 08:01:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Speech-dispatcher seems to work best with pipewire when AudioOutputMethod is 
alsa, but your mileage may vary, since you're using a vm. It seems that virtual 
audio hardware may not play as nice with pipewire as real hardware does. Also, I 
have had no problems on bare metal recently using pipewire-pulse and 
AudioOutputMethod=pulse in my /etc/speech-dispatcher/speechd.conf, so it could 
be related to the fact that I'm using different hardware now as well.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

