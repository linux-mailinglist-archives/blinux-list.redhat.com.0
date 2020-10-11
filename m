Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5762B28A809
	for <lists+blinux-list@lfdr.de>; Sun, 11 Oct 2020 17:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602431239;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ffDMdWVZZY8oLPUKaYjkgMDzK///6G0xEiOIdBddYMg=;
	b=bdEt2qfP0JGJkY+uxrEIGAPN2SxBMR4Im4l9RGOoSAdP6BzqufTgvgFSK+exi4NXidfg8B
	wKEGDoceYtA3aBFdBjp2OCe/LffvoZyaxc3qYH6MwXxTmd9AxfVhjViiiWo++VCLpjjOHp
	5T2vcMdcE8gIURSV51vRndCiRIqKnHk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-QzDsO3STNMm0GYeOZqP0vg-1; Sun, 11 Oct 2020 11:47:17 -0400
X-MC-Unique: QzDsO3STNMm0GYeOZqP0vg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2206B10059A7;
	Sun, 11 Oct 2020 15:47:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07E8C5C1DC;
	Sun, 11 Oct 2020 15:47:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE330180B657;
	Sun, 11 Oct 2020 15:47:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09BFl8s2012748 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Oct 2020 11:47:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C8424219F1B; Sun, 11 Oct 2020 15:47:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2A2B219F0C
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 15:47:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D70D5858294
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 15:47:05 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-163-tOLsoy7COESjecW_9VYIBw-1; Sun, 11 Oct 2020 11:47:03 -0400
X-MC-Unique: tOLsoy7COESjecW_9VYIBw-1
Received: by mail-ed1-f44.google.com with SMTP id cq12so14383460edb.2
	for <blinux-list@redhat.com>; Sun, 11 Oct 2020 08:47:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=U5S1ZhASbkcbgOqLyL6wzivkQQpmOT/1QBO8bv1h8PI=;
	b=XJCnt4irwupN+qOGkgRYaNYV1egWos8MepUdRoEF9E+V3ZpScBaGBCeVUKwus+bE7m
	ctsYG7KeRkRSgjd09qiHfdjzPteWrk6Isx4IaS0T65oQlfj4saX3QncZRJLoyrti3VFo
	EK8/nzd91lE+Ct+bKjTL/C88ZZ9OIOIKQtBFlXOHoF9PvoY96xMpeVMHpiAFcRu4ELqr
	fAvinBKu/WzACWHaSZMsjGkctbKmTEuPcgsYOLI8Bu/ggpiaMFhcCNwEFs1h8HHYsRYa
	pAmOe1cJKzfFMBNyekH9KA9W32us5vJwle2VVjAaqPf9TsIoc/OH6CbwEs3rQHM4PYXo
	AcKg==
X-Gm-Message-State: AOAM53294D7oW2GQ8Axnk829fl7V4lJJoQPOAPgAGichSj4VOkLgkTHy
	srynW7M4DDp8qwEmWcRL1F463d6QZd9SSw==
X-Google-Smtp-Source: ABdhPJykhz1tOd+Iwj/3CgKD+n3rBBnajyl+L5hvxt82oJSDzkgZFmHwhc18NvvGqxKRe9wUtSq92A==
X-Received: by 2002:a05:6402:1779:: with SMTP id
	da25mr9657280edb.60.1602431221927; 
	Sun, 11 Oct 2020 08:47:01 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	pj5sm9510936ejb.118.2020.10.11.08.47.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Oct 2020 08:47:01 -0700 (PDT)
Subject: Re: have we any experts on the list?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2010111141030.17015@panix1.panix.com>
Message-ID: <c81de67d-96ad-d809-8f1a-0cbf30051702@gmail.com>
Date: Sun, 11 Oct 2020 18:47:00 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2010111141030.17015@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

d2hhdCByb29tPwoKMTEuMTAuMjAyMCAxODo0MiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiDQv9C40YjQtdGCOgo+IElmIHllcywgZG9lcyBhIHdheSBleGlzdCBmb3IgYSB1c2Vy
IGVudGVyaW5nIGEgcm9vbSB0byBsaXN0IHRyYWZmaWMgdGhhdAo+IGhhcHBlbmVkIGluIHRoZSBy
b29tIGJlZm9yZSB0aGUgdXNlciBlbnRlcmVkIHRoZSByb29tPwo+Cj4KPiAtLQo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KLS0gClNpbmNlcmVseSwgQWxleGFu
ZGVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cu
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

