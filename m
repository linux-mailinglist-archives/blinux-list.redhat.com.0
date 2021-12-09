Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAC346ECC4
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 17:08:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639066137;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3xkW/KqQdbnr6IPC8AgItDy2NJ0pbCOxtWg9DdV7Hj4=;
	b=BdN0iyw8FGcEpTBOyCYfduA485Suojb7yBttDKLS6fMPdIzeMFb9xzKqyMRD2xxCKJDqox
	6tLyFuYQ4n4X8pnsRGqz9CtvteUk0dPKSZkEf4DlKiQVJHj6ZgFWzNGu3x997fiQ0oQ3r5
	M+J4+v6ZfLMmwgaiXdsKo6kBB3l0tEw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-214-zz0a9iUUNiSNjPpMX3uiJA-1; Thu, 09 Dec 2021 11:08:53 -0500
X-MC-Unique: zz0a9iUUNiSNjPpMX3uiJA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6A8D9F926;
	Thu,  9 Dec 2021 16:08:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D84C360657;
	Thu,  9 Dec 2021 16:08:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 46B4F4BB7C;
	Thu,  9 Dec 2021 16:08:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B9G8LGb014015 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 11:08:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F053C23DC2; Thu,  9 Dec 2021 16:08:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A422C23DAD
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:08:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 30B7F185A7BA
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 16:08:21 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-313-KOeUTiZINse28mQu8ncuuQ-1; Thu, 09 Dec 2021 11:08:18 -0500
X-MC-Unique: KOeUTiZINse28mQu8ncuuQ-1
Received: by mail-qk1-f181.google.com with SMTP id g28so5262056qkk.9
	for <blinux-list@redhat.com>; Thu, 09 Dec 2021 08:08:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=URz+LQTW9KRbUK2U2IxBc0AbCiey6VO4LYwYWVxghPQ=;
	b=ur40PKZZKtg/7aW15sT0QPrOZluCS8aFuvi7k7hJmMe3p683yvO8157xBL7cEMSt2x
	DgiA+LJSQTSQUUjN38rxRWYNJHW8BTinfczhbL7JQBVS9KwMV/FPuWt/e7F9HEKfaoi0
	wXKpcnYumC3I2RHHnAdv1HvGkoIyJVlrkIiSqCdPFAxT9hELnDj5PIz14cJG6OU+zBb8
	VgyW3YAMkvLHqBa7i1NFKrVtNJAYr7pzHHpvvef+MhYohrHTi9tlC+tKGln98Fr4BFKA
	ovjN/e8TT+X62WV75NwsG0yaZyrgCV0Rl8WpWEeLwCa+bZWAUPbGfl908c5O9rMB0y0t
	Ka5g==
X-Gm-Message-State: AOAM530eIivcuoZ3DMCFoKmwrlvA5eGfzMPARYrO+XLPqHG4oC50+rQK
	ZZHQX3gwefS2qEND+KNfEW/TATSUpRY=
X-Google-Smtp-Source: ABdhPJyKWsLSL1sEpDn0ueUXLJnZBUJXNLu2fRZeRTGH/EQ+LZEue5+iSnyxTe0dS1mb/WCAuzOjWQ==
X-Received: by 2002:a05:620a:2414:: with SMTP id
	d20mr14756039qkn.370.1639066097810; 
	Thu, 09 Dec 2021 08:08:17 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id q185sm70285qke.64.2021.12.09.08.08.17
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 09 Dec 2021 08:08:17 -0800 (PST)
Message-ID: <69e47126-3266-1a09-b033-16bb161fb1c8@gmail.com>
Date: Thu, 9 Dec 2021 11:08:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: .sh files not opening in terminal
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <f342b0c4-5ca4-0f8d-3e04-60c3631c8976@icloud.com>
In-Reply-To: <f342b0c4-5ca4-0f8d-3e04-60c3631c8976@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Are you trying to run them from a file manager or from a run window? On 
the MATE desktop, the alt+f2 run window has a checkbox that says "run in 
terminal." Caja asks me about an executable shell script, whether I want 
to display it, which would open it in Pluma, or run it, which opens a 
terminal and runs the script. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

