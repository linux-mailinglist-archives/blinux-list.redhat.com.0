Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2382647CBBF
	for <lists+blinux-list@lfdr.de>; Wed, 22 Dec 2021 04:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640144462;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7sGG9vC2mpuLV6y8+Ncuphy+KSAbO+LQNmoBrNZU3b4=;
	b=F136FPXq25wKGBuP7vtBCqMywPJLJ3MsLWdzPsqbnYi2rS4Tr1GkF09/lBC9WKpIImpcuE
	n4IUgsSg5xeQhLUuYyYlnKdD882c/IW7MbUj2eXiXlMxmTWWUtwKWNFPLvbu/bhBexae0I
	KCL3aJYwajsWxyETk1FKfg12D1v1y1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-562-0d8TZ4SbNhyammaceYfaZA-1; Tue, 21 Dec 2021 22:40:58 -0500
X-MC-Unique: 0d8TZ4SbNhyammaceYfaZA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4EF11023F4D;
	Wed, 22 Dec 2021 03:40:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3444F1057FAD;
	Wed, 22 Dec 2021 03:40:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE9094BB7C;
	Wed, 22 Dec 2021 03:40:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BM3bQAK006379 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Dec 2021 22:37:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5145B401E57; Wed, 22 Dec 2021 03:37:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D998401E56
	for <blinux-list@redhat.com>; Wed, 22 Dec 2021 03:37:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6A683804073
	for <blinux-list@redhat.com>; Wed, 22 Dec 2021 03:37:25 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-601-OA_OCAEUMPySHQEskKia9Q-1; Tue, 21 Dec 2021 22:37:24 -0500
X-MC-Unique: OA_OCAEUMPySHQEskKia9Q-1
Received: by mail-qk1-f180.google.com with SMTP id a11so1045418qkh.13
	for <blinux-list@redhat.com>; Tue, 21 Dec 2021 19:37:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=0cKJzLVz7qn3f7kxALqe0B+7Ordj1nZ6vcDm7AOKJgU=;
	b=n2e1Zndqv8FPCReFXZoVrFawPZCMYDXbzKjzmklykbHG1WwRSwBIcQipL8fb2pUmyc
	AAYRcFLbC+gvmWMGmKIUJRvQmtMH9m9MFEETsnsT7yCgN2/P9JSsoSLuAtC3AeGryiN8
	ISLTwC2vn7PoWVrJniosIIeKBaANAW1k5rxxeJi8IUoHV/0uoYRkHvKJL3uH+2lhBID0
	l7vgos5vCI5ZLxzFpn8PgcKDpMQKNoFgBA9DCUNeuCFhzhKvGaAsu7bOPChjyI20ZAHm
	WTU18qHPCAknf+O9FePEb+Z1pENNZ0uukOM5iWmDlRxvFVy4kLD0mMPIPwsTkuAqRpHm
	toeQ==
X-Gm-Message-State: AOAM532744B2yZog8EfQbDdXFHLAShdGPcyIHOW5GzhwsvnE3S2w9wlD
	lwwRBUX/LyWom3jRQa73B+lpMD8rYOI=
X-Google-Smtp-Source: ABdhPJyN3FEyW5kJkLJV+hic0UMG4VRJb+qgBk3P/MAOrWTX/5Lr5CPTPG9ZR2T9MTOPSnCOdTpIsQ==
X-Received: by 2002:ae9:f11a:: with SMTP id k26mr964749qkg.444.1640144243491; 
	Tue, 21 Dec 2021 19:37:23 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id
	y10sm804564qkp.128.2021.12.21.19.37.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 21 Dec 2021 19:37:23 -0800 (PST)
Message-ID: <e3354b64-9f1e-665e-f521-94f24dae8193@gmail.com>
Date: Tue, 21 Dec 2021 22:37:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Dealing with seemingly blank combo boxes.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAO2sX32o7d5EwMkWRVs4fQVjOFLkGmhNotbmO4+QGNkw4vAeCw@mail.gmail.com>
	<444374c1-a744-f908-a6cf-aae16d207cee@gmail.com>
	<1894fbcf-17b1-89f5-dea7-26cfbdfc723d@gmail.com>
	<CAO2sX30FZWQrtuZShkrpytrr2NhbB1n=mfUt=BH=o9hTDF4OLw@mail.gmail.com>
In-Reply-To: <CAO2sX30FZWQrtuZShkrpytrr2NhbB1n=mfUt=BH=o9hTDF4OLw@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

So when selecting a state, instead of trying to scroll down, since 
you're looking for North Carolina, try typing nc when the dropdown box 
is focused. If that doesn't work, North Carolina will be the first state 
that begins with n o, so try typing no. Then repeat the steps of 
pressing the enter key, toggling to browse mode, going up above the 
dropdown box and pressing the letter c to get back to it. If the state 
is listed as NC, the state NC should be selected. If the state is listed 
as the words North Carolina, typing no should select it. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

