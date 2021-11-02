Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B43B44254F
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 02:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635817551;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=meDKfAFL6PEDRbSS/5voQb68QBqlBGmOQFUa22az+EA=;
	b=iG8KBR/FfeaUFRxYyImWhuUfGS6UQSZVz6fft0x7OZxNCMp4c+nxNG0Nw+HvlTtH55QFrP
	afIySKzzuNEjaxYPSQk412oWuWXMZSXvZsrM1+/euSUWrXqg92OT59y5CUXrpEPa6TtPl2
	yEN4JXAHQ2VuZjCLdzR0+1NscNRnQqs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-598-FxB39adPPKeeYr7isGLz3w-1; Mon, 01 Nov 2021 21:45:47 -0400
X-MC-Unique: FxB39adPPKeeYr7isGLz3w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA5AF802B61;
	Tue,  2 Nov 2021 01:45:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BD36101E589;
	Tue,  2 Nov 2021 01:45:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB79B1806D03;
	Tue,  2 Nov 2021 01:45:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A21effb014660 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 1 Nov 2021 21:40:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2EFCD40CFD10; Tue,  2 Nov 2021 01:40:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28E6840CFD01
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 01:40:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F7E41064E6C
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 01:40:41 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-572-Dfbn0NCVMkOWTigzVbfJEQ-1; Mon, 01 Nov 2021 21:40:21 -0400
X-MC-Unique: Dfbn0NCVMkOWTigzVbfJEQ-1
Received: by mail-qv1-f47.google.com with SMTP id gh1so12396141qvb.8
	for <blinux-list@redhat.com>; Mon, 01 Nov 2021 18:40:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Man2SpyClmGorA2BD50hypJrpko051sqnQSW0yWdVO8=;
	b=mhXPdfr+eeuBUqXz9MMYctuQIxd97CigwxaZBiGRDHN3owSCGSDkLTiNSi85X3zf4f
	qfnlO8Dvpalqb2Osbi/CroJMgC5Hadq+crombNFoVePMT5731JkVxKEXpq+SE0Rpz6FM
	MsP1P+lPyWqKHMsObMfzYJMOMUxZymEqGcHnpFTLrFbQEAf66SGiVTW+uEThKPdkmWPp
	88mH7RM9vPWjbRD/mZb5aAmkqn3azKd8lovAi66T+ZQH4qLCvF+dXkTlXy/Rap5PdPPo
	hxi3MdiwwScH2iVhTXUfyX+D7ENVNZVIpDy3AIUfA/buMv3UNTuMRC70iqtqOOS+f1+H
	UvlA==
X-Gm-Message-State: AOAM533nCJQGeopCeLYXEcxI5uRZ7xyPZVIlABNYYEZQ+plQ0w0FOVfU
	M30o29qjUY5Mvw/mDGczxntBTyH+9Ck=
X-Google-Smtp-Source: ABdhPJyE4D6Am49Ks7b7CtXgYfh/RYowIPL+NgdQsCd5mW5OxRkN99j+yDxgXPszHeNaclHbftFLfA==
X-Received: by 2002:a05:6214:21a5:: with SMTP id
	t5mr5362612qvc.46.1635817221358; 
	Mon, 01 Nov 2021 18:40:21 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	n15sm8532763qtx.33.2021.11.01.18.40.20 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 01 Nov 2021 18:40:21 -0700 (PDT)
Message-ID: <f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
Date: Mon, 1 Nov 2021 21:40:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
In-Reply-To: <C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

It sounds like it could be interesting, but I'm a bit skeptical of 
anything that starts by saying that the existing a11y stack is so poor 
it's painful to use and compares itself to other fundamentally different 
OS's which have worse a11y problems. I've personally used various Linux 
OS's as my daily driver for many years, and I find it easier to use than 
the few times I was presented with a different OS just for printing or 
partitioning a disk for example, which I found quite painful to use.


I feel like instead of pissing and moaning about the state of a11y here 
on the best desktop OS's currently available, whoever is behind this 
project should contribute their obviously significant resources to the 
development and improvement of the existing a11y stack, screen reader 
functionality and character recognition options, and don't try to 
reinvent the wheel. I do believe that a plugin system already exists for 
Orca as well, as well as a rewrite of the code to make it more modular. 
Again, it's better to help with this effort than to piss and moan about 
the sorry state of things that already exist, all while trying to 
reinvent the wheel.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

