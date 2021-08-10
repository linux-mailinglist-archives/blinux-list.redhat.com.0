Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 392AA3E5D44
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 16:18:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628605110;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5a56eCJFw01qDKUW6w4ftOOOZhMpjCEAv1BAvK5589o=;
	b=ZGkOXl0tWIb+H5k+1TABhMmlBMoqmifnw1ugzdGjEC4LGV2HUTjMVvknqWKwvRyZQOApq/
	jot+HG7QOsyh/DxT3Gvp1NofOsVnXzTbDsOgRQmTNLHrD04AOm2Nwn+LczTfjINnMbgfSv
	oFhuMMZvE/dp5tNWLDru8SvcMJLSCHA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-579-gCmjiVBMNQ2iaGPKuwIvYA-1; Tue, 10 Aug 2021 10:18:28 -0400
X-MC-Unique: gCmjiVBMNQ2iaGPKuwIvYA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89351100E426;
	Tue, 10 Aug 2021 14:18:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1310060CC4;
	Tue, 10 Aug 2021 14:18:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 92E314BB7C;
	Tue, 10 Aug 2021 14:18:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AEDapi030220 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 10:13:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 628DFDA683; Tue, 10 Aug 2021 14:13:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C85EDAF23
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:13:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E62E80018D
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:13:33 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
	[209.85.218.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-49-L6YzLoDBMbCe36TSqKpjtA-1; Tue, 10 Aug 2021 10:13:30 -0400
X-MC-Unique: L6YzLoDBMbCe36TSqKpjtA-1
Received: by mail-ej1-f44.google.com with SMTP id go31so35743756ejc.6
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 07:13:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=WyoUSpWWBrdUlxbl5yvhqQ4aDphGuHb4i/JeGxUf1fc=;
	b=mgOIUyp4NzI0Kqjh9JwBoB9AxBCSSScIG5SsCD9P5u7HmSLLqmIgsxBBYj0dbsi8pg
	q0NHyBhlVFq4vHZztWBhpqM0h8Ps5Zt959luDWPkQw7zvkXMd9j4N0/JcCbEGwaoggtU
	Y/hfFT1/RmdE8a8zNwVFxFnZ15c44rx3gyJ7Zo9TVWUA+1BPjaGI17IDIwrXMtC4zemw
	vuxM2/0fqhmNwKrs1Il8BIeTvfgcM5tMhvH01LNwQRe1sjVwWozlbXcMXNRdLyo4mRgK
	zS9IpQkPr35E5eFTebiWS/3lXkLrAUCnoMI/woTG64agJUcnS4B1r37SolVyOLTRwSk+
	4hKA==
X-Gm-Message-State: AOAM530XMMprqreDtD2VSWZ+vSik+/FU+3dpbi69C80o9oFOmYrCt3b2
	ZVHFXhyX3nIq1biPvjLRzk/zTUyhgcRWMQ==
X-Google-Smtp-Source: ABdhPJwrGo4YzSamRI8XqMUhR11GYQ14fZ0u+V/fIf/CbpiaMRDSwxyRXDUl1ZlLbFJZp6XZtaOdWQ==
X-Received: by 2002:a17:907:104f:: with SMTP id
	oy15mr10579707ejb.46.1628604808952; 
	Tue, 10 Aug 2021 07:13:28 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.106.18])
	by smtp.gmail.com with ESMTPSA id y1sm1406080ejf.2.2021.08.10.07.13.27
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 07:13:28 -0700 (PDT)
Subject: Re: Help, I need a Windows VM for my work
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
	<64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
Message-ID: <68508c52-c4fe-c94a-155a-3d0cf3196645@gmail.com>
Date: Tue, 10 Aug 2021 16:13:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <64366d3c-fdd0-3b9a-b771-7dbc6d720f4e@slint.fr>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKCkRvZXNuJ3QgbG9vayBsaWtlIHRoZSBzY3JpcHQgZ290IGF0dGFjaGVkLgoK
ClJlZ2FyZHMsCgoKQnJhbmR0CgpPbiA4LzEwLzIxIDM6NTkgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgYWdhaW4gQnJhbmR0LAo+Cj4gVGhlIHNjcmlw
dCBpcyBhdHRhY2hlZAo+Cj4gSW50cnVjdGlvbnMgZm9yIHVzZToKPiAxLiBDcmVhdGUgYSBkaXJl
Y3Rvcnkgfi9xZW11Cj4gQXNzdW1pbmcgdGhhdCB5b3VyIHVzZXJuYW1lIGlzIGJyYW5kdDsgaHVz
dCB0eXBlIHRvIGRvIHRoYXQ6Cj4gbWtkaXIgL2hvbWUvYnJhbmR0L3FlbXUKPiBvciBqdXN0Ogo+
IG1rZGlyIH4vcWVtdQo+IEFzIGEgcmVtaW5kZXIsIH4gc3RhbmRzIGZvciAvaG9tZS88dXNlcm5h
bWU+Cj4gSW4gbXkgY2FzZSAvdXNyL2RpZGllciwgaW4geW91cnMgSSBhc3N1bWUgL2hvbWUvYnJh
bmR0Cj4gYnV0IGFueXdheSB0aGUgb3V0cHV0IG9mIHRoaXMgY29tbWFuZCB3aWxsIHRlbGwgeW91
Ogo+IGVjaG8gfgo+Cj4gMi4gbW92ZSB0aGUgV2luZG93cyBJU08gZmlsZSBpbiB+L3FlbXUswqAg
cmVuYW1lZCB+L3FlbXUvd2luIHdpbmRvd3MuaXNvCj4gRm9yIGluc3RhbmNlIGhlciBJIGRpZCB0
aGlzOgo+Cj4gL2RhdGEvaW1hZ2VzX0lTTy9XaW5kb3dzMTBfSW5zaWRlclByZXZpZXdfQ2xpZW50
X3g2NF9mci1mcl8yMTM1NC5pc28KPgo+IDMuIERvd25sb2FkIHRoZSBzY3JpcHQgd2luZG93cy5z
aCBhbmQgc3RvcmUgaXQgc29tZXdoZXJlCj4gQ2hhbmdlIHRvIHRoZSBkaXJlY3Rvcnkgd2hlcmUg
aXQgaXMgaW5zdGFsbGVkIGFuZCBydW4gaXQgbGlrZSB0aGlzOgo+IHNoIHdpbmRvd3Muc2gKPiBU
aGVuIHByZXNzIEVudGVyLgo+IFByZXNzwqAgRW50ZXIgYWdhaW4gYWZ0ZXIgNSBzZWNvbmRzIHRv
IG1ha2Ugc3VyZSBpdCBzdGFydHMgdGhlIFdpbmRvd3MKPiBXYWl0IHBhdGllbnRseSB1bnRpbCB0
aGUgaW5zdGFsbGVyIGRpc3BsYXlzIGl0cyBmaXJzdCBzY3JlZW4gaW4gdGhlIFZNLgo+Cj4gTm90
ZXM6Cj4gWW91IG5lZWQgdG8gYmUgaW4gYSBncmFwaGljYWwgZW52aXJvbm1lbnQgbGlrZSBNYXRl
Lgo+IElmIHRoZSBWTSBzdGVhbHMgdGhlIGZvY3VzLCB0eXBlIEN0cmwrQWx0K0cgdG8gZ2V0IGl0
IGJhY2sgb24gdGhlIGhvc3QuCj4KPiBBZnRlciBXaW5kb3dzIGluc3RhbGxhdGlvbiwgcnVubmlu
ZyB0aGUgc2NyaXB0IHNob3VsZCBzdGFydCBXaW5kb3dzIAo+IGRpcmVjdGx5IGluCj4gdGhlIFZN
Lgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+Cj4KPiBMZSAxMC8wOC8yMDIxIMOgIDE1OjA2LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIEJyYW5kdCwK
Pj4KPj4gSSB3aWxsIGF0dGFjaCB0byBteSBuZXh0IG1lc3NhZ2UgYSBzY3JpcHQgdGhhdCBzZXRz
IHVwIGEgcWVtdSBWTQo+PiBhbGxvd2luZyB0byBpbnN0YWxsIHRoZW4gcnVuIFdpbmRvd3MgbGF0
ZXIgdG9kYXkgYWZ0ZXIgbW9yZSB0ZXN0aW5nLgo+Pgo+PiBJdCBzaG91bGQgYmUgdXNhYmxlIGlu
IGFueSBMaW51eCBkaXN0cmlidXRpb24gd2l0aCBhIHJlY2VudCBxZW11IAo+PiBpbnN0YWxsZWQu
Cj4+Cj4+IENoZWVycywKPj4KPj4gRGlkaWVyCj4+Cj4+Cj4+IExlIDEwLzA4LzIwMjEgw6AgMTI6
NTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+IEhp
IGFsbCwKPj4+Cj4+Pgo+Pj4gQXMgSSBzdGF0ZWQgYmVmb3JlLCBJIGFtIHJ1bm5pbmcgU2xpbnQg
b24gdGhlIGJhcmUgbWV0YWwsIGhvd2V2ZXIgbXkgCj4+PiB3b3JrIGVudGFpbHMgdGVhY2hpbmcg
TlZEQSB0byBjbGllbnRzLCBvYnZpb3VzbHkgcnVubmluZyBXaW5kb3dzLgo+Pj4KPj4+Cj4+PiBU
aGVyZWZvciBJIGRlc3BlcmF0ZWx5IG5lZWQgYSBXaW5kb3dzIFZNLCBzbyBJIGNhbiBtYWtlIGEg
bGl2aW5nLiBJIAo+Pj4gY2Fubm90IGZpZ3VyZSBxZW11LCB2aXJ0dWFsLWJveCwgSSBoYXZlIG5v
IGlkZWEsIGFuZCBWTVdhcmUgCj4+PiBXb3Jrc3RhdGlvbiBQbGF5ZXIgZG9lc24ndCB3YW50IHRv
IGluc3RhbGwgdW5kZXIgU2xpbnQuCj4+Pgo+Pj4KPj4+IENvdWxkIHNvbWVvbmUgcGxlYXNlLCBw
bGVhc2UsIGdpdmUgbWUgY29uY2lzZSBpbnN0cnVjdGlvbnMgZm9yIAo+Pj4gc2V0dGluZyB1cCBh
IFZNIHVzaW5nIHFlbXUgaW4gU2xpbnQ/Cj4+Pgo+Pj4KPj4+IFdhcm0gcmVnYXJkcywKPj4+Cj4+
Pgo+Pj4gQnJhbmR0IFN0ZWVua2FtcAo+Pj4KPj4+Cj4+PiBTZW50IGZyb20gbXkgZ2FzcyBwb3dl
cmVkIFNsaW50IGhhaXIgZHJ5ZXIuCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0CgotLSAKV2FybSByZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCBm
cm9tIG15IGdhc3MgcG93ZXJlZCBTbGludCBoYWlyIGRyeWVyLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

