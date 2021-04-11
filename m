Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 39C3B35B5EE
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 17:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618155596;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lct2qhw1+QZ5Kkr0isDI5QAxRPzSORBSvTKdcbDr4dQ=;
	b=P9k6atGqwDy+GquVUiYpq51GXx0iwMxNYQVOqOtbrsyAGvhNP8VqwNiAhlg5TDeVUfZ9h8
	hE0MG/MAtf/jvqX2cLETHsNFRxBsjuvQPLRu/GztpwIQ3S9MnkMX2piYcgsw/s1liRP0uR
	JQ3DF0X1k6JPGpFLi/iW4JQ21VcIMSI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-9dOOLfRPO8CwTRbG5ttzBw-1; Sun, 11 Apr 2021 11:39:55 -0400
X-MC-Unique: 9dOOLfRPO8CwTRbG5ttzBw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05FF51006701;
	Sun, 11 Apr 2021 15:39:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1977610074F1;
	Sun, 11 Apr 2021 15:39:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C6E81806D16;
	Sun, 11 Apr 2021 15:39:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BFdlI3004679 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 11:39:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 848A21111A52; Sun, 11 Apr 2021 15:39:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FD7A100405C
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:39:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADB25101A52C
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:39:44 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
	[209.85.218.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-376-BvFhdCl_PZGcfe7MsPK4JQ-1; Sun, 11 Apr 2021 11:39:42 -0400
X-MC-Unique: BvFhdCl_PZGcfe7MsPK4JQ-1
Received: by mail-ej1-f47.google.com with SMTP id e14so16129811ejz.11
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 08:39:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Zg0MtyK/5wNPVgO1PhQq+xNmxSFxXVvPI4UwM5H6RvE=;
	b=Nr+pjADHgvjJus+TSfcziLMdgQI3nKFeL9QyJDPzQTg70lT+p4FU11lLQqpNoVzVtH
	ks3Bii4A2UQ5uWrawvTQNM5Xgjb55q/Ss+b3CyRyA01127rTzR5c2V6dvAqwOzeGyBuR
	bIioYaEL/Wa+2lD0RMKzat134E9j1vsX/6oEaGSjbSmfZpLnTkVsbOXxp2s151mYWVpD
	ckX4qhcTjGhNvgjheTUh68pN774Dr5cj7B+l+58pooMTgYJgPsdXtDrk1RnK37u2xudh
	j1G1lqB+17IRmjG9UB4POU+ZRmfTsqI1vejxdQpz9AFI4TViYZdCAMuKYdeb9oHqzY6H
	laXw==
X-Gm-Message-State: AOAM5309PnMAK4VdspR6Fcowy0HZReS/cZUfpEM8I0mJhkgSL9ntrBCp
	BN7aum/lAxqjgYlp+QE+F6j9MBoaYGTF8w==
X-Google-Smtp-Source: ABdhPJwCiuUpzWqkaVwLB30tMN5KJaxVOOju4vf3VdXOGytNdvScAFx1GxqMCxUIufesxPV2irmvOw==
X-Received: by 2002:a17:907:294f:: with SMTP id
	et15mr9273031ejc.14.1618155580891; 
	Sun, 11 Apr 2021 08:39:40 -0700 (PDT)
Received: from [192.168.1.8] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61]) by smtp.gmail.com with ESMTPSA id
	la16sm4179763ejb.40.2021.04.11.08.39.40 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Apr 2021 08:39:40 -0700 (PDT)
Subject: Re: Some questions about Arch Linux
To: blinux-list@redhat.com
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
	<93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
	<42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
	<d109559a-d2c0-c375-255d-b4e4c1ffa0b8@gmail.com>
	<b8cfdbc2-3994-32fa-92d4-fe0a449c2aaf@gmail.com>
	<cf6145c6-1bb4-2815-494d-3be7cb796802@slint.fr>
Message-ID: <cacbfbd8-ea7c-a750-2123-efca11ff4a2d@gmail.com>
Date: Sun, 11 Apr 2021 17:39:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <cf6145c6-1bb4-2815-494d-3be7cb796802@slint.fr>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKV2hhdCBzaG91bGQgSSBtb2RpZnkgdG8gbWFrZSB0aGF0IGhhcHBlbj8g
c29ycnksIGJ1dCBJJ20gdHJ5aW5nIHRvIGdldCAKaXQgYWxsIHJpZ2h0LCB0aGF0J3Mgd2h5IEkn
bSBhc2tpbmcgc28gbWFueSBxdWVzdGlvbnMuCgpCZXN0IHJlZ2FyZHMuCgpGcmFuY2lzY28KCk9u
IDQvMTEvMjEgNzozNCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiBIaSwKPgo+IHR3bSBpcyBub3QgYWNjZXNzaWJsZS4gVXNlIE1hdGUuCj4KPiBDaGVlcnMs
Cj4gRGlkaWVyCj4gLS0gCj4gRGlkaWVyIFNwYWllcgo+IFNsYWludCBtYWludGFpbmVyCj4KPiBM
ZSAxMS8wNC8yMDIxIMOgIDE3OjI2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IGEgw6ljcml0wqA6Cj4+IEhlbGxvIHRoZXJlLAo+Pgo+PiBCZWxvdyBteSBmaWxlLCBzaW5jZSBJ
IGluc3RhbGxlZCBldmVyeXRoaW5nIHRocm91Z2ggdGhlIG5ldyBpbnN0YWxsZXIgCj4+IGluIHRo
ZSBuZXdlc3QgaXNvLCB3aGljaCwgYnR3LCBpcyBjb21wbGV0ZWx5IGRvYWJsZSwgYW5kIHRocm93
cyBubyAKPj4gZXJyb3JzLgo+Pgo+Pgo+PiAjIS9iaW4vc2gKPj4KPj4gdXNlcnJlc291cmNlcz0k
SE9NRS8uWHJlc291cmNlcwo+PiB1c2VybW9kbWFwPSRIT01FLy5YbW9kbWFwCj4+IHN5c3Jlc291
cmNlcz0vZXRjL1gxMS94aW5pdC8uWHJlc291cmNlcwo+PiBzeXNtb2RtYXA9L2V0Yy9YMTEveGlu
aXQvLlhtb2RtYXAKPj4KPj4gIyBtZXJnZSBpbiBkZWZhdWx0cyBhbmQga2V5bWFwcwo+Pgo+PiBp
ZiBbIC1mICRzeXNyZXNvdXJjZXMgXTsgdGhlbgo+Pgo+Pgo+Pgo+Pgo+Pgo+Pgo+Pgo+PiDCoMKg
wqDCoCB4cmRiIC1tZXJnZSAkc3lzcmVzb3VyY2VzCj4+Cj4+IGZpCj4+Cj4+IGlmIFsgLWYgJHN5
c21vZG1hcCBdOyB0aGVuCj4+IMKgwqDCoMKgIHhtb2RtYXAgJHN5c21vZG1hcAo+PiBmaQo+Pgo+
PiBpZiBbIC1mICIkdXNlcnJlc291cmNlcyIgXTsgdGhlbgo+Pgo+Pgo+Pgo+Pgo+Pgo+Pgo+Pgo+
PiDCoMKgwqDCoCB4cmRiIC1tZXJnZSAiJHVzZXJyZXNvdXJjZXMiCj4+Cj4+IGZpCj4+Cj4+IGlm
IFsgLWYgIiR1c2VybW9kbWFwIiBdOyB0aGVuCj4+IMKgwqDCoMKgIHhtb2RtYXAgIiR1c2VybW9k
bWFwIgo+PiBmaQo+Pgo+PiAjIHN0YXJ0IHNvbWUgbmljZSBwcm9ncmFtcwo+Pgo+PiBpZiBbIC1k
IC9ldGMvWDExL3hpbml0L3hpbml0cmMuZCBdIDsgdGhlbgo+PiDCoMKgZm9yIGYgaW4gL2V0Yy9Y
MTEveGluaXQveGluaXRyYy5kLz8qLnNoIDsgZG8KPj4gwqDCoCBbIC14ICIkZiIgXSAmJiAuICIk
ZiIKPj4gwqDCoGRvbmUKPj4gwqDCoHVuc2V0IGYKPj4gZmkKPj4KPj4gdHdtICYKPj4geGNsb2Nr
IC1nZW9tZXRyeSA1MHg1MC0xKzEgJgo+PiB4dGVybSAtZ2VvbWV0cnkgODB4NTArNDk0KzUxICYK
Pj4geHRlcm0gLWdlb21ldHJ5IDgweDIwKzQ5NC0wICYKPj4gZXhlYyB4dGVybSAtZ2VvbWV0cnkg
ODB4NjYrMCswIC1uYW1lIGxvZ2luCj4+IGV4cG9ydCBHVEtfTU9EVUxFUz1nYWlsOmF0ay1icmlk
Z2UKPj4gZXhwb3J0IEdOT01FX0FDQ0VTU0lCSUxJVFk9MQo+PiBleHBvcnQgUVRfQUNDRVNTSUJJ
TElUWT0xCj4+IGV4cG9ydCBRVF9MSU5VWF9BQ0NFU1NJQklMSVRZX0FMV0FZU19PTj0xCj4+IGV4
cG9ydCBBQ0NFU1NJQklMSVRZIEVOQUJMRUQ9MQo+Pgo+PiBPbiA0LzExLzIxIDU6MTEgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBXaGljaCBzZXNzaW9u
IGlzIHNwZWNpZmllZCBpbiB5b3VyICcueGluaXRyYyc/wqAgRGlkIHlvdSBhbHNvIGRyYWcgaW4g
Cj4+PiB0aGUgYXBwcm9wcmlhdGUgdmlkZW8gZHJpdmVyP8KgIERvZXMgJ3gnIHN0YXJ0P8KgIERv
ZXMgaXQgdGhyb3cgZXJyb3JzPwo+Pj4KPj4+Cj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4KPj4+Cj4+Pgo+
Pj4gRGF2ZcKgIEh1bnQKPj4+Cj4+Pgo+Pj4gU2VudCBmcm9tIG15IExlbm92byBUaGlua3BhZCwg
cnVubmluZyBTbGludCBHTlUvTGludXguIGh0dHBzOi8vc2xpbnQuZnIKPj4+Cj4+PiBPbiA0LzEx
LzIxIDExOjA5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+
Pj4+IHN0dWZmIGkgZG9uJ3QgcmVtZW1iZXIsIGFyZSBpbnN0YWxsZWQsIHBsdXMgdGhlIGdub21l
IGFuZCBtYXRlIAo+Pj4+IGRlc2t0b3BzLgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

