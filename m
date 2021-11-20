Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 43610457A85
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 02:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637373374;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=epIjxyP9RsqPaaPz1tppD0gPaOjKN74EWLhIEyv3OMo=;
	b=fRqvnnfXKxgn7bSrDOli8sAJqh4bN6ZUU/EG8QmaSE4YTqSHP9biOIUj+i42POBPCurdCJ
	aA/3HZsL+2S69KqIb46ZEb64ChKAHrt1dBjwrTky3Ppy9jbSubWFnCfEzQEj0M9aqnOGqp
	8IKSzhrdb+hJvSnVmvNE2avbpXP4n+o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-62-3Vggi_ujMj29d5owKyCEOA-1; Fri, 19 Nov 2021 20:56:10 -0500
X-MC-Unique: 3Vggi_ujMj29d5owKyCEOA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42C221851734;
	Sat, 20 Nov 2021 01:56:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 226A46788F;
	Sat, 20 Nov 2021 01:56:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BCAD14A703;
	Sat, 20 Nov 2021 01:56:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AK1odh1006106 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 20:50:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 722E9112131B; Sat, 20 Nov 2021 01:50:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D82E1121318
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 01:50:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8CCD5811E78
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 01:50:36 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-595-6TEZZ7dvMPWepB6G3uiqnA-1; Fri, 19 Nov 2021 20:50:34 -0500
X-MC-Unique: 6TEZZ7dvMPWepB6G3uiqnA-1
Received: by mail-qk1-f171.google.com with SMTP id a11so12056601qkh.13
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 17:50:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=q4EiLOMQmS2Z9I4jYk+mPljq7sQIAH4fevNwzMRhSf0=;
	b=jyfd1jO2hME0GEzdW3ZhKT1oPANmctWdbdFoR1YpZqQeSBDG+pnWIJlU5mRYnE5oSw
	Oys/2ONYDMGD4BvU8kL1BiEIEE4sctduwnPrAmbrx1th069GQ5jhRCm7C+xmHiBEZfdu
	1ym5F1AP8HJZdXA+eF+INQ/0uLCmpD5Mdz4pKCahFGI7SeVpyDzKK0Wkirwz/jhB3AQq
	spaTpdVl4yLj7wt7g7MNJdipPGhoZRRD37jjkRyVPZceSArTLGpUbjR9rAE1nePtxUia
	qXwoc4QRZfeIPdGofXvsYQZe154oU7as+lAi/lHWRXoSZw57acRlVTpuUkZk0m3kaJZc
	gukw==
X-Gm-Message-State: AOAM533OsoTu6M304Gc0NWLlh78HWUjgUbg+0/8kp/vwpwnYwjyS1Y3L
	jV9MSljroZCzyaJ2H66Vrfj8m23xOQ0FbUAj
X-Google-Smtp-Source: ABdhPJwZJGoOUVoD2skaYSRbTlDCRAoESJ5+zGdmI183c0XJ/XIpW/1e63/0n5K2D1EM5X/+zBcMwg==
X-Received: by 2002:a05:620a:1790:: with SMTP id
	ay16mr6549392qkb.43.1637373033719; 
	Fri, 19 Nov 2021 17:50:33 -0800 (PST)
Received: from ?IPV6:2601:152:4000:330:c987:fc9b:b9a0:27b4?
	([2601:152:4000:330:c987:fc9b:b9a0:27b4])
	by smtp.gmail.com with ESMTPSA id x21sm729026qkf.77.2021.11.19.17.50.33
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 17:50:33 -0800 (PST)
Message-ID: <6283f17e-5316-8991-44ce-442189ef349e@gmail.com>
Date: Fri, 19 Nov 2021 20:50:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: what is the shortcut for continuous read on orca
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRnJpZW5kcywKCldoYXQgaXMgdGhlIHNob3J0Y3V0IHRvIGhhdmUgYSBjb250aW5vdXMgcmVh
ZCBmb3Igb3JjYT8gSSByZWFkIHRocm91Z2ggCmFsbCB0aGUgc2hvcnRjdXRzIGZvciBhIGxhcHRv
cCBhbmQgSSBkaWQgbm90IGZpbmQgaXQuIERpZCBJIG1pc3MgCmFueXRoaW5nPyBJdCBpcyB2ZXJ5
IHRpcmluZyB0byBoYXZlIHRvIGNvbnRpbnVvdXNseSBoaXQgdGhlIGRvd24gYXJyb3cgCnRvIHJl
YWQgbG9uZyBkb2N1bWVudHMuwqAgV2hhdCBpcyB0aGUgc2hvcnRjdXQgdG8gZG8gdGhhdD8KCgpD
aGVlcnMsCgpJYnJhaGltCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

