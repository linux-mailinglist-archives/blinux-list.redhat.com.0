Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F28FE44FC74
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 00:28:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636932507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UDSgwmaTNOUp0+bMPyooYOJgZj4pglfEtju3ja+NbWM=;
	b=M8vObB/wJy5QmXYWsz+cUcPDzaXjHlyk+6BVJQ1K9ttNbp8/eW9OgZAlYXiJUGglBPjwlf
	EkDwD3JO+90g9FOfSolhmeHmC04CDLZqGPhrW6uAB8dowG9HwF94ommKVlrK1dlPBdrI81
	oJjZMHe50lZeTf4BfrIoqoDhBify2Js=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-563-MePz6VnVM8W9375DDqh8tQ-1; Sun, 14 Nov 2021 18:28:23 -0500
X-MC-Unique: MePz6VnVM8W9375DDqh8tQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BE34802B52;
	Sun, 14 Nov 2021 23:28:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 706C25C1BB;
	Sun, 14 Nov 2021 23:28:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F039C18199EE;
	Sun, 14 Nov 2021 23:28:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AENSAQp005642 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 18:28:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 49EA740CFD10; Sun, 14 Nov 2021 23:28:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44A4740CFD08
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 23:28:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C0788027FB
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 23:28:10 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-556-WCVQnBAuOFibTnMtG4nNWw-1; Sun, 14 Nov 2021 18:28:08 -0500
X-MC-Unique: WCVQnBAuOFibTnMtG4nNWw-1
Received: by mail-qv1-f41.google.com with SMTP id bu11so10229953qvb.0
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 15:28:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=OFPkGUXzjvTiZnSp7Ngyj3F6XmpfQ6XTSEi0o+47Qm4=;
	b=GO5emEkpA+cpc/6qMD1JITWr0NvczinSRjBoX1tJuw1OWUMkdpUpVg631DZDFGECRC
	GtMDMjXt4meVyETR94rTrDR5CbHPztQ5KI3sLPROLZh/eODVKBBTUX2Iro+MFOAiY9++
	8FliCDzIgBtf+1ODAf0JWtgn4TgK6lL+o6aLBg2Yd6zsLI1I6pVd0qSGzkpqNerFqwec
	+MPjfd9C9tGAh4x6oDtgMMhuy3nqxOLCNoB8QiEDKMAvSMnBKMaj/0+mfOQoi4/wV1q+
	cpzRXLXF+gYlcCFCO7hyCOY/xhYWiwkZ3ShYWHAukzb8Qe0b5Y6s840hPOJFpsksTl9p
	50ag==
X-Gm-Message-State: AOAM532eKvDjVgTNVvi3pt/DuTIsn9QQkUzdlcFQo+IB0Brc1ShII4Kz
	4N6Ey82/If0Rd2ihPfCERmwcw9XyxRAWww==
X-Google-Smtp-Source: ABdhPJwoY7LwAISONkjIdqyJWSQPhOJDgKD55eT+LSuAfzbXzra73bSuR0X7xiJJLO2f5zvTg+3FlQ==
X-Received: by 2002:a05:6214:e41:: with SMTP id
	o1mr32617587qvc.43.1636932487807; 
	Sun, 14 Nov 2021 15:28:07 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::d8d3? ([2601:192:4c80:1420::d8d3])
	by smtp.gmail.com with ESMTPSA id
	143sm5864744qkg.87.2021.11.14.15.28.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 15:28:07 -0800 (PST)
Message-ID: <b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
Date: Sun, 14 Nov 2021 18:28:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
In-Reply-To: <6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

V2hlbiBpbiB0aGUgY29uZmlndXJhdGlvbiBzY3JlZW4sIHVzZSB0aGUgJ3cnIGNvbW1hbmQgdG8g
c2VhcmNoIGZvciB0aGUgCnN0cmluZyAic2hvdy1jdXJzb3IiLCBvciB0aGUgbGlrZSwgYW5kIGhp
dCAnc3BhY2UnIG9uIHRoYXQuwqAgT25jZSB0aGUgCmN1cnNvciBpcyBzaG93aW5nLCB5b3Ugc2hv
dWxkIGJlIGFibGUgdG8gaGVhciB3aGVyZSB5b3UgYXJlLsKgIEl0IGlzIGxpa2UgCmNoZWNrYm94
ZXMuwqAgVGhlcmUgd2lsbCBiZSBhbiAneCcgaW4gdGhlIG9uZXMgdGhhdCBhcmUgc2VsZWN0ZWQu
CgoKWW91IHdvbid0IGZpbmQgYSBmaWVsZCBjYWxsZWQgaW1hcCBzZXJ2ZXIsIGJ1dCB5b3Ugd2ls
bCBmaW5kIHZhcmlvdXMgCnBhdGhzLCBpbmNsdWRpbmcgb25lIGZvciBpbmJveC7CoCBZb3UgaGF2
ZSB0byBpbmNsdWRlIHBvcnQgbnVtYmVycyBhbmQgCnJlbW90ZSBwYXRobmFtZXMuwqAgQW4gZXhh
bXBsZSBsaW5lIG1pZ2h0IGJlOgoKCiJpbmJveHBhdGg9e2RhaHVudEBpbWFwLmdvb2dsZS5jb206
NDQzfWluYm94IgoKCldpdGggeW91ciBmYXZvcml0ZSBzZWFyY2ggZW5naW5lLCBsb29rIGZvciBz
b21ldGhpbmcgbGlrZSAicGluZSBnbWFpbCIuIApUaGVyZSBhcmUgc2V2ZXJhbCBleGFtcGxlIGZp
bGVzIG9uIHRoZSBuZXQuwqAgVGhlc2UgZmlsZXMgYXJlIApodW1hbi1yZWFkYWJsZSBhbmQgZWRp
dGFibGUuwqAgUmVtZW1iZXIsIHRoZSBmaWxlIGluIHF1ZXN0aW9uIGlzIGNhbGxlZCAKIn4vLnBp
bmVyYyIuwqAgSWYgeW91IHdhbnQgdG8gZWRpdCB0aGlzIGZpbGUgd2l0aCBhIGd1aSBwcm9ncmFt
IGxpa2UgCnBsdW1hLCB0aGF0IHdpbGwgd29yay7CoCBJbiBvcmRlciB0byBoYXZlIHlvdXIgZmls
ZSBtYW5hZ2VyIHNob3cgeW91IHRoZSAKZmlsZXMgd2l0aCBuYW1lcyBiZWdpbm5pbmcgd2l0aCAn
LicsIHVzZSAnY3RybCtoJywgaW4gYSBmaWxlIG1hbmFnZXIgd2luZG93LgoKCgpIVEgsCgoKCkRh
dmXCoCBIdW50wqAgPGthMWNleUBnbWFpbC5jb20+CgoKCk9uIDExLzE0LzIxIDE4OjE0LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IHRoZSBzbXRwIHNlcnZlciBl
dGMuIFRoZSBwcm9ibGVtIGlzIHRoYXQgbW92aW5nIGludG8gdGhlc2UgZmllbGRzIHdpdGggCj4g
dGhlIGFycm93cyBkb2VzIG5vdCB3b3JrLiBJIGdldCBubyAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

