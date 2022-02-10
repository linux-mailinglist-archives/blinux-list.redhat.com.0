Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 694DE4B041F
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 04:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644465425;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CC5zjXxW3BkYuRZCiYpxYrT+DN+0iV/7u/adg0co0ww=;
	b=bncBzYa91MklyGLFD8zSEnDC3Gyu/Pkdw9Iuryn+rGIpatpMoEauxlu1OGSGLysryDmieA
	15FT92Fvubv1Yx+bdL0izBCj+Iuooh1OqP7XJrRpuXANPkqMkUyPXuB1fiKfxk6+8g2VAp
	jOmwY0S3FflWfq7gpi2/RtzGpnhbjQY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-T4KP33GlPLWiVkSHC_gH0Q-1; Wed, 09 Feb 2022 22:57:01 -0500
X-MC-Unique: T4KP33GlPLWiVkSHC_gH0Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E07D6801B2D;
	Thu, 10 Feb 2022 03:56:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD7ED6ABA2;
	Thu, 10 Feb 2022 03:56:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D45F54BB7B;
	Thu, 10 Feb 2022 03:56:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21A3nipN012881 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 22:49:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AF593141ADA5; Thu, 10 Feb 2022 03:49:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9111B141DC2C
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 03:49:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78BC23C01DB0
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 03:49:44 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-18-In7dqcDEOH6z7VefY_2bcQ-1; Wed, 09 Feb 2022 22:49:42 -0500
X-MC-Unique: In7dqcDEOH6z7VefY_2bcQ-1
Received: by mail-qt1-f171.google.com with SMTP id g4so3264305qto.1
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 19:49:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=9yr8wKeJ6/9xaKhgJLE0M/eFflpfN5qkq8BiKk12lLo=;
	b=lvZi6SGaWe/vaDo80s7PupPZFeTCCG0ySO3fhpeVxzlIKhCNcq26/hJHP5YVuw25Fw
	LAhVGq4uSqZDQypMGJQ0h84l5tB1irVfeOsK6vs9TCX+RB1Qqo1y8o0cKobctVErgIMt
	p3c1AinQ/ixdxgQM0BVvrjyHrEdHXLLE0uJ/833V2fmpsuEqTkF6UM9uJ8TNL490XPqM
	8mNFYXL9Scp4NEnuCQiFlDQPobpxZd6/7od8Qu9hNHon7IEXu9d0RKTHtiTH1Xm/MMSb
	Eyr7ZDH0TQq1ryE8v9GTvzN6qrPaZHMZTKCv3B7WSK9+XdtxfHor2h3LlTpvvM1yF3PW
	objw==
X-Gm-Message-State: AOAM532C7Z1bgeP2y/95P6y9lVm54bTI63W1Fu7o7snheOND/Dzjz8NN
	CrA91dY9SZEO8+rMB8n9BFCmCvItmPA5eg==
X-Google-Smtp-Source: ABdhPJwIWZ6DH9E/0TJ41R28R95T3ZomGHvk31t0pxB6ModLikXCXX63DWsjCn9Zop8AUhOtRpPMeA==
X-Received: by 2002:ac8:5e49:: with SMTP id i9mr3565697qtx.576.1644464982283; 
	Wed, 09 Feb 2022 19:49:42 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	m3sm10069867qkp.100.2022.02.09.19.49.41 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 09 Feb 2022 19:49:41 -0800 (PST)
Message-ID: <71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
Date: Wed, 9 Feb 2022 22:49:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui TTS has blew my mind!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

The samples are HTML5 audio elements on the page. They're fairly easy to 
download, but only on browsers like Firefox and Chrome. I don't know if 
they have fallback links for text-based browsers. My website has 
fallbacks, but Firefox, Chrome and other HTML5 browsers hide them. I 
didn't try the samples in a different browser to see whether fallback 
download links are present. The youtube link does offer a fairly decent 
example of the quality of speech and sound though

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

