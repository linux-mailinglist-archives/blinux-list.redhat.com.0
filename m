Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8254900A9
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 05:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642392159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iuQuQHu29nj79fuChLiz1VYpIt5H5OATBjt9eooI8m4=;
	b=eIlOl0HncPzsDdGTjBZxorbQFqjFbbvkHVRRdPe2sTk/f7sRHys8nAm5bMT6ttchZrZ7Lf
	PCfcPLb9sCI1Q+89g+HVBEATsQuvrA9SEl6fdKatdsiL2/QTW0VMi3iLCpWCNq6JdW0fOd
	cxzCbpl/ousrjEhW1Pvam5Wu+uOPz2Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-54-KC9gjXnnNI-KlS47YIjepw-1; Sun, 16 Jan 2022 23:02:37 -0500
X-MC-Unique: KC9gjXnnNI-KlS47YIjepw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E5E0802B7E;
	Mon, 17 Jan 2022 04:02:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E202AE724;
	Mon, 17 Jan 2022 04:02:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E5F234BB7C;
	Mon, 17 Jan 2022 04:02:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H42N67012625 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 23:02:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 907D52166B47; Mon, 17 Jan 2022 04:02:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8AC672166B25
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 04:02:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73CDA3C1A374
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 04:02:20 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-85-Zj5GIjcDM12ljsUVOrS4pQ-1; Sun, 16 Jan 2022 23:02:18 -0500
X-MC-Unique: Zj5GIjcDM12ljsUVOrS4pQ-1
Received: by mail-qt1-f180.google.com with SMTP id f17so18052331qtf.8
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 20:02:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=fEZQiNThPvyBZ0TcAbemzz8ObMCVZi5FjfR6dnomPWc=;
	b=r3yNgY710/zz0aYiKOEqV6s+G8JccyO8W3EdxG7mh3jGZV6jUJJRBVwMnVoW7d0sOG
	25On+Q4U5VPeFunaC0vaEOFxzi+Cn05Ul4TqtTphc1YUnXqv3JCIdaB+zs9NjrtHPMc1
	S/qz5DFJCG+jJbsXwVtKxajC7zWAcBoEhFCgzGzCF5aMqe/XeJV8VVcsidoBneyFUXMZ
	db/6eHVgwHDenBqwC6brYwOE8dgw5jMktnhNy9QBcidZ1lVtNeRmV/3JZl/AioBXo6El
	oOsocJvTGgZaUM58BNZM/wD5vffcsOwzqrhaRb1F7PJFZE34OcHSNMrH3Je4aya1Qv44
	b5jw==
X-Gm-Message-State: AOAM531cAvjy3sq9Jk61TGjbpLdRK9fRe6YKXBF5zn2p+2y8rli4QXF4
	3SaskwpRfsZrmT0Pd78miNo8jKSoYtR2gQ==
X-Google-Smtp-Source: ABdhPJx7weCP6zIcuDhrBmQhG8NUA0VH/gb4sD1yMaVUUApa/VkKcz9v6gxfW8AS1DlTAT0f0ad6zw==
X-Received: by 2002:ac8:5a85:: with SMTP id c5mr10686674qtc.155.1642392138026; 
	Sun, 16 Jan 2022 20:02:18 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id n7sm8554266qkp.65.2022.01.16.20.02.17
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 20:02:17 -0800 (PST)
Message-ID: <7bf4639b-11f8-c24e-00a6-b5379a393a53@gmail.com>
Date: Sun, 16 Jan 2022 23:02:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: looking for accessible music library app
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7197b2a9-e23a-de3e-906f-9cd9cc2a65e0@icloud.com>
	<84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
	<CAO2sX33fXUtxngX933DCh=day+Fp-VODOOoj+7PJcX3g78szLQ@mail.gmail.com>
In-Reply-To: <CAO2sX33fXUtxngX933DCh=day+Fp-VODOOoj+7PJcX3g78szLQ@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Music directory on root of data drive
> -Top level directories of American, Asian, European, and Soundtracks,
> the first three for grouping musical acts by continent of origin,
> Soundtracks being its own thing because some media franchises have
> different soundtracks in different parts of the world.

...


Exactly why I like the local filesystem organization the best. It's 
completely up to you how you organize your music. You're not at the 
mercy of whoever or whatever database tagged it, and you can even 
organize based on things that will never be put into tags.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

