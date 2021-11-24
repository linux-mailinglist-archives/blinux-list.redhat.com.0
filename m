Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2431245CEE1
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 22:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637789024;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xqHgSrsO/0DWen7uCcfHuPB4P5K1bEDAB8otFuGvH9E=;
	b=ZnNb1dbYWQw6/Zsw4tCgz2MJDcCgWgIs2d/GoRThbcm7Ex7etuYKnqEQgHV0UKS6elxsZ9
	F79wPnKtNbw/OjhM/b9yNWdXbi7s6l7kbTkguf9h/y0jdW9x4TMRckdnlzZdYGNac/+qOF
	3JxOhlnfgKh6BuoRaMr/xkjmmi9fH9I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-291-ummYYS6hPhimbbJ_wNhm8g-1; Wed, 24 Nov 2021 16:23:40 -0500
X-MC-Unique: ummYYS6hPhimbbJ_wNhm8g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDB26100CCC0;
	Wed, 24 Nov 2021 21:23:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD0EB171FF;
	Wed, 24 Nov 2021 21:23:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 693B14BB7C;
	Wed, 24 Nov 2021 21:23:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOLMUK7022153 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 16:22:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3168E404727A; Wed, 24 Nov 2021 21:22:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D4164047272
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 21:22:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 136F88007B1
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 21:22:30 +0000 (UTC)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
	[209.85.166.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-163-Pwi_eoE3N0SmxMasR7uCoQ-1; Wed, 24 Nov 2021 16:22:28 -0500
X-MC-Unique: Pwi_eoE3N0SmxMasR7uCoQ-1
Received: by mail-il1-f178.google.com with SMTP id e8so3803341ilu.9
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 13:22:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Vn4Y3cwI4LcW9ciWASwIwd6lCHW30sbKgcs1TtjkxBo=;
	b=Sd162Ka9/u2jdXjBOQToIPp4nf+b5i3WhJuKYXOfK1+GZXPQQiS7fp5+e+87aRQ8M/
	151Rtw3AQGilC1ggemvFMZBjh4fxRZez4AABpYXBICx/B5vwZlZRY6a9+91zPaQWziKS
	23qQG0EiQ7t+cX/TL83MtxJx5AK5313mAuDq7+X1zMVZuBWAlO4fGbDWK5CVXI0GRKwS
	+iFFA+NQ+WdgObZ9r7Tpabh3PRVNYW0uI/SPU4kk/DpiTr2uylCsNxJfRuix9oYh99d/
	e6qeHwc0ExFar5+6/IGWhc6zkfnIYLz+0aAjXnBJs05gjGw9vySc5ofgsWGhZd6MxGTw
	XZ3A==
X-Gm-Message-State: AOAM533y/C5g4z4OYQwp7YVMInjZFfePFFIBhFmamt2iSyGUuN4oSo+Y
	hxT1GGDa/7JbQ1Aoen2IHZqJTGTolJRWkA==
X-Google-Smtp-Source: ABdhPJySIsCFVxCnjeIBDLMnyfKyJINn66oUF+mYQMm2cdma6LGjp9b+CZEozstqaGI8AeAklt0EvA==
X-Received: by 2002:a05:6e02:194e:: with SMTP id
	x14mr14954059ilu.245.1637788947370; 
	Wed, 24 Nov 2021 13:22:27 -0800 (PST)
Received: from ?IPV6:2600:1702:20f0:4420::43? ([2600:1702:20f0:4420::43])
	by smtp.gmail.com with ESMTPSA id z6sm654128ioq.35.2021.11.24.13.22.26
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 13:22:27 -0800 (PST)
Message-ID: <7e0f2665-fa77-42db-62bc-bc92ecd199d9@gmail.com>
Date: Wed, 24 Nov 2021 16:22:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Fedora and virtual machines not starting
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
In-Reply-To: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

SGksCgoKSSBoYXZlIHRoaXMgc2FtZSBwcm9ibGVtIHdpdGggdm13YXJlIGluIG1hYyBvcyBzbyB5
b3UgYXJlIG5vdCBhbG9uZS7CoCBJIApoYXZlIHRyaWVkIHZpcnR1YWwgYm94LCBidXQgZXZlcnl0
aW1lIEkgdHJ5IHRvIGZpeCB0aGUgcHJvYmxlbSBvZiB0aGUgCnZib3ggZXh0ZW50aW9uIG5vdCB3
b3JraW5nIGl0IG9ubHkgd29ya3MgZm9yIGEgc2hvcnQgdGltZSBhbmQgc28gSSBqdXN0IApnYXZl
IHVwIG9uIGl0LgoKCk1hdHRoZXcKCgoKT24gMTEvMjQvMjEgMTA6MjUgQU0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gU28uLi5kZWNpZGVkIHRvIGdpdmUgRmVk
b3JhIGEgc2hvdCBpbiBhIFZNLgo+Cj4gSSdtIHVzaW5nIHRoZSBxdWlja2VtdS9xZW11IHNldHVw
IGFuZCBnb3QgdGhlIE1hdGUgc3Bpbi4KPgo+IE15IGlzc3VlPyBJdCBzdGFydHMgdXAgZmluZSwg
YnV0IGRvZXNuJ3QgYnJpbmcgT3JjYSB1cCBhdCBhbGwuCj4KPiBBbHQrRjIgYW5kIHR5cGluZyBv
cmNhIGRvZXNuJ3Qgd29yawo+IEFsdCtzdXBlcitTIGRvZXNuJ3Qgd29yawo+Cj4gU28sIGRpZCBJ
IG1pc2NvbmZpZyB0aGUgcWVtdSBzZXR0aWluZ3Mgc29tZWhvdyBvcj8KPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

