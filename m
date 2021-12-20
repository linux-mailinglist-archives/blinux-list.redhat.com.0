Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BAA47B2E6
	for <lists+blinux-list@lfdr.de>; Mon, 20 Dec 2021 19:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640025262;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Mumwy7HdikRqXJlHxIMXNeNnKnAmBckYy8Y8BL4378=;
	b=NIvO5s44gEL6oGyxmWm5CZ96Pyllgb0WyeAwLuACw4MamEktZhgxuaTJogECTFIZoaN2GO
	cRANEsCoEsA3RAuZpqmWCxkUVWdLultkppE/bDsGe80GSQ5rPP//OyEYQGKO6LuqhCp379
	Mohb1wnxampqc5iZgOF8pCtrq+UdyMU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-298-GVtI1b8SPX6Mn6fFl7slGw-1; Mon, 20 Dec 2021 13:34:19 -0500
X-MC-Unique: GVtI1b8SPX6Mn6fFl7slGw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F147A190A7A1;
	Mon, 20 Dec 2021 18:34:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10BE85F4E9;
	Mon, 20 Dec 2021 18:34:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AF4501809CB8;
	Mon, 20 Dec 2021 18:34:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BKIY2eW015520 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 20 Dec 2021 13:34:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CC523492CAE; Mon, 20 Dec 2021 18:34:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C798D492CAA
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 18:34:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE2C63879961
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 18:34:02 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-609-nFkH5Pd1MAS6P3NktQo_HQ-1; Mon, 20 Dec 2021 13:34:01 -0500
X-MC-Unique: nFkH5Pd1MAS6P3NktQo_HQ-1
Received: by mail-qt1-f176.google.com with SMTP id p19so10596657qtw.12
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 10:34:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=f443nIMLn8IZRMNcCzcMuBBV0qJR5CWWhoZKmwAEKIg=;
	b=AGPO7SfbT+cYujG3bptU2cGhXhuvhNEXm7ZHlIy9I3oVR+3SHbQe9iTCXBDzXDD9Vh
	knwSjkaR0nocQw//BLQWp8EhVdqRkktIzBWO0hUzILwU5dI69pXS9sYYfJ9yEho3n8B6
	4RgrY/sPP68iCgwZ9hFM9sunxzVoqq+Cbv7etCy0E0hbrpCIi7JO46CgJHmoE8YpcHje
	ltxqxI5wZh5AQNmO+gXTGPjWAD7Uo9O0/ohNfF0utqd0WYHbtPHvm0LuKc/7uENlG5lI
	JEKShkIa/X4ZZwX1Lf/Y0M4u8Rz7bQF1kumukC5KbunyHf5/YBgIwxr5lU11DaisHFZ6
	M3sg==
X-Gm-Message-State: AOAM532ptk6HVP+rnGd1UEdif+TMfHMXTRfpPBBtia5S85gv+cysgEJk
	KIETCOdFAzKxf6cqpQsOxIWVa4hpoDE=
X-Google-Smtp-Source: ABdhPJx0jNIw5I8gBxgl1cmzFdw0TF/UP6ZxlTat5zwxPqAn0C/qjNh6K69ZLLMEKq6vP2Ov1wMYuQ==
X-Received: by 2002:ac8:5ad0:: with SMTP id d16mr13697219qtd.550.1640025240194;
	Mon, 20 Dec 2021 10:34:00 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	c20sm11662602qkj.119.2021.12.20.10.33.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 20 Dec 2021 10:33:54 -0800 (PST)
Subject: Re: How can I add Arabic as a recognition language to Lios?
To: blinux-list@redhat.com
References: <2c0ff675-6551-c3d4-f381-69a1abd2746a@slint.fr>
	<6101C118-6497-4838-8184-BE24701F388E@gmail.com>
	<ca66c525-77b5-b9ae-0d93-e80a436acdeb@slint.fr>
Message-ID: <e941892d-825d-01dc-1cee-d9f4c0285634@gmail.com>
Date: Mon, 20 Dec 2021 13:33:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ca66c525-77b5-b9ae-0d93-e80a436acdeb@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIERpZGllciwKCkkgd2lsbCBzZW5kIHlvdSBhIFBERiBJIGp1c3QgdHJpZWQgdG8gT0NS
IHdpdGggTGlvcyBhbmQgZ290IGdpYmJpcmlzaC4gSSAKd2lsbCBzZW5kIHRvIHlvdSBvbiB5b3Vy
IGRpaXJlY3QgZW1haWwuCgpDaGVlcnMsCgpJYnJhaGltCgpPbiAxMi8yMC8yMSAxMjoyMiBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBJYnJhaGltLAo+
Cj4gVGhhdCBpcyBpcyB3aGF0IEkgdW5kZXJzdG9vZCwgYnV0IEkgd291bGQgbGlrZSB0byBrbm93
IGlmIHRoZSBzYW1lIGlzc3VlIG9jY3Vycwo+IHdpdGggYSBQREYgZmlsZSwgaGVuY2UgbXkgcmVx
dWVzdHMgdGhhdCB3ZSBib3RoIHRlc3Qgd2l0aCB0aGUgc2FtZSBQREYgZmlsZS4KPiBFdmVuIG1v
cmUgc28gYXMgSSBkbyBub3QgaGF2ZSBhIHNjYW5uZXIgYXQgaGFuZCByaWdodCBub3cgdG8gcmVw
cm9kdWNlIHRoZSB0ZXN0Cj4geW91IGRpZC4KPgo+IENoZWVycywKPiBEaWRpZXIKPgo+IExlIDIw
LzEyLzIwMjEgw6AgMTg6MTIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPj4gSGkgRGlkaWVyLAo+PiBJIGRpZCBub3QgZG8gdGhlIHRlc3Rpbmcgb24gYSBQ
REYgZmlsZS4gSSBkaWQgdGhlIHRlc3RpbmcgaW4gZGlyZWN0IHNjYW4uIEkgcHV0IHRoZSBwYWdl
IG9uIGEgZmxhdGJlZCBzY2FubmVyIGFuZCBoaXQgdGhlIHNjYW4gYW5kIHJlY29nbml6ZSBtZW51
IGl0ZW0gaW4gTGlvcy4KPj4gQ2hlZXJzLAo+PiBJYnJhaGltCj4+Cj4+IFNlbnQgZnJvbSBteSBp
UGhvbmUKPj4KPj4+IE9uIERlYyAyMCwgMjAyMSwgYXQgMTI6MDQgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4K
Pj4+IO+7v0hpIElicmFoaW0sCj4+Pgo+Pj4gTm90IHN1cmUgd2hlcmUgdGhlIGlzc3VlIGlzLgo+
Pj4KPj4+IFRvIGludmVzdGlnYXRlLCBjb3VsZCB5b3UgcGxlYXNlIHNlbmQgcHJvdmlkZSBhIGxp
bmsgdG8gYSBwZGYgaW4gQXJhYmljIChvciBzZW5kCj4+PiBtZSBwcml2YXRlbHkgdGhlIHBkZiBp
dHNlbGYpIHRoYXQgd2UgY291bGQgYm90aCB0cnk/Cj4+Pgo+Pj4gVGhhbmtzCj4+Pgo+Pj4gQ2hl
ZXJzLAo+Pj4gRGlkaWVyCj4+Pgo+Pj4+IExlIDIwLzEyLzIwMjEgw6AgMDU6MDksIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4+IFRoYW5rcyBEaWRpZXIs
Cj4+Pj4KPj4+PiBVbmZvcnR1bmF0ZWx5LCBJIHRyaWVkIHlvdXIgc3VnZ2VzdGlvbiBhbmQgc3Rp
bGwgZ290IHplcm8gYWNjdXJhY3kgb2YgT0NSIG9mCj4+Pj4gQXJhYmljIGxldHRlcnMuIEkgdHlw
ZWQgYSBQYXJhZ3JhcGggb2YgQXJhYmljIGFuZCBwcmludGVkIGFuZCB0aGVuIHNjYW5uZWQsIGJ1
dAo+Pj4+IHRoZSBvdXRjb21lIHdhcyBnaWJiaXJpc2gsIGFsbCBpbiBsYXRpbiBjaGFyYWN0ZXJz
LiBJIHR5cGVkIGEgcGFyYWdyYXBoIGluCj4+Pj4gRW5nbGlzaCBhbmQgcHJpbnRlZCBpdCBvdXQs
IHdoZW4gSSBzY2FubmVkLCB0aGUgT0NSIGFjY3VyYWN5IHdhcyBleGNlbGxlbnQuICBTbywKPj4+
PiB0aGVyIGlzIHNvbWUgcHJvYmxlbSB3aXRoIHRoZSBBcmFiaWMgcmVjb2duaXRpb24uICBJdCBz
ZWVtcyB0byBtZSB0aGF0IGFsdGhvdWdoCj4+Pj4gQXJhYmljIGlzIGxpc3RlZCwgdGhlIE9DUiBl
bmdpbmUgaXMgbm90IGFjdHVhbGx5IHRyeWluZyB0byByZWNvZ25pemUgQXJhYmljLgo+Pj4+Cj4+
Pj4gQ2hlZXJzLAo+Pj4+Cj4+Pj4gSWJyYWhpbQo+Pj4+Cj4+Pj4+IE9uIDEyLzE3LzIxIDY6NDgg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+IEhpIEli
cmFoaW0sCj4+Pj4+Cj4+Pj4+IFlvdSBkbyBub3QgbmVlZCB0byBhZGQgYW55dGhpbmcgc3BlY2lh
bCwgdGhlIGZpbGVzCj4+Pj4+IC91c3Ivc2hhcmUvdGVzc2RhdGEvQXJhYmljLnRyYWluZWRkYXRh
IGJlaW5nIGluY2x1ZGVkIGluIHRoZSBwYWNrYWdlCj4+Pj4+IHRlc3NlcmFjdC1kYXRhIGluIFNs
aW50Lgo+Pj4+Pgo+Pj4+PiBKdXRzIG9wZW4gbGlvcywgdGhlbiBpbiBtZW51IHNlbGVjdCBQcmVm
ZXJlbmNlcyB0aGVuIFByZWZlcmVuY2VzIHJlY29nbml0aW9uIGFuZAo+Pj4+PiBzZWxlY3Q6Cj4+
Pj4+IEVuZ2luZTogVGVzc2VyYWN0Cj4+Pj4+IExhbmd1YWdlOiBBcmFiaWMKPj4+Pj4KPj4+Pj4g
SSBkb24ndCBoYXZlIGEgc2Nhbm5lciBhdCBoYW5kIGJ1dCBkb3dubG9hZGVkIHRoaXMgZmlsZToK
Pj4+Pj4gaHR0cHM6Ly9mYWRhLmJpcnplaXQuZWR1L2JpdHN0cmVhbS8yMC41MDAuMTE4ODkvNjkx
MC8xL21raGFsZGklMjBTYWhhciUyMFJlc2VhcmNoLnBkZgo+Pj4+Pgo+Pj4+PiB0aGVuIEkgb3Bl
bmVkIGl0IGluIExpb3MgKG1lbnUgRmlsZSB0aGVuIE9wZW4pLgo+Pj4+Pgo+Pj4+PiBUaGUgZmls
ZSB3YXMgcmVjb2duaXplZCBhbmQgdGhlIHRleHQgcHJvcGVybHkgZXh0cmFjdGVkLgo+Pj4+Pgo+
Pj4+PiBDb3B5aW5nIGEgcGFyYWdyYXBoIG9mIHRoZSBleHRyYWN0ZWQgdGV4dCBhbmQgcGFzdGlu
ZyBpdCBpbiB0cmFuc2xhdGUuZ29vZ2xlLmZyCj4+Pj4+IGFsbG93ZWQgbWUgdG8gcmVhZCBpdCBp
biBGcmVuY2ggPHNtaWxlPgo+Pj4+Pgo+Pj4+PiBDaGVlcnMsCj4+Pj4+Cj4+Pj4+IERpZGllcgo+
Pj4+Pgo+Pj4+PiBMZSAxOC8xMi8yMDIxIMOgIDAwOjEwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+Pj4+IEhpIEFsbCwKPj4+Pj4+Cj4+Pj4+PiBUaGlz
IHF1ZXN0aW9uIGlzIHByaW1hcmlseSB0byBEaWRpZXI6Cj4+Pj4+Pgo+Pj4+Pj4gSG93IGNhbiBJ
IGFkZCBBcmFiaWMgZGljdGlvbmFyeSB0byBMaW9zIHNvIHRoYXQgSSBjYW4gdXNlIG15IHNjYW5u
ZXIgdG8gc2Nhbgo+Pj4+Pj4gQXJhYmljIHRleHQ/IEkgYXNzdW1lIEkgd2lsbCBhbHNvIGJlIGFi
bGUgdG8gcnVuIEFyYWJpYy5wZGYgZmlsZXMgdGhyb3VnaCBMaW9zCj4+Pj4+PiBhbmQgYXMgc3Vj
aCBJIHdpbGwgaGF2ZSBhY2Nlc3MgdG8gYSBsb3Qgb2YgQXJhYmljIGJvb2tzIGF2YWlsYWJsZSBv
biB0aGUgbmV0Lgo+Pj4+Pj4KPj4+Pj4+IENoZWVycywKPj4+Pj4+Cj4+Pj4+PiBJYnJhaGltCj4+
Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

