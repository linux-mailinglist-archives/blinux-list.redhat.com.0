Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B4A44DFD6
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 02:38:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636681125;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9hnL53X7kQJMI1D1qbWtH206zfq4ndPy10elYumfD3w=;
	b=jCB6WPaX75dTTGwHe9g5X1E9ji8L3pk/KjhjXMAVfwcVUFCT/SqUDK1yjWKCEDvamasDkC
	dI6XMqoeYdq+7/BLKJASDcC+Xdku4VE/cwu7f7LRmgrbT4lUN3JfVVRZAMJ82Hhgo5bTqZ
	BbkpJT/xG1J8i0FJV7Lu8/7O0Ca8ZhA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273--n0U0y9MM3alUzRASD70RQ-1; Thu, 11 Nov 2021 20:38:42 -0500
X-MC-Unique: -n0U0y9MM3alUzRASD70RQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 93DC1E744;
	Fri, 12 Nov 2021 01:38:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69BD75D6D7;
	Fri, 12 Nov 2021 01:38:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFDC94A702;
	Fri, 12 Nov 2021 01:38:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC1c9S9003917 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Nov 2021 20:38:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E95FD2166B2D; Fri, 12 Nov 2021 01:38:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2E842166B26
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 01:38:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 755C380122B
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 01:38:03 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-347-BPc0_DhUPtSv5lvhvnIWhw-1; Thu, 11 Nov 2021 20:38:01 -0500
X-MC-Unique: BPc0_DhUPtSv5lvhvnIWhw-1
Received: by mail-qv1-f43.google.com with SMTP id i13so5291026qvm.1
	for <blinux-list@redhat.com>; Thu, 11 Nov 2021 17:38:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=+nSXOWkvIB8Wol5u3/94aNibChzQbpGkxyhRtjxuuw8=;
	b=e+ZWZXcQAcRgbAnXpMSQfxOuWND69UiMTDyNbzhcXDVBJPJdDZR1C87Vxxo4IQeCZ1
	rPmF4al0jNHdkxfrlO7pbQ+qtY8DuboPHN3JLl1zXJlGB96yCGtASwKXRhZrUhkZ9/TL
	0r5XL5BUwRDbptQN7R81OzDBkUhZly98wjBfUXYgXkz6uxNon4BTzM9cF8DlfpXFzIaq
	oeNbGwuSH8jUbB/6a63WuXopu4LAh+MSmLR+gvlP5awiGOEDThPlGAJe5rfHOx8qk2+O
	8UZtQVaiEltA1Pmzk/adIadLJXq3/rIDeagyqIDjyY08CoYhXQqjCIt6Rw/mvzamj4qC
	dUZg==
X-Gm-Message-State: AOAM531krZAyw7jEwYlz+qRXeT+Tj9r4liHl++zshCAxZAspI4RQL1PH
	pcBpt3qM+aOmUlPQeiJGBT2HtNJqWzoqoA==
X-Google-Smtp-Source: ABdhPJyi7zI0JjBInX1PoT+EcOkrBc9rTBbCc3Rpd6/NylooI3XmKNeU36iQ2y6IT9Y41t64d0TYmA==
X-Received: by 2002:ad4:5c67:: with SMTP id i7mr11185459qvh.37.1636681080943; 
	Thu, 11 Nov 2021 17:38:00 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id a7sm2409823qtx.26.2021.11.11.17.38.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 11 Nov 2021 17:38:00 -0800 (PST)
To: blinux-list@redhat.com
Subject: How do you format a disk using slint?
Message-ID: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
Date: Thu, 11 Nov 2021 20:37:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gZm9sa3MsCgpJIGhhdmUgYmVlbiBwbGF5aW5nIHdpdGggbGludXggZm9yIGFsbW9zdCB0
d28gd2Vla3MgYnkgbm93LsKgIEl0IHNlZW1zIAp0aGF0IEkgaGF2ZSBzZXR0bGVkIG9uIHNsaW50
LiBJIGluc3RhbGxlZCBpdCBvbiBhIDEyOCBHQiBTRCBkaXNrIGFuZCBJIApmaW5kIGl0IHZlcnkg
ZmFzdCBhbmQgcmVzcG9uc2l2ZS4gSSBoYXZlIGJlZ3VuIHRvIHVzZSBpdCBmb3IgbXkgZW1haWwg
CmFuZCBpbnRlcm5ldCBicm93c2luZyBvbiBkYWlseSBiYXNlcy4gSSBoYXZlIG5vdCB1c2VkIGl0
IGZvciB3b3JkIApwcm9jZXNzaW5nIHlldCwgYnV0IGl0IGxvb2tzIHRoYXQgdGhlIHN5c3RlbSBj
YW4gYmUgdXNlZCBxdWl0ZSAKZWZmaWNpZW50bHkgd2l0aCB0aGUgTGlicmUgb2ZmaWNlLgoKTm93
IEkgbmVlZCB0byBmaWd1cmUgb3V0IGhvdyB0byBmb3JtYXQgZGlza3MgYW5kIG1ha2UgYmFja3Vw
IGNvcGllcyBvZiAKbXkgd29yay4KCkkgd2VudCB0aHJvdWdoIGFsbCB0aGUgR1VJIG1lbnVzIGFu
ZCBjb3VsZCBub3QgZmluZCBhbnkgdXRpbGl0eSBmb3IgCmZvcm1hdHRpbmcgVVNCIGRyaXZlcyBv
ciBTRCBkaXNrcywgYXMgYSBmaXJzdCBzdGVwIGZvciBiYWNrdXAgb2YgbXkgCndvcmsuIElzIHRo
aXMgdGFzayB1bmRvYWJsZSBpbiB0aGUgR1VJIGVudmlyb25tZW50IGFuZCBJIGhhdmUgdG8gbG9v
ayAKZm9yIHRoZSB1c2Ugb2YgdGVybWluYWwgZm9yIGZvcm1hdHRpbmcgZGlza3M/CgpDaGVlcnMs
CgpJYnJhaGltCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

