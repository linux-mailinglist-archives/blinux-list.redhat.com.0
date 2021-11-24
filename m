Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B3745CA0C
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 17:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637771411;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4hqN4c0Lq34Xau9R8NhbaxqaE4wv9/aXqCHEIhrWWBU=;
	b=F783/puPUyEEBXf7ALScrS4xo4AoByoZR2DFh+0XVZIPzHZJwWUGpRN0WU7M8y6ZYWXmnh
	qoqsaQ89TG9Z3hp3VJmgOcs6ILgQ23/pbJdNMytVBccA5IwlejyUCJneAy4njKXbFl2Lp+
	OBxhvQH7802FKOJa3VGzc0751vyymAs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-147-TbYvyoMRMf-_hBJnDGa5zQ-1; Wed, 24 Nov 2021 11:30:07 -0500
X-MC-Unique: TbYvyoMRMf-_hBJnDGa5zQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04A3483DD21;
	Wed, 24 Nov 2021 16:30:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17B6B1002F12;
	Wed, 24 Nov 2021 16:29:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 982411809C88;
	Wed, 24 Nov 2021 16:29:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOGTi9v031987 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 11:29:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B459A40CFD0E; Wed, 24 Nov 2021 16:29:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF77B40CFD02
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:29:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95D681066558
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:29:44 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-135-dLi3_SsAPsqOHUW8FGQTaw-1; Wed, 24 Nov 2021 11:29:43 -0500
X-MC-Unique: dLi3_SsAPsqOHUW8FGQTaw-1
Received: by mail-qv1-f53.google.com with SMTP id kl8so2169291qvb.3
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 08:29:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=1eKwHZ8TqYIhR/FpkA8k6EgcAnVEvROvx5O8gpHudXo=;
	b=1z05lCCjg+Aj6bao1Ad7Fvl6IExgcUsXrhFIqeXnm0fGxcnp2ocTHZff+paiPI7sBT
	rEewzJevPMN9pORKwNlENotqsa/IIUVg0pFei4NBr89fUbdyX7tEVF+/kuXItLZ9B/xT
	Zsx1EUqHZRPWr/+ABxyj9U+772qj9084+Z2qcOMXA5JDrDYvIRi767wlrBoQLTxNTTMD
	kmPQBbESoYC9B+kajcVZQvv6p3lcz3rL8/m2SfZy1ht1rbm2uhFNG8CPI0kkMVAtp6Eo
	8Y4xrLBtFdF3U+Twu4M5t7/kIzyCZHfOQ9uwKPRfpSThDKYJh0ju3dOFAlAkB1jAuedh
	Qwlw==
X-Gm-Message-State: AOAM531Vs0hh5wJylUunWAMgVAP/3GK86gX6TTV8cjM+ZLiiW3Zb9U2S
	k3JOxYE0bkz8TdZUYZ1tzuS7cosm2h4=
X-Google-Smtp-Source: ABdhPJxH4X9FisWMO1IBbvF7m0ii8/VlIL/pe7GMDiiMrnDb/RF+/fnPRhi5uE8ej2OkBf6MlxtAfA==
X-Received: by 2002:a05:6214:29e9:: with SMTP id
	jv9mr8860618qvb.67.1637771382430; 
	Wed, 24 Nov 2021 08:29:42 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id n13sm120248qkp.19.2021.11.24.08.29.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 08:29:42 -0800 (PST)
Subject: Re: In the mood for something new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
	<b2d6ddcd-2ef7-1425-de0e-78a0c8d5697c@slint.fr>
	<97f47bb7-fcaf-aaf9-0732-0592fd341f18@gmail.com>
	<adaf7c1b-9937-9ad8-3520-78147036f9ab@gmail.com>
Message-ID: <930313f5-77d4-7262-15f9-9efedf3ad793@gmail.com>
Date: Wed, 24 Nov 2021 11:29:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <adaf7c1b-9937-9ad8-3520-78147036f9ab@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes. You can turn Fedora into a rolling release. You just need to upgrade to 
Rawhide. Actually, right now, Rawhide isn't really that far off 35, so it's 
safest to upgrade now. Once you have Rawhide, you have a rolling release Fedora, 
and it's more stable from what I've been able to see than what Solus was when I 
tested it.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

