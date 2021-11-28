Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 76017460587
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 10:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638093126;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7zxJhGNxPt46JXmPXfE7VwXaki1H9bUeC3REm7Hwh6M=;
	b=d3PRDvXgL526DrnzXqrpmDemKCtprwXWS4DJ0AUNNFqGGjFyxGnfqV2uoWYA1aKJqP6iFE
	TRXjL1HvxX+YryFiPySdO6jE69dBXdXFPhrZ33ykPqok3grgsGoVHeaGi5ufZsuJgiWEha
	25mP00BK2rEqap0HvS3iExfHATtbUsw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-Uk7Psvx_PcW7ohgfopqOPg-1; Sun, 28 Nov 2021 04:52:03 -0500
X-MC-Unique: Uk7Psvx_PcW7ohgfopqOPg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3FA9C801B24;
	Sun, 28 Nov 2021 09:51:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A7E819724;
	Sun, 28 Nov 2021 09:51:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C7D71809C87;
	Sun, 28 Nov 2021 09:51:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AS9mWLm010442 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 04:48:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6DA6A492C3B; Sun, 28 Nov 2021 09:48:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 693A5492C38
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 09:48:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4FD6F8032EB
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 09:48:32 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-188-JCF5EqCpPCq66pd_wF15Qw-1; Sun, 28 Nov 2021 04:48:30 -0500
X-MC-Unique: JCF5EqCpPCq66pd_wF15Qw-1
Received: by mail-ed1-f43.google.com with SMTP id x15so58681652edv.1
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:48:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=t/U5nyrhVpZ/+JRpiUZ52BWw4YtjEhWUlDLlu1gueyQ=;
	b=VW1bNOqOArOA1AaLrl/oHQUd9NDWR8BLedz+TEqnCzBn6/HgFZV42enOtAfw56iYHG
	qStrDI5EtjYCoOXWxpDDl8m6B+NJrH2ck4NzXHKPUrSBCf7fleBRFpWruUN3KmyeUlD/
	ZpSDKN5DR1+d9wnzFaA5iSXJyamTappOyl/gG+ent8PpzE3kFZ5UvL7aksGWRVknGACz
	a/LsCN7tVRZbUGlrApCMQMtwvXjhSA266VWor9cQoxexsIwZ+ElWiYGI1JFfIihyjBuZ
	bgTc5JRBHPFhQOcVP/vIDNj0Rf5inRKGIIq80MRoodevoapXujGrzpSmQnc+812/hDn3
	GVVQ==
X-Gm-Message-State: AOAM532GWNNL/W21ozcBXGoZtgdZP71J6oQHkgX1DpCbC5toqzXfSOhQ
	1KM3Icc8ZMiaVAO+wg1BrMjhpT/0XSsWEQ==
X-Google-Smtp-Source: ABdhPJw3BaTagEJf68rBh2HNQ88t9aUAssDSWYasoJ33u+ar0ofoCGlckNqt4wHslVo0DLasyyb9Fw==
X-Received: by 2002:a05:6402:350e:: with SMTP id
	b14mr63698782edd.313.1638092908898; 
	Sun, 28 Nov 2021 01:48:28 -0800 (PST)
Received: from [192.168.8.130] ([197.184.178.30])
	by smtp.gmail.com with ESMTPSA id f7sm6931210edw.44.2021.11.28.01.48.27
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 01:48:28 -0800 (PST)
Message-ID: <f0af3b56-8a78-524c-440e-9744985c7556@gmail.com>
Date: Sun, 28 Nov 2021 11:48:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Jumping from Solus/Ubuntu to Slint...how easy is it?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <78e0ef3a-4843-b11a-6ab4-586498b14250@gmail.com>
	<a5db1a21-5c98-f8ca-4f04-c42db4c6fa24@gmail.com>
	<5306ea94-e937-f383-95da-12ea194be198@gmail.com>
In-Reply-To: <5306ea94-e937-f383-95da-12ea194be198@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U2t5cGUgY2FuIGJlIGluc3RhbGxlZCB1c2luZyBmbGF0cGFrLgoKCldhcm0gcmVnYXJkcywKCkJy
YW5kdCBTdGVlbmthbXAKClNlbnQgZnJvbSB0aGUgRmVkb3JhIG1hY2hpbmUsIHVzaW5nIFRodW5k
ZXJiaXJkCgpPbiAyMDIxLzExLzI2IDIzOjU3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+IFlvdSBzYXkgeW91IGNhbid0IHJ1biBpdCBpbiBhIFZNLCBJIGdvdCBp
dCB3b3JraW5nIGluIHF1Y2tlbXUgd2l0aCBhIAo+IGJpdCBvZiBwb2tpbmcgYXQgdGhlIGV4YW1w
bGUgZmlsZXMuCj4KPiBTbywgcXVlc3Rpb24uIEknbSBtaXNzaW5nIHR3byBhcHBzIGluIG15IFZN
IGluc3RhbGwKPgo+Cj4gUHVycGxlLXNreXBld2ViIChQaWRnaW4gc2t5cGUgcGx1Z2luKSBhcyB3
ZWxsIGFzIFNreXBlCj4KPgo+IFNlY29uZCBvbmUuLi5Lb2RpCj4KPiBTbyBjYW4gSSBnZXQgYm90
aCBpbnN0YWxsZWQgaW4gU2xpbnQgb3I/Cj4KPgo+IE9uIDExLzI2LzIxIDIxOjM4LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBTbGludCBpcyBwcm9iYWJseSB0
aGUgbW9zdCByZWxpYWJseSBhY2Nlc3NpYmxlIGRpc3RyaWJ1dGlvbi4gWW91IAo+PiBjYW4ndCBy
dW4gYSB2aXJ0dWFsIHNsaW50IG9uIHlvdXIgY29tcHV0ZXIsIGhvd2V2ZXIsIHlvdSBjYW4gaW5z
dGFsbCAKPj4gb24gYW4gU0QgY2FyZCBhbmQgdXNlIGl0IHdpdGhvdXQgYW55IGFjY2Vzc2liaWxp
dHkgaXNzdWVzLiBZb3UgbmVlZCAKPj4gYXQgbGVhc3QgMzIgR0IgU0QgZGlzay7CoCBJIGhhdmUg
aXQgcnVubmluZyBvbiAxMjggR0IgU0QgZHJpdmUuCj4+Cj4+IENoZWVycywKPj4KPj4gSWJyYWhp
bQo+Pgo+PiBPbiAxMS8yNi8yMSAzOjU5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4gU28gYXMgaXQgc2F5cy4uLi5hbmQgZ2l2ZW4gbXkgcmVjZW50IHdo
aWZmcyBvbiBxZW11LCBzbyBmYXIgKmNyb3NzZXMgCj4+PiBmaW5nZXJzKiBTbGludCBpcyBzbG93
bHkgaW5zdGFsbGluZyBidXQgSSdtIHdhbnRpbmcgdG8ga25vdy4uLgo+Pj4KPj4+Cj4+Pgo+Pj4g
SG93IGVhc3kgaXMgaXQgdG8gYWRhcHQgdG8gU2xpbnQvU2xhY2t3d2FyZSBjb21pbmcgZnJvbSBV
YnVudHUgb3IgCj4+PiBTb2x1cyBvciBGZWRvcmEgb3IuLi4KPj4+Cj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pgo+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

