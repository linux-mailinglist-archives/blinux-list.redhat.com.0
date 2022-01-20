Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3198F494418
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 01:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642637873;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=twBgqx1d8KPj8zkopJrz9YmvfrjM5OyA1oGszsVbMD8=;
	b=b0ZLKBiJ1C8byRnyYcgz8qMNqkgyBOtkHcPfsty/ZqJZLMWatRRBxcV1NWbNvsecLPtva9
	FP6shrLTZc4GZMSdGOpUMzRG7hzUFqkPX1Ht7XU/jKz0GEsPmVlOsCtvM5pX6wJEzFhDWg
	OzuZchbqK5uI1te0GBrFBHZxNUv+4p4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-21-SPo_r1KtOwaxgKWAKnnM6Q-1; Wed, 19 Jan 2022 19:17:51 -0500
X-MC-Unique: SPo_r1KtOwaxgKWAKnnM6Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DBB3C835B4B;
	Thu, 20 Jan 2022 00:17:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94F7B5F91B;
	Thu, 20 Jan 2022 00:17:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F3BF31809CBA;
	Thu, 20 Jan 2022 00:17:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20K0Ck4g009003 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 19:12:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 10266141DC5D; Thu, 20 Jan 2022 00:12:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C99B1402427
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:12:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E602D811E76
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:12:45 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-631-lK5t856cMY-IfOhLmYtv8Q-1; Wed, 19 Jan 2022 19:12:44 -0500
X-MC-Unique: lK5t856cMY-IfOhLmYtv8Q-1
Received: by mail-wm1-f48.google.com with SMTP id
	az27-20020a05600c601b00b0034d2956eb04so9428614wmb.5
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 16:12:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:from
	:subject:content-language:to:content-transfer-encoding;
	bh=Zxkuhe3EFVdTayZGnMl6H9BAHVIx0GNgx3ZYTFB5+I4=;
	b=CWWFm7A53pnw1bMcilMqGQPOAh/uJ07oVJnN/qXf4IupMMTxUS3WszzJe45sJNuU9b
	JqZm5IzRckS/PXj2zFDVLNqKCfBc1AZk+9vqS+ArWiSGIebvabbGCPwiZxxMvoflrB3y
	jAxzV9hGLAi2PpReDrYDrlMucG9j+nT2VFVRFNyOSALo3+bZIGyUhlJYM6C+dh0ZLgc9
	Ca1+LfbBTXJ8dZVk2kiyHwa3GH6Ne/sEFMeVQdItumwNqsqtBW7IbmsKcWgOMtOAy+jI
	FDFfdvsgc5NhkUyJIBffKsPQd9zgURYg83bUfLL+Y3pIJEJKXnDEOD01G3srKTfq9S2I
	OgHA==
X-Gm-Message-State: AOAM5300RWZy06gsMMv5VNMQ0sPw2T7vWU4o+z5Sk1BI60JsaFj/IKIT
	I48L8SP7lZXNwGboZjjdkbLGZN2jING+NA==
X-Google-Smtp-Source: ABdhPJwHaF0Ev0/5wBjD+cQoT2SZPT9Ktdr91m6CjvwwEeS7/fly/n9/eCa/xzFSzbwoeoYyiK++hQ==
X-Received: by 2002:adf:f151:: with SMTP id y17mr30164830wro.547.1642637562658;
	Wed, 19 Jan 2022 16:12:42 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id p29sm4790522wms.5.2022.01.19.16.12.41
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Jan 2022 16:12:41 -0800 (PST)
Message-ID: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
Date: Thu, 20 Jan 2022 00:12:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.1
Subject: Before I install Arch on bare metal...few questions
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

U28sIGFzIGl0IHNheXMuIEkgdmVyeSBtdWNoIGxpa2UgbXkgQXJjaCBWTS4KCkFuZCBJJ3ZlIGRv
bmUgYSB0b24gb2YgaW5zdGFsbHMgb24gYSBxZW11IFZNLCB0aG91Z2ggSSdtIG5vdyB0aGlua2lu
ZyBvZiAKc3dpdGNoaW5nIHRvIGJhcmUgbWV0YWxzbyBJIGNhbiB0d2VhayBteSBzeXN0ZW0gaG93
IEkgd2FudC4KCgpTby4uLi5iZWZvcmUgSSBkbyB0aGlzLgoKMS4gSSdtIHdvcnJpZWQgc29tZXRo
aW5nJ2xsIGdvIHdyb25nIGluIHRoZSBhcmNoaW5zdGFsbCBzY3JpcHQsIG9yIHRoZSAKbWFudWFs
IGluc3RhbGwgYW5kIG51a2UgbXkgKGN1cnJlbnRseSB3b3JraW5nKSBzeXN0ZW0KCgoyLiBXaWxs
IG15IFVTQiBoZWFkcGhvbmVzIGJlIGNvbm5lY3RlZCBvdXQgb2YgdGhlIGJveCBvciBub3Q/IE9u
IGEgVk0gCnRoZXkgYXJlIGJ1dCB0aGF0IGRvZXNuJ3QgbWVhbiBhIHRoaW5nIHdoZW4gaXQgY29t
ZXMgdG8gYmFyZSBtZXRhbAoKCjMuIEkgaGF2ZSB0d28gbWFjaGluZXMsIG9uZSdzIC9kZXYvc2Rh
LCB3aGljaCBJJ20gYXNzdW1pbmcgd2lsbCBsaWtlbHkgCmluc3RhbGwgZmluZSwgaG9wZWZ1bGx5
CgoKVEhlIG90aGVyLCBhIGxhcHRvcCwgaXMgL2Rldi9udm1lLCB3aGljaCBpcyB3aGF0IEknbSB3
b3JyaWVkIGFib3V0LiAKQW55dGhpbmcgc3BlY2lhbCBJIG5lZWQgZm9yIEFyY2ggdG8gaW5zdGFs
bCBvbiBhbiBOVk1FPwoKCjQuIENhbiBJIHdpdGggdHdvIEhERCwgL2Rldi9zZGEgKG15IGN1cnJl
bnQgU29sdXMgc3lzdGVtKXdvciBhbmQgCi9kZXYvc2RiIChhIDIuN1QgZHJpdmUpLCBpbnN0YWxs
IEFyY2ggb24gL2Rldi9zZGIgYW5kIHBpY2sgYW5kIGNob29zZSAKd2hpY2ggZGlzdHJvIHRvIGJv
b3Q/IEkgcmVtZW1iZXLCoCB3YXkgdG8gZG8gYSBjb25zb2xlIGNvbW1hbmQgdG8gcmVib290IAph
bmQgaGF2ZSBHcnViIHNlbGVjdCB3aGljaCB0byBib290IHVwLCBidXQgSSdtIG5vdCBzdXJlIGlm
IHRoYXQncyBzdGlsbCAKYSB0aGluZz8KCgo1LiBXYXMgdGhlcmUgZXZlciBhIGNvbnNlbnN1cyBv
biBob3cgb2Z0ZW4gdG8gZG8gYSBwYWNtYW4gLVN5eXUgaW4gQXJjaD8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

