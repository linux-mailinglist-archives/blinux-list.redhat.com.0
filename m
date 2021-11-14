Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F35844FB3E
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 20:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636919206;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yX7AmNjv+mVc573+66vOoXM7I2yvIy4c4EqMlfrKJzk=;
	b=ZDhqNFZziBOt+Vw6KVQ43rQCsFI+ik6k4kMzcwrVZJl/BFN1IVwkdQ3QGKuU05jUxueAMK
	WA5Vz3W2YIcnHtvH+CdzN9Au3FiHEv1pZqvJwDkylKbHai3NgfLGjrkUWZ5BnFuFe4g4uF
	8ZgdYBYhv/LDUXjt1cW4VfiY5TqFBEQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-NCUqIPFXPhSkcF-H3bsH4g-1; Sun, 14 Nov 2021 14:46:42 -0500
X-MC-Unique: NCUqIPFXPhSkcF-H3bsH4g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08400E757;
	Sun, 14 Nov 2021 19:46:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89C3E19D9D;
	Sun, 14 Nov 2021 19:46:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10EB74A703;
	Sun, 14 Nov 2021 19:46:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AEJkQUi023765 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 14:46:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 404FD2166B26; Sun, 14 Nov 2021 19:46:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A5DC2166B25
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 19:46:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 658E1106655A
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 19:46:23 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-325-4AEgd0DnOQy3nXsqYePTXg-1; Sun, 14 Nov 2021 14:46:21 -0500
X-MC-Unique: 4AEgd0DnOQy3nXsqYePTXg-1
Received: by mail-qv1-f41.google.com with SMTP id b17so9932487qvl.9
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 11:46:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=u+wS9i69TIriqY4AAY/rpNfqbUHvemb89Vd7OFrV28o=;
	b=UDWnN2fF626z7rQ8X8AavNkFGm8+XCyO3LQkJCOqldzOe+nkfdY755ZI48pfxBBAj7
	hzkc4YQNCniv+agw611N1iqrKek0CS6vwGerFYh9KnibrMBXAk17UOCwpMiybLqgv8ds
	7MQcdcd8x7NsX8Y9t7uFb4KwKANNMmpLLIwqh0K2mo7NLrOP1DmkJJX0ykXQMqJW/3js
	0XwOjCUnmfwzWj9n4gMEo20oyflCp1GFnur3Im7Nb5Dr5MzRw85GQ/UkqmnP3pkBYxJq
	PZYFa3SiTw8UGaqk6dO7IbW393TKpbuButjowUcOlYoSiuHdQIxgfCyEKbKgD6lU+nPt
	Neaw==
X-Gm-Message-State: AOAM530nzjyjPjaDhQEX9sruEdguN7ImZd5MFF8IOcPznEATBZuaKdMj
	0AGg2r1J5MPqgEuNBDyt95Bl1aZwtgw=
X-Google-Smtp-Source: ABdhPJzebaaG1sA/oNd+pSRWxDXM1nHSR2wNfpxbvcwlQfk4on04/wnPV5StTD60on7dNmKK6ZI+XQ==
X-Received: by 2002:a05:6214:20e3:: with SMTP id
	3mr31757155qvk.48.1636919180826; 
	Sun, 14 Nov 2021 11:46:20 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	143sm5640149qkg.87.2021.11.14.11.46.20 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 11:46:20 -0800 (PST)
Message-ID: <21b83d54-09be-573e-f833-f9f25a81649f@gmail.com>
Date: Sun, 14 Nov 2021 14:46:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c5f0b1a-e63-8b28-c2de-1419d49be0cd@gmail.com>
In-Reply-To: <c5f0b1a-e63-8b28-c2de-1419d49be0cd@gmail.com>
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

Alpine allows opening an url in email; using the browser of your choice.


But aside from being tied to a terminal or a text-only virtual console, 
Alpine reads email one screenful at a time, making it impossible to 
navigate by element, and making it very difficult to skip or eliminate 
quoted messages that people mostly on non-screen reader-related lists 
like to quote, requote and rerequote 50 times, which gets unwieldy very 
quickly. The other problem with screenful reading is that I have no 
access to continuous arrow navigation, a SayAll function or something 
like paragraph navigation that is usually available in desktop text 
editors. It is also more difficult to select, copy and paste parts of a 
message using a terminal, although it's not impossible. It's just not 
consistent with other desktop applications. For many people these 
wouldn't be huge problems, but my personal workflow does require things 
to be continuously scrollable and SayAll functionality to be available, 
as well as select/copy/paste functionality consistent with other desktop 
applications to be available at times. I may have a different view for 
my personal use if the message body opened into something similar to 
w3m, which is scrollable, especially since element navigation through 
email isn't quite as important as it is in a browser and I don't select 
parts of messages to be pasted into other files or applications very 
often, with the obvious exception of temporary passwords or verification 
codes, so perhaps this is a feature that could be proposed for a future 
release, unless of course it already exists and I don't know it. The one 
possible showstopper for me would of course be threading. Anything that 
doesn't support message threading would of course be a deal breaker for 
sure. I prefer all threads to be collapsed, and to expend only the 
threads I want to read, deleting the entire thread if I'm not interested 
in reading it. If Alpine can do this, I could certainly run it on one of 
my servers or in my own terminal, possibly as a backup if Thunderbird 
fails, although I haven't seen this happen in years.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

