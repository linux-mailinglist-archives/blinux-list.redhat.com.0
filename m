Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1A82C3DC77C
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 19:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627753186;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GHIJyg5jF+YzLweF/eqGBsSnN0la4uDWhRVjS2fqsF4=;
	b=Itw5sgJ/NMDzQ+SlEu9b+nM2o5UkwXY01l40OKLrb7gU32j+pf6lM8FlTyuCAlTg+gF+9b
	jykDp71I97aY7cb3hLJT2r3cXGaAjsfc19CFYBX2ecWmrubbyIjSYUfv+N0EHYs0CKtsgV
	YyduZRaLf7pzyxo44Gd7NGCQUuCM1so=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-64-EKJUCXmvPLSQKtc8FzAbEA-1; Sat, 31 Jul 2021 13:39:44 -0400
X-MC-Unique: EKJUCXmvPLSQKtc8FzAbEA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EB6A10066E6;
	Sat, 31 Jul 2021 17:39:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3B5C6E0B6;
	Sat, 31 Jul 2021 17:39:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC6604BB7C;
	Sat, 31 Jul 2021 17:39:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VHb25I008398 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 13:37:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BA52A2157F36; Sat, 31 Jul 2021 17:37:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5D062157F26
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 17:37:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D222101A529
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 17:37:00 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-169-_3EJJ1kQNNOrypESN8mYmQ-1; Sat, 31 Jul 2021 13:36:57 -0400
X-MC-Unique: _3EJJ1kQNNOrypESN8mYmQ-1
Received: by mail-ed1-f54.google.com with SMTP id y12so18208395edo.6
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 10:36:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=YIX4saTJ4fNHQvhEwFsW0RkyhVeFqGqgyi2e8Iq9gxs=;
	b=PeQUxmkDRQE8ZVkskofuaCaX4qyoO3AEBW24xntfqTByqIPJ1FPzR8xYCumvX5cd4M
	J8yhZagV/h0t9MjV5IjISILw6b0zdM9J+cNoUw0jGrx/gyQ7TeWLJegoVg5/SZYx3umk
	NbdAn8BS2IU3s7QL+G0RfBTjInXbJIW4y+FfnmjliyyOn5/2kwfSgaoEUzpJfidLmSdX
	ejktQl8h7ck5jiLsHO+2e7J8AEIwelrwNL5TqzWD83N/MpDWS5mMt0XubstHONtN8XMU
	9Sg9M53/qLj+c5P2frcoiJhnbrnaX9BGO9wnI5N1kzE2w1cuG+ZHY0atmD/nOW3QLNCr
	O3LQ==
X-Gm-Message-State: AOAM5329wuQ7IMB1MhV/cqSt3fyC/Amn/cGwQHnef9UC58RqqsXzweDy
	bXC9nSMmXMngsqxoRn0n5FQ6DknsDvg=
X-Google-Smtp-Source: ABdhPJwYnobgvMgkUM1COzX31J512kPEYqZRM5ClnLPixX2AL6KO72ZJfoRlfWMuAo72XTst2JDUvA==
X-Received: by 2002:a05:6402:28a0:: with SMTP id
	eg32mr2846802edb.203.1627753016185; 
	Sat, 31 Jul 2021 10:36:56 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.99.209])
	by smtp.gmail.com with ESMTPSA id s8sm2600892edy.18.2021.07.31.10.36.54
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 31 Jul 2021 10:36:55 -0700 (PDT)
Subject: Re: Interesting issue
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b5bb7159-46d6-4cc3-9e36-b66ec3b2c195@gmail.com>
	<291d66ed-a120-f60b-649b-728ed0790a33@slint.fr>
Message-ID: <01de8a85-9a4f-d676-6bdf-e29fb051db3f@gmail.com>
Date: Sat, 31 Jul 2021 19:36:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <291d66ed-a120-f60b-649b-728ed0790a33@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIGZvciB0aGUgaGVscCBEaWRpZXIsCgoKQWdhaW4sIEkgc2hvdWxkIHByb2JhYmx5IFJU
Rk0uCgpXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IHVzaW5nIFRodW5kZXJi
aXJkIGZyb20gU2xpbnQKCk9uIDcvMzEvMjEgNToxOCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBCcmFuZHQsCj4KPiBZb3UgYXJlIGRvaW5nIHNldmVy
YWwgdGhpbmdzIHdyb25nLCB1bmZvcnR1bmF0ZWx5Ogo+IDEuIFJ1bm5pbmcgU2xpbnQuIEkga25v
dyB0aGF0IFNsaW50IGlzIGJhZCwgYXMgSSBhbSBpdHMgbWFpbnRhaW5lciA6LSkKPiAyLiBVc2lu
ZyBzdWRvLCB1bmxlc3MgeW91IGRpZCBjb25maWd1cmUgaXQgeW91cnNlbGYuIEl0IGlzIG5vdCAK
PiBjb25maWd1cmVkIGJ5IGRlZmF1bHQsIHNvIHdoZW4gcnVubmluZyBzdWRvIHlvdSBkb24ndCBp
bmNsdWRlIGluICRQQVRIIAo+IHRoZSBkaXJlY3RvcmllcyAvc2JpbiBhbmQgL3Vzci9zYmluLgo+
IHNlZSBhYm91dCB0aGF0IHRoZSBwYXJhZ3JhcGggMy40LjEgaW46Cj4gaHR0cHM6Ly9zbGludC5m
ci9kb2MvSGFuZEJvb2suaHRtbCNfdGhlX3NoZWxsCj4gYW5kIGFsc286Cj4gaHR0cHM6Ly9zbGlu
dC5mci9kb2Mvc2hlbGxfYW5kX2Jhc2hfc2NyaXB0cy5odG1sI3NlYy1uZXctYmFzaC1yb290Cj4g
U28geW91IGNvdWxkIGp1c3QgdHlwZSBpbnN0ZWFkOgo+IHN1IC0KPiBzcGkgLXUKPiBzcGkgLVUK
PiBleGl0ICPCoMKgwqAgb3IgQ3RybCtkCj4KPiBQUyBJIGhhdmUgcmVhZCB5b3UgbWVzc2FnZToK
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9hcmNoaXZlcy9ibGludXgtbGlzdC8yMDIxLUp1
bHkvbXNnMDAxOTEuaHRtbAo+Cj4gSSBkaWRuJ3QgYW5zd2VyIHlldCBiZWNhdXNlIHRoaXMgbmVl
ZHMgc29tZSB0aW1lIHRvIHRyeSB0byByZXByb2R1Y2UgCj4gYW5kIEkgYW0KPiByYXRoZXIgYnVz
eSByaWdodCBub3cuCj4KPiBNYXliZSBwb3N0IG9uIHRoZSBTbGludCBtYWlsaW5nIGxpc3Q/IFRo
aXMgY291bGQgYWxzbyBoZWxwIG90aGVyIHVzZXJzLgo+Cj4gTGFzdCBJIHBsYW4gdG8gcHJvdmlk
ZSBzb29uIChtYXliZSB0b2RheSkgdXBkYXRlcyB0aGF0IHdpbGwgYXZvaWQgCj4gZGlzY3JlcGFu
Y2llcwo+IGluIHBhY2thZ2VzJyBuYW1pbmcgYmV0d2VlbiBzbGFja2J1aWxkcy5vcmcgYW5kIFNs
aW50LCB0aHVzIG1ha2luZyAKPiBzbGFwdC1zcmMKPiBtb3JlIHJlbGlhYmxlLgo+Cj4gQ2hlZXJz
LAo+IERpZGllcgo+IC0tIAo+IERpaWRlciBTcGFpZXIKPiBTbGludCBtYWludGFpbmVyCj4KPiBM
ZSAzMS8wNy8yMDIxIMOgIDE2OjMyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IGEgw6ljcml0wqA6Cj4+IEhpIGFsbCwKPj4KPj4KPj4gSSBhbSB0cnlpbmcgdG8gcnVuIGFuIHVw
ZGF0ZSBvbiBteSBTbGludCBzeXN0ZW0sIGJ1dCBJIGdldCB0aGUgZXJyb3IgCj4+IHVwZ3JhZGVw
a2cgY29tbWFuZCBub3QgZm91bmQuIEkgYW0gcnVubmluZyBzdWRvIHNwaSAtdSAmJiBzdWRvIHNw
aSAKPj4gLVUuIEV2ZXJ5dGhpbmcgZ29lcyBvayB1bnRpbGwgSSBnZXQgdGhlICJ1cGdyYWRlcGtn
IGNvbW1hbmQgbm90IAo+PiBmb3VuZCIgZXJyb3IuCj4+Cj4+Cj4+IFdoYXQgYW0gSSBkb2luZyB3
cm9uZz8KPj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

