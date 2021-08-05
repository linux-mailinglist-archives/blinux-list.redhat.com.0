Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF083E1DAB
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 22:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628197051;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1N6+fYUf1nc3h2xtglzg4W6VWbnKjf7muu9+r9jApIU=;
	b=CDXHNq2prFULH09o59wMbHmX/u2s7a/qrusfeQcfain60VBv6kK/xWbaLyHBljTC9VOmN2
	nHm3HnrdmUk7y0QW+zruqP/7uYPGGVDHZjIkhyhz36IhaPp5E+VN5x5LiA0Jybw4AV2TEY
	Ko4HZohZyPWaXeoVGFOUmxXRNYdEsrc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-MtDWWKbwPdCUKvnVDzGHZQ-1; Thu, 05 Aug 2021 16:57:29 -0400
X-MC-Unique: MtDWWKbwPdCUKvnVDzGHZQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F20E801A92;
	Thu,  5 Aug 2021 20:57:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECD197E46E;
	Thu,  5 Aug 2021 20:57:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C7527181AC05;
	Thu,  5 Aug 2021 20:57:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175KrFDq029184 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 16:53:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 93D3420149A8; Thu,  5 Aug 2021 20:53:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8ED5A2166B49
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 20:53:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93BF0185A7A4
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 20:53:12 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-6-BjGziCy_NqKkmOoWDrYUQA-1; Thu, 05 Aug 2021 16:53:10 -0400
X-MC-Unique: BjGziCy_NqKkmOoWDrYUQA-1
Received: by mail-qt1-f173.google.com with SMTP id h27so4883921qtu.9
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 13:53:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=mpObB3n6azBWQkbIAMLGlmZOKCVU0os67AqWo8bRxEY=;
	b=T/pMHm9DJ7Nh3m1WsBP5uwAk4PdBy6Thoi+U6sawNkleYNyCV0/NLkZ/1/KeUU3bLc
	/VODUuxWNjqVirtLQQxe9eEmRFv2wJj0uPL2IYrDLBbOUVb4L3VvfO4YuI4WEIIB1hBx
	qUw0Oapdw8Thtu0D8edxii6sEOKBmG96D3GlqzpJd3bW2qvX+cc+kWIjflnPTn+OHTZ+
	+QLmB1YcENLr1/hAsA22QuW0nDBN2D/uvPFq3MDDQZQWptyR51TkZykln0orPV5usljo
	gvD5bD688SG6K2RPGo070tw0lGwOH6Rzoby21nnODpdoEHqS6tBVzuhD6Ndxs2tF5PaS
	QsBQ==
X-Gm-Message-State: AOAM530ZtLqNL3igs3jiAwzVE/VBpS5raDSDSt9nmoShVyFacAXw9Z7a
	XCrZ22Gcrid8HT3+A3uhIEfl0zavY9F0OA==
X-Google-Smtp-Source: ABdhPJwVjS9AXWMwr6YEcF/idcGD+oprHCRmYShmIQGVsgqZ0IWjcvuTaiERiA4sIGTyrzzJSFvV8g==
X-Received: by 2002:ac8:5841:: with SMTP id h1mr1983078qth.199.1628196789094; 
	Thu, 05 Aug 2021 13:53:09 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id
	c15sm2566853qtc.37.2021.08.05.13.53.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 13:53:08 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <B9F8B793-E7C7-445B-91D4-27AE5BE5C394@gmail.com>
	<50777D22-914C-4419-983C-1EB067198F3E@gmail.com>
	<5D8E2A74-079F-43CA-8350-F160F66BEB26@gmail.com>
Message-ID: <33a2ad9e-b3da-65fc-475c-b76099fffceb@gmail.com>
Date: Thu, 5 Aug 2021 16:53:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <5D8E2A74-079F-43CA-8350-F160F66BEB26@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SXQgaXMgaXRzIG93biBkaXN0cmlidXRpb24uwqAgTGlrZSBBcmNoLCBpdCBpcyBhIHJvbGxpbmcg
cmVsZWFzZSBkaXN0cm8uCgoKClNlbnQgZnJvbSBteSBMZW5vdm8gVGhpbmtwYWQsIHJ1bm5pbmcg
U2xpbnQgR05VL0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mciBmb3IgaW5mbwoKT24gOC80LzIxIDEw
OjMwIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IElzIFNv
bHVzIGJhc2VkIG9uIGFyY2g/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

