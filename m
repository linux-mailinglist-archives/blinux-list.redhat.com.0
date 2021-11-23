Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3038645ACAD
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 20:37:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637696277;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J8rkdrbZzuoGU30heMRBiGZVMUmMsLl+gheI17iUCDc=;
	b=MqPE8/T4wGODeTDedM09tyM4/I263SJuMj5Z9YqJ6pnXTVzxmRFKaEkr0BXEM+j63x41xV
	ssy3iVUBDN5dsruhxXdxocRdh4WFUlR6l7kClozAQPrhNQaRIC5sAo0JfMEB8DNneq58wI
	z+ENPnm7gFPI+FwKP+EW5JjYmec5zZo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-237-WCdDXa6EOriw7gtpcxp4dA-1; Tue, 23 Nov 2021 14:37:54 -0500
X-MC-Unique: WCdDXa6EOriw7gtpcxp4dA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F23CDF8A3;
	Tue, 23 Nov 2021 19:37:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 886B260843;
	Tue, 23 Nov 2021 19:37:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 54A2F4E58F;
	Tue, 23 Nov 2021 19:37:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANJbeeM004742 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 14:37:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2D9BB4047279; Tue, 23 Nov 2021 19:37:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 299B14047272
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 19:37:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F26B8001EA
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 19:37:40 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-371-xmQnH-w9OpqgOoqPMcxioQ-1; Tue, 23 Nov 2021 14:37:38 -0500
X-MC-Unique: xmQnH-w9OpqgOoqPMcxioQ-1
Received: by mail-qk1-f181.google.com with SMTP id m186so291838qkb.4
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 11:37:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=QFm0ypiZlWvLs2p3iJmTPc60Mi3bTYYR7WExWmBFgVQ=;
	b=axcGFvPRf7HWBNE/hWAxIaPmJcEtYUio260seIrjhFeD3SmRuNAghz3x/yn9B44YkZ
	k0uzAIp5F3oeDA+oC0W3sHtvzIZf7LtI4Q/czyOUAAFBLuZDy8i0jRMPyT7afnclm4yA
	Rxt9CeNaK5TTU2Kv4klPA5C0onKJWVxBpBaxArJMT0XFHSkle8hESh7yX1GP8CpoweZZ
	2GnSeuN1fScyUvdywpj8AXZeUzKFOkiK1bG9Qra4fmKaFLcGXBmKw0nYm++d/o3sFTaF
	FNOKXWc857FzBM2ncj2C8a3kQHjw7FWvtrT7Kj7K8MlZ8hRGdR8Cyzwmr8O67lcbz1Hc
	KP6g==
X-Gm-Message-State: AOAM5335dQvOgxymQvHcxSAc2KtmnZrlhxhUuhjdrGO96jiKcsktG0ju
	f/hpoAegpnafRutdGfEgOnZCMllomKM=
X-Google-Smtp-Source: ABdhPJxb2klMvESQIosLVrQkHdxUNP9GbNyMe2Hl2LsmdjhVFJf8n0i23E7ZKAVv0JGqGaBiy+Z0pg==
X-Received: by 2002:a05:620a:1004:: with SMTP id
	z4mr7434189qkj.243.1637696257594; 
	Tue, 23 Nov 2021 11:37:37 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id k2sm6282315qtg.35.2021.11.23.11.37.37
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 11:37:37 -0800 (PST)
Subject: Re: In the mood for something new
To: blinux-list@redhat.com
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
Message-ID: <5f7a6962-c4e8-4e5e-a3fd-f5afb304df54@gmail.com>
Date: Tue, 23 Nov 2021 14:37:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The release may be the best thing, and 35 is the newest release currently 
available. So for now you're good. Rawhide is currently numbered as 36, though 
that release number will change as soon as 36 is branched for alpha status. I 
would say stick with the 35 release for now, unless you need to test rc kernels 
and such. The upgrade process to 36 once it becomes available is much the same 
as upgrading to Rawhide. Just as a test, I did upgrade to 35 before its release, 
then to Rawhide, and neither upgrade broke my install, though you don't get 
speech during the upgrade process, but then nothing is on screen during that 
time either.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

