Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE91461B45
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 16:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638200769;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jJhPkg9JmsZZCr9tT14xZ+yY1cDrnURxuuGj6EUKcW0=;
	b=D3Bje2bEIfH+skNvRDtJud10TpnMnjDi2as2Z2p2t+WfUT9GEQx4eaqNhXxkmCxzzL3ZdR
	dsy888Vnu9RNZzUEurcDb7WSHvR8WWT4g4sdMzPV5CxVpX+ZliR7f/JgH15zeJmivwwQj6
	ZnAdew4MzRthXYrhMj8BbL9LL5JfqIU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-450-fUhIcNavNu6lCLVbxtY3kw-1; Mon, 29 Nov 2021 10:46:05 -0500
X-MC-Unique: fUhIcNavNu6lCLVbxtY3kw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68A5F1932484;
	Mon, 29 Nov 2021 15:46:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C69619724;
	Mon, 29 Nov 2021 15:45:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A56401809C89;
	Mon, 29 Nov 2021 15:45:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATFjpuN012460 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 10:45:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D21D440CFD13; Mon, 29 Nov 2021 15:45:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBFFA40CFD05
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:45:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B0820811E81
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:45:51 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-393-OC2sOXONMqGBQVrkFASF-Q-1; Mon, 29 Nov 2021 10:45:49 -0500
X-MC-Unique: OC2sOXONMqGBQVrkFASF-Q-1
Received: by mail-wr1-f46.google.com with SMTP id j3so37813089wrp.1
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 07:45:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ERVzy8BKF8tPFg21VDimPuC71U3rdc8oYKVtEPQiDkk=;
	b=agwJX+FW9RFgOWJkwM48hG0XCe/hCJbTqPRWDYhQVn6AKpJDWpJ7e0OT3Q84m0SRta
	0qmQGDUonX2ar4PNjOVVWyEls3yxiURzGD3WDMriiiO/NTdtxV+vbmmMmtKkhzlFuOQE
	2demYsiFrQuth+5xJgTi4ErZaUm7V9/kl98Ovb3zwFuL116BlbGt+WtucEpZycJzFLZF
	XOJD6t/2rAmiPvkkb/6tSbXlDUURRrhc4/5oou40daTKDiC8CMIbcY604pMr4TkuTUxl
	+aQamz//Muswy0oqNWkwpuubnK+Ije+HqOIRgF/I8o7D55rCmEnjpJ4WBa2V+rMb/afT
	jXMg==
X-Gm-Message-State: AOAM5317NLsWQvntgC31Ulwbis3WENzXDr1b1FXKLuJqnsKkBYW13j0T
	J8UQVgOgzaAheCLdRWRbejmP32ydRLkZrA==
X-Google-Smtp-Source: ABdhPJyeG2vr2wXigtAv9OCIOGyW1Q9WTnW4iVhFZg0jFbbTdnj8SVyqcY1LgdOq16guNB8n02HyHw==
X-Received: by 2002:adf:f012:: with SMTP id j18mr34363104wro.353.1638200747996;
	Mon, 29 Nov 2021 07:45:47 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	v8sm13844709wrd.84.2021.11.29.07.45.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 07:45:47 -0800 (PST)
Message-ID: <a30dcba5-400c-0c89-4d6c-1de03ef9af34@gmail.com>
Date: Mon, 29 Nov 2021 15:45:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: --force-renderer-accessibility not working lately
To: blinux-list@redhat.com
References: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
	<4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
	<9fa55c55-42e2-c4e8-2ef1-21ccd5cf9259@gmail.com>
In-Reply-To: <9fa55c55-42e2-c4e8-2ef1-21ccd5cf9259@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Tm8gaWRlYSwgSSdtIGFzc3VtaW5nIG9uIHJlYm9vdCBpdCBwaWNrZWQgdXAgdGhlIHZhcmlhYmxl
IGJlaW5nIHNldCAKcmlnaHQgYW5kIGl0IHRvb2sgYSByZWJvb3QgdG8gcGljayB1cCBvbiBpdC4K
CkhleSBpdCB3b3JrcyzCoCBkb24ndCBrbm9jayBpdCByZWFsbHkKCk9uIDExLzI5LzIxIDE1OjQw
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IE9rLCBpbnRlcmVz
dGluZywgYWZ0ZXIgcmVib290aW5nIG15IHN5c3RlbSBpdCBpcyB3b3JraW5nIGFzIGV4cGVjdGVk
LiAKPiBXaGF0IHRoZSBoZWxsPwo+Cj4KPiBXYXJtIHJlZ2FyZHMsCj4KPiBCcmFuZHQgU3RlZW5r
YW1wCj4KPiBTZW50IGZyb20gdGhlIEZlZG9yYSBtYWNoaW5lLCB1c2luZyBUaHVuZGVyYmlyZAo+
Cj4gT24gMjAyMS8xMS8yOSAxNzoyNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4gRG8geW91IGhhdmUgdGhlIHJpZ2h0IGVudmlyb25tZW50IHZhcmlhYmxlcyBz
ZXQ/IEluIG15IC5iYXNocmMgSSBoYXZlCj4+Cj4+Cj4+IGV4cG9ydCBBQ0NFU1NJQklMSVRZX0VO
QUJMRUQ9MQo+Pgo+Pgo+PiBJbiBpdC4gVGhhdCBtYWtlcyBDaHJvbWl1bSBiYXNlZCB0aGluZ3Mg
d29yayBvbiBBcmNoL1VidW50dSBmb3IgbWUKPj4KPj4gT24gMTEvMjkvMjEgMTU6MTMsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIaSBhbGwsCj4+Pgo+Pj4K
Pj4+IEkgaGF2ZSB0cmllZCB0aGlzIGluIGJvdGggU2xpbnQgYW5kIEZlZG9yYSwgYW5kIEkndmUg
bm90IGhhZCBhbnkgCj4+PiBsdWNrIG1ha2luZyB0aGUgLS1mb3JjZS1yZW5kZXJlci1hY2Nlc3Np
YmlsaXR5IGZsYWcgd29yayB3aXRoIGVpdGhlciAKPj4+IEdvb2dsZS1DaHJvbWUgb3IgU2t5cGUs
IGJvdGggYXBwbGljYXRpb25zIGZvciB3aGljaCB0aGlzIGZsYWcgdXNlIHRvIAo+Pj4gd29yayB2
ZXJ5IHdlbGwgaW4gdGhlIHBhc3QuCj4+Pgo+Pj4KPj4+IEFtIEkgbWlzc2luZyBzb21ldGhpbmcs
IG9yIGFtIEkganVzdCBvdXQgb2YgbHVjayBoZXJlLgo+Pj4KPj4+Cj4+PiBVbmZvcnR1bmF0ZWx5
LCBJIGFjdHVhbGx5IG5lZWQgdGhpcyB0byB3b3JrLCBvdGhlcndpc2UsIEknbGwganVzdCAKPj4+
IGhhdmUgdG8gdXNlIHRoZSBNYWNCb29rIHRvIGRvIG15IGpvYi4KPj4+Cj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

