Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id CD2DF3303F9
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 19:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615142427;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bzmHnnIIHS/ndJY+TCXf0GKkStu7ST4RQ9l8wGup0xM=;
	b=OacG0kM8vgN76I59fJAwpyQhEUyEv5J5/+Zy7EoqUoHsmP0kRjA9HZYUzEsH4kLvP9g0Mc
	T9J8gmkISuiOMFZSBDwGcyKCYiEzoZRVnBWuA3oB/QAkBJ43kitqF+0S9wVgC4AvhIfYWd
	qfNJVO8OEiF+dOiOwgPvUD3dlOdxwtc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-kj4l4L7JMICQ6vJ0ka4iMg-1; Sun, 07 Mar 2021 13:40:25 -0500
X-MC-Unique: kj4l4L7JMICQ6vJ0ka4iMg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 411BA1934104;
	Sun,  7 Mar 2021 18:40:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF1815D9C6;
	Sun,  7 Mar 2021 18:40:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55C5318095CA;
	Sun,  7 Mar 2021 18:40:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127Ie7ZF016317 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 13:40:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9A0174C83C; Sun,  7 Mar 2021 18:40:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 941C04C83A
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:40:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6281A1018AA0
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:40:05 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-23-kJj4U_WIOjyB5KI0yxl7uA-1; Sun, 07 Mar 2021 13:40:03 -0500
X-MC-Unique: kJj4U_WIOjyB5KI0yxl7uA-1
Received: by mail-qk1-f178.google.com with SMTP id t4so7318081qkp.1
	for <blinux-list@redhat.com>; Sun, 07 Mar 2021 10:40:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=i32VUmiA8AvdAGGaVE9zf2T89SNW6teQI2IDfBlo2o4=;
	b=TeZ1v8+ALntSCtFL+5GdlHPy+xoJ/FUrOUPmXaxxlxcdNkE+etm2LvWTOWjAKeP53U
	I/DxAEK8cJOh8i6ygQrUfc3oRraEmO0ZCdgo0M0V/O8yjRpZiWKmzHI+ioV4Fv5vAnv7
	YeMrny9GHaYVsgiVyTAokO1l3zIup9noGDH8DfTQPsUIEDqpJJy+U43cPKuq9utzCPjB
	antHrj5cdh4Ku8B30cY7K+7zKWBJtC6BnGvhhVj0JmiJjmg0WbAJLsMY9qnKg1Pm6C3Q
	WThsJJhJLbSWCfLkUah2YiVhjnxIjbZ8VokdnxQEZ6aIdcdW6FZnwDHwvZUdBTEIBt9y
	2WuQ==
X-Gm-Message-State: AOAM531R0i6/HPh9E3gEggBKgvY6ktSe0t/mMV1L+781ES8S7l1Alv5o
	dm0tB2Sbxyy5O/Vke+iUAkuo8onIqJw=
X-Google-Smtp-Source: ABdhPJyonkjRz7bNf9CeztNclHYof2UoMMpxgotV+xtMpTEYuGClJml1SJr932WWPJFM/W2xCYz4GA==
X-Received: by 2002:a37:9a0b:: with SMTP id c11mr17146374qke.190.1615142402767;
	Sun, 07 Mar 2021 10:40:02 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84])
	by smtp.gmail.com with ESMTPSA id i6sm6181388qkk.31.2021.03.07.10.40.02
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 07 Mar 2021 10:40:02 -0800 (PST)
Subject: Re: Running Android Voices in Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<92d0fb-772-6c31-12f4-dbdb6f62715f@hubert-humphrey.com>
	<02e7186c-ec59-8e55-067f-51bd7a8fc57d@slint.fr>
	<Pine.LNX.4.64.2102272217290.2943945@server2.shellworld.net>
	<161511660705.7.9147299505595485066.4503426@simplelogin.co>
	<161513159250.7.551543312534109967.4507622@slmail.me>
	<161513379264.7.3425024273159773823.4508247@simplelogin.co>
	<161513774886.7.2076841472683858930.4509753@slmail.me>
	<8b45ab0e-2199-96f6-58f1-72b7c14aa680@slint.fr>
	<ec4c2a3-3c6-79e4-bf4-cfdf16e45095@hubert-humphrey.com>
	<c381761f-6875-fa0c-a74c-88a2414a9e9f@gmail.com>
	<910d288-5680-e30-d865-cf43de1ce94@hubert-humphrey.com>
Message-ID: <fef5b713-b9b9-02b8-5b12-b12c504092ff@gmail.com>
Date: Sun, 7 Mar 2021 13:40:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <910d288-5680-e30-d865-cf43de1ce94@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBoYXZlIHR3byBWUFMncyBydW5uaW5nIERlYmlhbiAxMMKgIEJ1c3RlciwgYW5kIHRoZXkgc2hv
dyBhIHBhY2thZ2UgCmNhbGxlZCBtYWdpYy13b3JtaG9sZS4KCnN1ZG8gYXB0IGluc3RhbGwgbWFn
aWMtd29ybWhvbGUKCnNob3VsZCBnZXQgaXQuCgp+S3lsZQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

