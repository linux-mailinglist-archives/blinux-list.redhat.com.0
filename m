Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCB2457A72
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 02:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637371747;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1dA13OhTiuFOoRKrviEa1ro/qVs+Z2GLDWzL9y7KFrg=;
	b=TdOugw/Qv9LW2ynvyse5Cfl3lVc5m7T/Wj9cVnHq5q2WLEBAlhxwGUkGAZZPSJXIgYQSPV
	21sbPkIy2po/RVDbycUuM6pcsDnmEg27PS81P6t4bwXQ+0ii2Ho0ZPbyFb7oFUHmqpBTEQ
	PhT2BQoieom/LquS8KsnGa7+6Kv4PlE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-599-tc2SgOA5M2eim1JqjQi-6g-1; Fri, 19 Nov 2021 20:29:05 -0500
X-MC-Unique: tc2SgOA5M2eim1JqjQi-6g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7050118125C0;
	Sat, 20 Nov 2021 01:29:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D10105F4E9;
	Sat, 20 Nov 2021 01:28:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7AD8F4A703;
	Sat, 20 Nov 2021 01:28:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AK1Siix003713 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 20:28:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EC9031121318; Sat, 20 Nov 2021 01:28:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E82C01121315
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 01:28:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E834E8032EB
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 01:28:40 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-28-uoNYAEPgO9mG3cHU7Ypb-Q-1; Fri, 19 Nov 2021 20:28:36 -0500
X-MC-Unique: uoNYAEPgO9mG3cHU7Ypb-Q-1
Received: by mail-qk1-f172.google.com with SMTP id 132so12044371qkj.11
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 17:28:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=NzAdT3RGymULznlJoJ/mRE57YjDoJo5PDQsbwaFsXY0=;
	b=AVQ/g7/Ok4lWESQ+zRD0mBSp9JfkBd0tXqEIuxY+evqfuXCOggU7pvH02wZPfvo5UZ
	cV7o+cA/td+L0w0VX4IvEYlhcLy+3JFxTEhRxrDjlwG7DaiKiMHM7hUPWC7V7XEM7dmL
	ktTZ1aQo2v5X8fkLbzraCt2CvOxU5jW+IAhDIUx977d3Sa/2xKuBX2exbb/GekNYn5kM
	nnp6jKGrvpOKWSI78ltd7rKHeemc/sEUjwrZ+nuDBxfyb8TQ7PSnE9Gf43m2ulDwfJlL
	yF1UnOF30e+GRXZDhD8xjCYXHcWcYOW0EJ9BPIeLC74d0SRJGfyUSjNFpU2We9AqtNAw
	4SYg==
X-Gm-Message-State: AOAM531kId6HrvklZ1K6DyC+ZBJ2tLlFCYcyn3XKyEhMm0bmJSr3wNqq
	PO5/ZxwvYVs5ssJOn6TlzD76ZNvv9uXb/w==
X-Google-Smtp-Source: ABdhPJzQc/B9WRV/COOIzXHQ8MbHb546S7lQJB2lakjf93fqF+q7H2FnnmA/n5VENIng5TqA2I7SzQ==
X-Received: by 2002:a05:620a:2790:: with SMTP id
	g16mr31696716qkp.403.1637371716012; 
	Fri, 19 Nov 2021 17:28:36 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:59b0:5d37:e3b:7a62?
	([2601:192:4c80:1420:59b0:5d37:e3b:7a62])
	by smtp.gmail.com with ESMTPSA id c11sm786756qtb.8.2021.11.19.17.28.35
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 17:28:35 -0800 (PST)
Subject: Re: Mint Mate folder options?
To: blinux-list@redhat.com
References: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
	<e96bb0e4-fac5-9a01-e6a7-2107feb49bb3@gmail.com>
	<ae60eca3-2e49-4efd-8a75-1fd5e113b6d7@icloud.com>
Message-ID: <be9e9e22-298c-6bf6-2168-17451805bbe7@gmail.com>
Date: Fri, 19 Nov 2021 20:28:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <ae60eca3-2e49-4efd-8a75-1fd5e113b6d7@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWFrZXMgdHdvIG9mIHVzO8KgIExPTCHCoAoKT24gMTEvMTkvMjEgNjozNCBQTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJIG5ldmVyIHRob3VnaHQgdG8gbG9v
ayBvbiB0aGUgZWRpdCBtZW51IGZvciBwcmVmZXJlbmNlcy4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

