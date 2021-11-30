Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 21515463C8D
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:09:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638292177;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=syTnT4Erq5jQSaDTSmvfnAyClFrBgxnyTsN7rZs9k2I=;
	b=OWiYjS3SJL6OX6BkfYHHkNjVM0GzBiRORDq6lcE+HCT7FL52YzWaVKKg9U9YjJDmitAcVG
	M11YZcvwKQnGDkZ3UJKQBUDhSoAq87341D6eskvG8h5jYgVRGUyoFM2OMuzVOML1unY2Qm
	2+KMVBsta8HrbAHF1vSuHrdVysclzHk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-348-_P75UxRkPBmgsEZldUr7eg-1; Tue, 30 Nov 2021 12:09:35 -0500
X-MC-Unique: _P75UxRkPBmgsEZldUr7eg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 912451934102;
	Tue, 30 Nov 2021 17:09:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4238A71C51;
	Tue, 30 Nov 2021 17:09:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B18724CA93;
	Tue, 30 Nov 2021 17:09:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUH9MLp007625 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:09:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B46122166B3F; Tue, 30 Nov 2021 17:09:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AF7AE2166B2F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:09:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7E911066683
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:09:19 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-384-RhR3uXlLMuKHkpjtv1ZUuQ-1; Tue, 30 Nov 2021 12:09:17 -0500
X-MC-Unique: RhR3uXlLMuKHkpjtv1ZUuQ-1
Received: by mail-qk1-f175.google.com with SMTP id m186so27552751qkb.4
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:09:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=mEyIb3+jnIgphc/T/EJJhRRAWEGGaRistlA97xbhZyA=;
	b=K/GBpKPvIEJu0ho1SKr38094mFzBtfpsg1DPyHvon44ojWUlHkAN4DUmRt0/Ekh9vg
	kEVFcLrqJOFDOvshdx35bBaJcKKdDrxiM/xTM+KXbUTFFToMZTOW1jm7H2cfQHPFE2DZ
	NBCvzxZrJq4zd2Xx6QyiNuDUDojNWO3ODu3jd68q2FZdlEknbIEP4fETHIb08lsO9w10
	tGSvfP7UH8OQY9FeGBVhtZJCk4pC3LpfMnI6lYZXXRb047R0YYUJ4GCRl+aX7wVR4NzE
	xiBg+HiRDkkX7WPFTBH7dC0b/Qu/9KnKch91t4vDa/pnJJgywK5vphH9RsCcw/4b25GH
	nVWg==
X-Gm-Message-State: AOAM531oA2a34kiH0SLys4FLSaviFSVioqOw6zrABHLClX/tjbU1gql4
	CKbaD6KLPNFNXT0EIbBSF8uJ4DHn43U=
X-Google-Smtp-Source: ABdhPJyBB03sZnDhMwP0AU8JWxi8uh2QcwQDgeCKt5zoLS+ThoACi0GmmyHfOM6sF2DZU1RKym6pEA==
X-Received: by 2002:a05:620a:4f4:: with SMTP id
	b20mr523026qkh.471.1638292157190; 
	Tue, 30 Nov 2021 09:09:17 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	r16sm10880046qta.46.2021.11.30.09.09.16 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 09:09:16 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
Message-ID: <4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
Date: Tue, 30 Nov 2021 12:09:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

It's also a bit of a misnomer to think of Emacs as just a text editor. For 
example, it can be used as a file manager, a development environment, a personal 
organizer and more.

I think that's one of the main problems I had with it. It tries to do far too 
much, and puts everything into an editor style environment. I found it to be a 
nightmare, especially the strings of key combinations that can't be translated 
to some kind of mnemonic in most cases.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

