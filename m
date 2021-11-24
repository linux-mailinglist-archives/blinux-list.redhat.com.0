Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D6245B119
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 02:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637716787;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RR/cv8erzIINYW9O2M88FUrJjf7RFo2MZjrchNEaHkw=;
	b=UB5yWi/zkyfsk81SnvyASonwW9REqqwv97SVwILBLvj7IgP0MnfZd4cOzE04iUjSrKxeBy
	zQJpxNB0WK9bPSdkx5vqmoSRT5hvcPmH1qxFb7D6Z6BX1HprAY93YBXmz/rbhPlaZeYHWe
	eX5NpopV/4L+mcrl8QmMcdATYPkmdjU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-496-xBbiU1XwMWeSIu_PulctfQ-1; Tue, 23 Nov 2021 20:19:43 -0500
X-MC-Unique: xBbiU1XwMWeSIu_PulctfQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB9E18066EC;
	Wed, 24 Nov 2021 01:19:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B25B25C1D5;
	Wed, 24 Nov 2021 01:19:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFA0C4A704;
	Wed, 24 Nov 2021 01:19:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AO1JXcG008625 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 20:19:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 22FA14047279; Wed, 24 Nov 2021 01:19:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ED904047272
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 01:19:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 076991819452
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 01:19:33 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-114-BIGNYvt-PJicdOJT_TEA9g-1; Tue, 23 Nov 2021 20:19:31 -0500
X-MC-Unique: BIGNYvt-PJicdOJT_TEA9g-1
Received: by mail-qk1-f173.google.com with SMTP id a11so1065037qkh.13
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:19:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=+mlK+0mX/hHZysqzx2sp8UysAxoGPU35o8P+RuePxEw=;
	b=AenUcgaQYqgHyARTBzT/NfLD4HYPEpZ/1QZ/CRFOg/tXUaV2ZNYXVDaoOksTHZUq3i
	Gb7DmCK49T92G+BimZQoCw4Ro7xfHsuW5BI7ve+HLRJ1AFZ/fFjbmEGQxnFkIWClZ5uK
	KU3mHYylaSJ81Hqm/hOzr05NtnwFosQsIYEOikfdG2AqbGpxFtKwyOxfl7YrwMlj6uYH
	ehMZwFuhlYVQ1T5MlagZwX+/58C2DUhtpQUk2vOzuysVJTFDju8GxyWDe574VtPx5TMs
	Lf7uwI3LN8MN47NwrCGretdk3UhGqWmfIRpuBhUEDXuqeDsLjFVo43ywJ2FDeDig4CZz
	WDAA==
X-Gm-Message-State: AOAM533Ki+lnIxRz8RshtEi20KJSKyigmN9za6wYReGuOECNwUMa4cH5
	S15uItaQDnS++xQtVGqlYQn7ivCYjI0+MELs
X-Google-Smtp-Source: ABdhPJwajPSW64MpnHp6yesraxTwfcs/xGo7V1yeyZg9203uHdg7KZ7Bsl4xsWhFTjPuCdqkIKloWQ==
X-Received: by 2002:a37:b306:: with SMTP id c6mr1853342qkf.133.1637716770414; 
	Tue, 23 Nov 2021 17:19:30 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id n18sm6936229qtk.9.2021.11.23.17.19.29
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 17:19:29 -0800 (PST)
Subject: Re: looking for two gui accessible applications ClipGrab
To: blinux-list@redhat.com
References: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
	<E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
	<CAO2sX32rX+pa=rWwkCuH2gwUuY2NcrjA3UNZHR5HMQvqhDE+ig@mail.gmail.com>
	<a5e32fec-9c12-db07-69b7-ca6a5e7a8397@gmail.com>
	<9ec61018-27d4-8eb3-98a2-3ac4cd8a0ca5@gmail.com>
	<alpine.NEB.2.23.451.2111231652480.18399@panix1.panix.com>
Message-ID: <d670e5e3-afac-2b50-e4d9-7e80bb283c9a@gmail.com>
Date: Tue, 23 Nov 2021 20:19:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111231652480.18399@panix1.panix.com>
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

U2V0dGluZyB1cCB0aGUgd2VhdGhlciBvbiB0aGUgdG9wIHBhbmVsIG9mIG15IGRlc2t0b3Agd2Fz
IG5vdCBhIHByb2JsZW0uIApUaGUgcHJvYmxlbSBpcyB0aGF0IHRoaXMgd2VhdGhlciBhcHBsaWNh
dGlvbiBkb2VzIG5vdCBoYXZlIG15IGNpdHkgCmxpc3RlZC7CoCBTbyBJIGhhZCB0byBjaG9vc2Ug
YSBjaXR5IGZvdXJ0eSBtaWxlcyB0byB0aGUgbm9ydGggb2Ygd2hlcmUgSSAKbGl2ZSwgYWx0aG91
Z2ggbXkgY2l0eSBpcyBldmVuIGJpZ2dlciB0aGFuIHRoZSBvbmUgbGlzdGVkLgoKVmVyeSBzdHJh
bmdlIGluZGVlZC4KCkNoZWVycywKCklicmFoaW0KCk9uIDExLzIzLzIxIDQ6NTQgUE0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gc28gbG9uZyBhcyB5b3UgZG9u
J3QgZG93bmxvYWQgYW55IGJyb2tlbiBzbmFwcyB5b3Ugc2hvdWxkIGJlIGdvb2QgdG8gZ28uCj4g
SSB0cmllZCBzZXR0aW5nIHVwIHdlYXRoZXIgaW4gbWF0ZSBhbmQgY291bGRuJ3QgZ2V0IHRoYXQg
ZG9uZS4KPgo+Cj4gT24gVHVlLCAyMyBOb3YgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBKdXN0IGdvbm5hIGNoaW1lIGluIGFuZCBzYXkgSSBoYXZl
IHNuYXBzIG9uIFNvbHVzIG91dCBvZiB0aGUgYm94IGFzIHdlbGwuCj4+IFJlYWxseSwgSSBkb24n
dCBjYXJlIGlmIGl0J3MgJ3RvbyBtdWNoIGxpa2UgU1dpbmRvd3MnLCBpZiBJIGNhbiBnZXQgYXBw
cwo+PiBlYXNpZXIgdGhhbiBoYXZpbmcgdG8gaW5zdGFsbCBhIGJ1bmNoIG9mIHBhY2thZ2VzIEkn
bGwgb25seSBldmVyIHVzZQo+PiBvbmNlLi4uaXQncyBhIHdpbiB3aW4gZm9yIG1lIHJlYWxseQo+
Pgo+PiBPbiAxMS8yMy8yMSAyMDowNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4+IFNuYXBkIGlzbid0IGp1c3QgYW4gVWJ1bnR1IHRoaW5nLiBJIGhhdmUgaXQg
b24gRmVkb3JhLCBhbmQgaXQncyBhbHNvCj4+PiBhdmFpbGFibGUgZnJvbSB0aGUgQVVSIGZvciBB
cmNoIHVzZXJzLiBGbGF0cGFrIGlzIGFub3RoZXIgc2ltaWxhciB0eXBlIG9mCj4+PiBjcm9zcy1k
aXN0cm8gcGFja2FnaW5nIHN5c3RlbSwgYW5kIGl0J3MgYXZhaWxhYmxlIGZyb20gdGhlIEFyY2gg
Y29tbXVuaXR5Cj4+PiByZXBvc2l0b3J5LCBGZWRvcmEgYW5kIFNvbHVzLCBhbmQgSSB0aGluayBp
dCdzIGF2YWlsYWJsZSBmb3Igb3RoZXIgZGlzdHJvcwo+Pj4gYXMgd2VsbC4KPj4+IH5LeWxlCj4+
Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+
Pgo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

