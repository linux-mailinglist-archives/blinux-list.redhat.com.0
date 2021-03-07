Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 424AC3303B9
	for <lists+blinux-list@lfdr.de>; Sun,  7 Mar 2021 19:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615140309;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oK5oLjf3F1OQj3vKgOLohQpVic6F6UPIPXZ/ILmw/yc=;
	b=DPLNWf5J4CxpIJ1maNHoTdrMFiiv0Qx+EhH0+OP/14RM+X72voFxr3+kYDpY9/8oZnCzKQ
	X7bcVPoz7IiODFw8ef02TdGLf6HkXFBDubPyTZ8zfm1mGP7z44bSpTt4E/F/V/cvpxGRPI
	Mcp4EAETeWEKnUX0viUkw+OsfIhmAeI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-wQz2j1XiM4mZ7QIxoG3zLA-1; Sun, 07 Mar 2021 13:05:06 -0500
X-MC-Unique: wQz2j1XiM4mZ7QIxoG3zLA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C98B45224;
	Sun,  7 Mar 2021 18:05:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A2EA60C5B;
	Sun,  7 Mar 2021 18:05:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F77A1809C86;
	Sun,  7 Mar 2021 18:05:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 127I4t0T012620 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 7 Mar 2021 13:04:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 59FB0200E264; Sun,  7 Mar 2021 18:04:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53E6A200E263
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:04:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00CFD8551E2
	for <blinux-list@redhat.com>; Sun,  7 Mar 2021 18:04:53 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
	[209.85.219.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-44-v0_i-u3QOMWLVfd8dDi00g-1; Sun, 07 Mar 2021 13:04:51 -0500
X-MC-Unique: v0_i-u3QOMWLVfd8dDi00g-1
Received: by mail-qv1-f54.google.com with SMTP id t1so3566690qvj.8
	for <blinux-list@redhat.com>; Sun, 07 Mar 2021 10:04:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2b2RGpFxla1T1uw4++x4lI0PkaNGW3/pr02LGhHoTKY=;
	b=K96sSCAnPBvJ6ja1YCySTQXvYNei3xHUTxB0tNSS8tQDBTXapGbBThnvjfYzum+aVl
	KSasmzE5tNiifqd/4f+sBX9hjPUey74OMuCQcdlycuuEXtIcFT8LSfrJ22X72pWx7Djb
	9lJ8iCuZ48VPDem46T03Ix06oMx58syYtvXQO30KgJLSjQdJjnbmXatUyN7VHqWauFcY
	SGSpRGQEAo5Rtns5r+a9GTrrDjusyHIdpoWuVVXnsTyHxGTh6WTtTfKbUqWgl5kTXDn5
	sfglqsLRTRiqEE/ML8qMLShKnPW/yXZcffgAZ95rwo2Md6hf5okYRZ1oZGmX2CNH27Tj
	n8yA==
X-Gm-Message-State: AOAM531X4zgvoCie2A2+lFiIWouw11b67cII6DST1zzt37vogiT40omL
	ogzyQXgjH3AV2Fw9WzH43VCcijFw1lI=
X-Google-Smtp-Source: ABdhPJzByQLzb6zhKZFxjxvK5q/3zjvb3/CnMmsY2QSo8Y1haDhdhCLp1mdz1DbUnX900HaXuRYuFA==
X-Received: by 2002:ad4:4904:: with SMTP id bh4mr17376376qvb.53.1615140290302; 
	Sun, 07 Mar 2021 10:04:50 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84])
	by smtp.gmail.com with ESMTPSA id i8sm2189320qtj.16.2021.03.07.10.04.49
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 07 Mar 2021 10:04:49 -0800 (PST)
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
Message-ID: <c381761f-6875-fa0c-a74c-88a2414a9e9f@gmail.com>
Date: Sun, 7 Mar 2021 13:04:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <ec4c2a3-3c6-79e4-bf4-cfdf16e45095@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The package is called magic-wornhole, but it's a one-to-one transfer, 
meaning one person can't post a wormhole code and then anyone can get 
the file in that way. Only the first person to use the code receives the 
file. It's a great way to send a file or even a folder from one computer 
to another, but the code would need to be sent in a more private place 
so that only the intended recipient receives it. There is something to 
be said for a one-to-many type of wornhole transfer, where a code could 
be posted to a public list such as this and then everyone who has it 
could get the file. But at least for now, nothing like this is implemented.


I do wonder about the legality of sharing a file like the one proposed 
here. This is not at all open source software, so just sharing it on 
this list could be of questionable legality. I would caution against it. 
I think it's better to propose and implement improvements in the free 
open source software that already exists rather than sharing unlicensed 
sdk's for proprietary software in this way.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

