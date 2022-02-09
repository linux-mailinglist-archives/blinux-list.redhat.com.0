Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 605D64AF289
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 14:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644412877;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hweqjb1XYV4zz7esbXBRBAxDZXeNRuBUmZVB48dewQM=;
	b=gKt04wlIBO1i4Mux/+ItVwWiUKKsU9jTa5lhnI+RVzMgaLjVLP5VhILxtWAJ1nUWmhyzK+
	JVBQKo8wE1m3mdKTWI8pKcAmOOSOeP2ryKLnXkMo/Y13qNb9+5jlSAGAAZ9jVNiaaYVwJY
	iYo8PWwHrRVqEnbTvthjOSrCPOmHgM8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-nBQIesGYM3Sf-CWMGYAv0A-1; Wed, 09 Feb 2022 08:21:12 -0500
X-MC-Unique: nBQIesGYM3Sf-CWMGYAv0A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0FE2C51086;
	Wed,  9 Feb 2022 13:21:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE13527CC4;
	Wed,  9 Feb 2022 13:21:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 593821809CB8;
	Wed,  9 Feb 2022 13:21:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219DL2Bp020796 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 08:21:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E4A39142B968; Wed,  9 Feb 2022 13:21:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E09601410F3B
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:21:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6CB4802E5B
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:21:01 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-367-0KAVjnTQOlaXrBV4_f0c4A-1; Wed, 09 Feb 2022 08:21:00 -0500
X-MC-Unique: 0KAVjnTQOlaXrBV4_f0c4A-1
Received: by mail-qk1-f169.google.com with SMTP id j24so1504119qkk.10
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 05:21:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=W/oMYWDabF3vua1kquoWPxNAV9a8y1CtR4ZcTLocFTs=;
	b=uR4cFeTPr5ghDcbMMBgLO/qOg8u0cZNu7pNMcxEsWv+4ZkOAMCkvBdXwDej2kVs/Rq
	cLOxacQfsYEC+wutEklib9gK1Bean3M0UUU8qzx79kOcQe+d10klXfcs1oGyt81GMMG9
	ky8Z+DSTuV2lTHhZo91d+8Q7/Kg9vjUulzRp4GUfkLvGNQ8zyg3+vlNkOFqzkZhjPMnA
	gAUodp27aTqTA0kPQmnmuuuBWOdZp13+pi9InW8weeY/XjYD+GqDsmt7tDO/LcO8sNT8
	S6kQptzpur5G7hYWpSoV2rrCJJIOCrx8luAD37LUk58OahJORbqqOuEUmEqMipGxMkNs
	gccg==
X-Gm-Message-State: AOAM53295nUrvjEkOvbjoO3NBhv+nIFF2WwbeGvYqtweX4Eo95tMyJYn
	k2IYVS40Dn2StnxIin5rQTqoDyxjfN6Axw==
X-Google-Smtp-Source: ABdhPJxfrSXcq6TMWHAtVfrAQ08pY/ROyUZz66u9INZR/Gq6iOGdfQY1X0mS/yugIAUxeTcebltlIQ==
X-Received: by 2002:a05:620a:110d:: with SMTP id
	o13mr1018104qkk.170.1644412859685; 
	Wed, 09 Feb 2022 05:20:59 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	u63sm8339839qkh.43.2022.02.09.05.20.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 09 Feb 2022 05:20:59 -0800 (PST)
Message-ID: <dc9290f3-0808-50eb-1998-9721443999c4@gmail.com>
Date: Wed, 9 Feb 2022 08:20:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
In-Reply-To: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I've seen it before, but I only was able to get as far as the samples you heard. I got the following error when I tried to install it.

$ pip3 install TTS

Defaulting to user installation because normal site-packages is not writeable
ERROR: Could not find a version that satisfies the requirement TTS (from versions: none)
ERROR: No matching distribution found for TTS

It is very good for reading longer texts, at least according to the samples I've heard, but is rather resource intensive for use with something like a screen reader. Hopefully there is an option to decode to an audio file. That would certainly solve the text to mp3 issue discussed earlier on this list.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

