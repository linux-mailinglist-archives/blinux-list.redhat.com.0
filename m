Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 447B235B5E2
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 17:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618154829;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ygLjPj9E2niNDkBT2j0PST9tn8Ir9TEssdIQ+Z5Oo2g=;
	b=GuiVVE97fU0zmftN6NVO8yGaqduZ2Tl/4fAWURDEOj4oIUz+jmFsZXrGOZXiM6LdXlkr0S
	sLKWaRwroWkOKaTdD8Bf1kGOkfnp8Hi1uvKAdn+8RJdQGu9CoUbTcdoGLhHZ3e9aU1ver2
	yAnLYkXO009KTzANUmsrMK+otLClbVM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-vT0l0Oh0Mm6Szd3-KsKFyA-1; Sun, 11 Apr 2021 11:27:07 -0400
X-MC-Unique: vT0l0Oh0Mm6Szd3-KsKFyA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F213107ACCA;
	Sun, 11 Apr 2021 15:27:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7CB45C26D;
	Sun, 11 Apr 2021 15:27:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D8A9B1806D0F;
	Sun, 11 Apr 2021 15:26:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BFQmKe002893 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 11:26:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4E0F61111A51; Sun, 11 Apr 2021 15:26:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 491821004037
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:26:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48BFF802A61
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:26:45 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
	[209.85.218.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-173-ZWq-CtDCO4ObldmBv1OUJA-1; Sun, 11 Apr 2021 11:26:42 -0400
X-MC-Unique: ZWq-CtDCO4ObldmBv1OUJA-1
Received: by mail-ej1-f54.google.com with SMTP id r9so16126948ejj.3
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 08:26:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=P0i4wvkmkc3B6m1Bg+1AbNYD8Cguf0K/pG/lhY8/q7Q=;
	b=EXKMMenoFruHuxJB/D2Yc1SVO17xKXT+D8MrADZKZ087cWyHfNWnUb+e1GcQ4+rrmK
	El3LBoJ84+QL2R+i+C/DYR8oRfevdSlSzeXFRcuue5Py1p9cuxBpSQMFYN6vhZkCkSau
	ki+5FuDx4UPxlYqgrGsDlEcQwLOiAJj0qKHEn4Hjqse9Z3mqDXqm2fpSfVma7VXECslp
	fS6DOJVZgrJQ4xO2OYWKouA9LDPU/fjbZJu2uyEqJ0kEt6R0pVd+oRmjEFpIxxQfuXgs
	WcogHCnQpmTqke+fMS6T1xnzO2lchnNX9pPUOBQGP0dCBG/KQRoFS8gFK+R6UHw9atGk
	d5Bw==
X-Gm-Message-State: AOAM530y4zuZf9vKTgC3HQLodJReObt33sEJP7iqHSvl2yHgOG2OB0Jt
	Yuf/P87cWSdU59fe/4vYOW7ZQwHa2a5qog==
X-Google-Smtp-Source: ABdhPJyx8lEtsqD99m9iGiqskLdiYfMAsVjuCfVc7rqt++x3tPdlvIBOfhOF/nlx65yA6DQkNNScLw==
X-Received: by 2002:a17:907:3e93:: with SMTP id
	hs19mr24448859ejc.272.1618154801214; 
	Sun, 11 Apr 2021 08:26:41 -0700 (PDT)
Received: from [192.168.1.8] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61]) by smtp.gmail.com with ESMTPSA id
	hd8sm4144328ejc.92.2021.04.11.08.26.40 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Apr 2021 08:26:40 -0700 (PDT)
Subject: Re: Some questions about Arch Linux
To: blinux-list@redhat.com
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
	<93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
	<42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
	<d109559a-d2c0-c375-255d-b4e4c1ffa0b8@gmail.com>
Message-ID: <b8cfdbc2-3994-32fa-92d4-fe0a449c2aaf@gmail.com>
Date: Sun, 11 Apr 2021 17:26:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <d109559a-d2c0-c375-255d-b4e4c1ffa0b8@gmail.com>
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

SGVsbG8gdGhlcmUsCgpCZWxvdyBteSBmaWxlLCBzaW5jZSBJIGluc3RhbGxlZCBldmVyeXRoaW5n
IHRocm91Z2ggdGhlIG5ldyBpbnN0YWxsZXIgaW4gCnRoZSBuZXdlc3QgaXNvLCB3aGljaCwgYnR3
LCBpcyBjb21wbGV0ZWx5IGRvYWJsZSwgYW5kIHRocm93cyBubyBlcnJvcnMuCgoKIyEvYmluL3No
Cgp1c2VycmVzb3VyY2VzPSRIT01FLy5YcmVzb3VyY2VzCnVzZXJtb2RtYXA9JEhPTUUvLlhtb2Rt
YXAKc3lzcmVzb3VyY2VzPS9ldGMvWDExL3hpbml0Ly5YcmVzb3VyY2VzCnN5c21vZG1hcD0vZXRj
L1gxMS94aW5pdC8uWG1vZG1hcAoKIyBtZXJnZSBpbiBkZWZhdWx0cyBhbmQga2V5bWFwcwoKaWYg
WyAtZiAkc3lzcmVzb3VyY2VzIF07IHRoZW4KCgoKCgoKCiDCoMKgwqAgeHJkYiAtbWVyZ2UgJHN5
c3Jlc291cmNlcwoKZmkKCmlmIFsgLWYgJHN5c21vZG1hcCBdOyB0aGVuCiDCoMKgwqAgeG1vZG1h
cCAkc3lzbW9kbWFwCmZpCgppZiBbIC1mICIkdXNlcnJlc291cmNlcyIgXTsgdGhlbgoKCgoKCgoK
IMKgwqDCoCB4cmRiIC1tZXJnZSAiJHVzZXJyZXNvdXJjZXMiCgpmaQoKaWYgWyAtZiAiJHVzZXJt
b2RtYXAiIF07IHRoZW4KIMKgwqDCoCB4bW9kbWFwICIkdXNlcm1vZG1hcCIKZmkKCiMgc3RhcnQg
c29tZSBuaWNlIHByb2dyYW1zCgppZiBbIC1kIC9ldGMvWDExL3hpbml0L3hpbml0cmMuZCBdIDsg
dGhlbgogwqBmb3IgZiBpbiAvZXRjL1gxMS94aW5pdC94aW5pdHJjLmQvPyouc2ggOyBkbwogwqAg
WyAteCAiJGYiIF0gJiYgLiAiJGYiCiDCoGRvbmUKIMKgdW5zZXQgZgpmaQoKdHdtICYKeGNsb2Nr
IC1nZW9tZXRyeSA1MHg1MC0xKzEgJgp4dGVybSAtZ2VvbWV0cnkgODB4NTArNDk0KzUxICYKeHRl
cm0gLWdlb21ldHJ5IDgweDIwKzQ5NC0wICYKZXhlYyB4dGVybSAtZ2VvbWV0cnkgODB4NjYrMCsw
IC1uYW1lIGxvZ2luCmV4cG9ydCBHVEtfTU9EVUxFUz1nYWlsOmF0ay1icmlkZ2UKZXhwb3J0IEdO
T01FX0FDQ0VTU0lCSUxJVFk9MQpleHBvcnQgUVRfQUNDRVNTSUJJTElUWT0xCmV4cG9ydCBRVF9M
SU5VWF9BQ0NFU1NJQklMSVRZX0FMV0FZU19PTj0xCmV4cG9ydCBBQ0NFU1NJQklMSVRZIEVOQUJM
RUQ9MQoKT24gNC8xMS8yMSA1OjExIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+IFdoaWNoIHNlc3Npb24gaXMgc3BlY2lmaWVkIGluIHlvdXIgJy54aW5pdHJj
Jz/CoCBEaWQgeW91IGFsc28gZHJhZyBpbiAKPiB0aGUgYXBwcm9wcmlhdGUgdmlkZW8gZHJpdmVy
P8KgIERvZXMgJ3gnIHN0YXJ0P8KgIERvZXMgaXQgdGhyb3cgZXJyb3JzPwo+Cj4KPgo+IENoZWVy
cywKPgo+Cj4KPiBEYXZlwqAgSHVudAo+Cj4KPiBTZW50IGZyb20gbXkgTGVub3ZvIFRoaW5rcGFk
LCBydW5uaW5nIFNsaW50IEdOVS9MaW51eC4gaHR0cHM6Ly9zbGludC5mcgo+Cj4gT24gNC8xMS8y
MSAxMTowOSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4g
c3R1ZmYgaSBkb24ndCByZW1lbWJlciwgYXJlIGluc3RhbGxlZCwgcGx1cyB0aGUgZ25vbWUgYW5k
IG1hdGUgZGVza3RvcHMuCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

