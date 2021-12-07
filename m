Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 427AB46C7E7
	for <lists+blinux-list@lfdr.de>; Tue,  7 Dec 2021 23:59:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638917995;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+GJP4QISEYZAUmiwPS0HTLndyfhQtZxyDcQuKJMxgYo=;
	b=f4JlOc0iib7CreCirEvCsaLBHmc9FlEgEEKel7fIdhN4vIgUCGn2SvxKxaw+UdrW5hs3mL
	v0qXrVYiW68JFl5nKL9ru6QcRjesK4LH414RLKxN4Mn8OO/aNF3e5xLq3wbcqWwxXEAJ+7
	jiH78v1jBTJVZOjZUfpBqvpgd2VxWtA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-191-H9F0BGPKONq0ZLNtEK3g5Q-1; Tue, 07 Dec 2021 17:59:51 -0500
X-MC-Unique: H9F0BGPKONq0ZLNtEK3g5Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CA411023F50;
	Tue,  7 Dec 2021 22:59:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2459445D6A;
	Tue,  7 Dec 2021 22:59:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A18AF1809CB8;
	Tue,  7 Dec 2021 22:59:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B7MxVeB015321 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 7 Dec 2021 17:59:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 43AD5C08095; Tue,  7 Dec 2021 22:59:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EE9CC0808C
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 22:59:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24F098032F3
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 22:59:31 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-78-adtzdUsSPuaKHoJZtrYLug-1; Tue, 07 Dec 2021 17:59:29 -0500
X-MC-Unique: adtzdUsSPuaKHoJZtrYLug-1
Received: by mail-qt1-f170.google.com with SMTP id v22so691374qtx.8
	for <blinux-list@redhat.com>; Tue, 07 Dec 2021 14:59:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=zVzJHSAvtsVWTnMwmS7vsEBLSbxpaW107RiRBMHcEOM=;
	b=RawbfdQlF7GKTdX0RXGm3SdxBWp35mxOeA1CerbHNvt1GgD0PQqAva21nzrOrzk34a
	GtgGV+R9OniPOyaa7twzOqclUQsxBYukNRdwAFD/QOIO799v4h1HFtD1iE4JieGVfMrD
	t+FRLkysQ8z5yk3qZ7xv6AoFORwJDUL08s1EiNj7u5TZdTA7RYi3uKWaB2pM7gPBBIit
	OXFLvQZLr8YO77hHmIp/KuLe+aJE+7a1wAJoPMoOPMGQ7NcRdx5cO408v2MI7sko/vwS
	v/o5pv5og1zmF5yJ/1tho6+x+5LASwNk8WrggSeyavkqC41UXPP/1gMQTwtJYle4sZxB
	TRXQ==
X-Gm-Message-State: AOAM532hQYUo+EdOsgur8wPnXdKLMW4/TrI/AoBOjKUknQxxMNNrLnGC
	25Pj8WgwhlzwreaIVngR0KE2He4BYFs=
X-Google-Smtp-Source: ABdhPJwZsQDYE6Mr0IChU45nZCsI5FxzReAjf0GruQoqBg3vm0dQvplR6qL5w+SXPBRsyWIuZxGV/g==
X-Received: by 2002:a05:622a:1cd:: with SMTP id
	t13mr3168026qtw.31.1638917969038; 
	Tue, 07 Dec 2021 14:59:29 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id 196sm522352qkd.61.2021.12.07.14.59.28
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 07 Dec 2021 14:59:28 -0800 (PST)
Message-ID: <e6a251f6-5a33-b88c-6bc4-b26dabcc4d9d@gmail.com>
Date: Tue, 7 Dec 2021 17:59:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Other lightweight WM?
To: blinux-list@redhat.com
References: <58c49814-4eb5-b4dc-85da-c6fb7d110d82@gmail.com>
	<CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
In-Reply-To: <CAO2sX30eL2BGnmLU2JqWS8epCwW+gTP2cG5nZ2YHM=0zJCXSkQ@mail.gmail.com>
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

Flwm is lighter than jwm? Jwm is what I used for the Firefox+Orca thing 
via scripting back in the days of F123Light. As I recall, control+q to 
close Firefox works using jwm. I don't remember if alt+f4 worked. It did 
however allow Firefox to talk to Orca without any issues. Jwm is less 
than 200KB installed as I recall, in case you are working on a system 
with extremely limited disk space. Not sure of its RAM requirements though.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

