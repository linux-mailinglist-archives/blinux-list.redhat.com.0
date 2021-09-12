Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 64EBB407FBC
	for <lists+blinux-list@lfdr.de>; Sun, 12 Sep 2021 21:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631475507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vs3o3hNrXyb1uzYokrLCTTIV3sWjJyMs0eaUzsWRS6w=;
	b=FI7r+uY8NF4VfYRAKFn9num/grjsKdI52ZETsnvkQVjY365xpL1TphZdlTkUUe33wRiMp4
	J8KzxGoRb1eQZCWXJH+rd135ZYO/Y3ojsOZMAEoXfAZw/Hxq6wGrmxuc64gaA6w0rKz6QB
	cnzM7NFzrRIFKgeK77F9414rQRrmkvI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-dnxdrMMoNrSPOj_k4rdtTA-1; Sun, 12 Sep 2021 15:38:25 -0400
X-MC-Unique: dnxdrMMoNrSPOj_k4rdtTA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 430B88145E6;
	Sun, 12 Sep 2021 19:38:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19129102AE4A;
	Sun, 12 Sep 2021 19:38:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F106C1803B30;
	Sun, 12 Sep 2021 19:38:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18CJc5EO006142 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 12 Sep 2021 15:38:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BADA32166BDC; Sun, 12 Sep 2021 19:38:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B63582166BD9
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 19:38:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E8601881431
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 19:38:02 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-393-yJsClReFNxejEvz7eFE37w-1; Sun, 12 Sep 2021 15:38:00 -0400
X-MC-Unique: yJsClReFNxejEvz7eFE37w-1
Received: by mail-ot1-f45.google.com with SMTP id
	i8-20020a056830402800b0051afc3e373aso10379320ots.5
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 12:38:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6LjFCKIEm6eZXXbtfT7BkM5lFIGxDkg3xqkWkswP88E=;
	b=NdDg72q+6vPP+H9AHMQnx1SAkXE8tvcN5bhDWX1VLghdNNZpIPEtC+ctEikxnQ1kik
	9uM5Vnjf0q97RPMtkLpjaMyno5HwQiYG6ZdhvKnz/Nkf2YmAbfC3svqVctFPtJyLrqCI
	ivUliBNBQNIvCmMYJ4IdPbEALY5yalCfe+BNECBiR+XUoVR5b/xIVcdxbPNgNPatkF73
	/rM24hvso/EaFtDxQU7oosU3tXBSzYJjYE9qUKefCtnGc/uTwasG6Nd4936XE5p9RwTH
	VwGi2BRjQt3wkZDXdot/+FRjqwCLzkDrlY7e1sa+p20tWfLQC1rXWLuTGFPupEzpM3dt
	B0Lg==
X-Gm-Message-State: AOAM531eTK651WT7Y0MzYFET5cNJtQmGVsMG+uFQn8dB8IoNFPnpiLk8
	ZO8WtQcltmw74Tjd1en2JuFuEVQ64/qKdg==
X-Google-Smtp-Source: ABdhPJyeiD7wAUNuLZtBIppOsL1Ux4SCbyKeB4g1PLhZu9nxQBhmol3lTmC5Ra/1vCZ92oMDHzN/fQ==
X-Received: by 2002:a05:6830:156:: with SMTP id
	j22mr6739963otp.75.1631475479784; 
	Sun, 12 Sep 2021 12:37:59 -0700 (PDT)
Received: from [172.20.10.4] (49.sub-174-255-130.myvzw.com. [174.255.130.49])
	by smtp.gmail.com with ESMTPSA id
	b3sm1200311oie.1.2021.09.12.12.37.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 12 Sep 2021 12:37:59 -0700 (PDT)
Subject: Re: best gui vm managers
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <20210912.162536.058.3@[192.168.1.100]>
Message-ID: <9a9fed63-9a55-6f6d-bf88-3503003e2053@gmail.com>
Date: Sun, 12 Sep 2021 12:37:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210912.162536.058.3@[192.168.1.100]>
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

vmplayer is good

On 9/12/2021 9:25 AM, Linux for blind general discussion wrote:
> I'm looking at throwing another 16 gb ram into my linux box, and then switching over to it fulltime, running a win 7 vm for those times I need windows for something. What's the most accessible vm manager? VMWare player? Virtualbox? I'm on arch.
> Thanks.
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

