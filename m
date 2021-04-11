Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D764135B5EF
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 17:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618156078;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1IKTv7zBo/Ptc8LGMkjwghCEEZVEDHk0Ge7vOlDhcpw=;
	b=DOhUemY9KaPuRtxTI6NnZO7E+KsV9EsSJWxpWIAI7hRyh8uKQOkreUzB98/yktNgZCeIeD
	pnQnSnJely35dKnppxK0BLbZfkihNrhgVdK+laNiEELZF5Lsc2OCAQQAWHXlBQXHC7B7FC
	IuCt8LCA82D4tpDhwR9Zkib8MW0im+k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-NY96_KNpML2D1Aw2torisg-1; Sun, 11 Apr 2021 11:47:56 -0400
X-MC-Unique: NY96_KNpML2D1Aw2torisg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A24B4107ACE8;
	Sun, 11 Apr 2021 15:47:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB5C819716;
	Sun, 11 Apr 2021 15:47:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 27D0344A5B;
	Sun, 11 Apr 2021 15:47:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BFlj4u005050 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 11:47:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0C906210DE40; Sun, 11 Apr 2021 15:47:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0730F210DE4A
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:47:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9792E8032E6
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:47:42 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-20-aOWA_JKqM2G4NOnHdwakKA-1;
	Sun, 11 Apr 2021 11:47:40 -0400
X-MC-Unique: aOWA_JKqM2G4NOnHdwakKA-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 3770CA4382
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 16:47:33 +0200 (CEST)
Subject: Re: Some questions about Arch Linux
To: blinux-list@redhat.com
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
	<93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
	<42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
	<d109559a-d2c0-c375-255d-b4e4c1ffa0b8@gmail.com>
	<b8cfdbc2-3994-32fa-92d4-fe0a449c2aaf@gmail.com>
	<cf6145c6-1bb4-2815-494d-3be7cb796802@slint.fr>
	<cacbfbd8-ea7c-a750-2123-efca11ff4a2d@gmail.com>
Message-ID: <010b3bd8-e54e-c789-892a-ffee375bf0e0@slint.fr>
Date: Sun, 11 Apr 2021 19:47:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <cacbfbd8-ea7c-a750-2123-efca11ff4a2d@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13BFlj4u005050
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

U29ycnksIEkgZG9uJ3QgdXNlIEFyY2ggYW5kIGRvbid0IGhhdmUgdGhlIHRpbWUgdG8gY2hlY2su
CgpJIHN1Z2dlc3QgdGhhdCB5b3UgYXNrIG9uIElSQywgc2VydmVyIGlyYy5saW51eC1hMTF5Lm9y
ZywgY2hhbm5lbCAjYTExeQoKWW91IGNhbiB1c2UgaXJzc2kgb3IgcGlkZ2luIHRvIGNoYXQuCgpN
b3N0IHBlb3BsZSB0aGVyZSB1c2UgQXJjaCwgYXJlIGJsaW5kIGFuZCBrbm93bGVkZ2VhYmxlLgoK
R29vZCBsdWNrLgoKRGlkaWVyCi0tIApEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKCkxl
IDExLzA0LzIwMjEgw6AgMTc6MzksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPiBIZWxsbyB0aGVyZSwKPiAKPiAKPiBXaGF0IHNob3VsZCBJIG1vZGlmeSB0
byBtYWtlIHRoYXQgaGFwcGVuPyBzb3JyeSwgYnV0IEknbSB0cnlpbmcgdG8gZ2V0IAo+IGl0IGFs
bCByaWdodCwgdGhhdCdzIHdoeSBJJ20gYXNraW5nIHNvIG1hbnkgcXVlc3Rpb25zLgo+IAo+IEJl
c3QgcmVnYXJkcy4KPiAKPiBGcmFuY2lzY28KPiAKPiBPbiA0LzExLzIxIDc6MzQgUE0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhpLAo+Pgo+PiB0d20gaXMg
bm90IGFjY2Vzc2libGUuIFVzZSBNYXRlLgo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+PiAtLSAK
Pj4gRGlkaWVyIFNwYWllcgo+PiBTbGFpbnQgbWFpbnRhaW5lcgo+Pgo+PiBMZSAxMS8wNC8yMDIx
IMOgIDE3OjI2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6
Cj4+PiBIZWxsbyB0aGVyZSwKPj4+Cj4+PiBCZWxvdyBteSBmaWxlLCBzaW5jZSBJIGluc3RhbGxl
ZCBldmVyeXRoaW5nIHRocm91Z2ggdGhlIG5ldyBpbnN0YWxsZXIgCj4+PiBpbiB0aGUgbmV3ZXN0
IGlzbywgd2hpY2gsIGJ0dywgaXMgY29tcGxldGVseSBkb2FibGUsIGFuZCB0aHJvd3Mgbm8gCj4+
PiBlcnJvcnMuCj4+Pgo+Pj4KPj4+ICMhL2Jpbi9zaAo+Pj4KPj4+IHVzZXJyZXNvdXJjZXM9JEhP
TUUvLlhyZXNvdXJjZXMKPj4+IHVzZXJtb2RtYXA9JEhPTUUvLlhtb2RtYXAKPj4+IHN5c3Jlc291
cmNlcz0vZXRjL1gxMS94aW5pdC8uWHJlc291cmNlcwo+Pj4gc3lzbW9kbWFwPS9ldGMvWDExL3hp
bml0Ly5YbW9kbWFwCj4+Pgo+Pj4gIyBtZXJnZSBpbiBkZWZhdWx0cyBhbmQga2V5bWFwcwo+Pj4K
Pj4+IGlmIFsgLWYgJHN5c3Jlc291cmNlcyBdOyB0aGVuCj4+Pgo+Pj4KPj4+Cj4+Pgo+Pj4KPj4+
Cj4+Pgo+Pj4gwqDCoMKgwqAgeHJkYiAtbWVyZ2UgJHN5c3Jlc291cmNlcwo+Pj4KPj4+IGZpCj4+
Pgo+Pj4gaWYgWyAtZiAkc3lzbW9kbWFwIF07IHRoZW4KPj4+IMKgwqDCoMKgIHhtb2RtYXAgJHN5
c21vZG1hcAo+Pj4gZmkKPj4+Cj4+PiBpZiBbIC1mICIkdXNlcnJlc291cmNlcyIgXTsgdGhlbgo+
Pj4KPj4+Cj4+Pgo+Pj4KPj4+Cj4+Pgo+Pj4KPj4+IMKgwqDCoMKgIHhyZGIgLW1lcmdlICIkdXNl
cnJlc291cmNlcyIKPj4+Cj4+PiBmaQo+Pj4KPj4+IGlmIFsgLWYgIiR1c2VybW9kbWFwIiBdOyB0
aGVuCj4+PiDCoMKgwqDCoCB4bW9kbWFwICIkdXNlcm1vZG1hcCIKPj4+IGZpCj4+Pgo+Pj4gIyBz
dGFydCBzb21lIG5pY2UgcHJvZ3JhbXMKPj4+Cj4+PiBpZiBbIC1kIC9ldGMvWDExL3hpbml0L3hp
bml0cmMuZCBdIDsgdGhlbgo+Pj4gwqDCoGZvciBmIGluIC9ldGMvWDExL3hpbml0L3hpbml0cmMu
ZC8/Ki5zaCA7IGRvCj4+PiDCoMKgIFsgLXggIiRmIiBdICYmIC4gIiRmIgo+Pj4gwqDCoGRvbmUK
Pj4+IMKgwqB1bnNldCBmCj4+PiBmaQo+Pj4KPj4+IHR3bSAmCj4+PiB4Y2xvY2sgLWdlb21ldHJ5
IDUweDUwLTErMSAmCj4+PiB4dGVybSAtZ2VvbWV0cnkgODB4NTArNDk0KzUxICYKPj4+IHh0ZXJt
IC1nZW9tZXRyeSA4MHgyMCs0OTQtMCAmCj4+PiBleGVjIHh0ZXJtIC1nZW9tZXRyeSA4MHg2Nisw
KzAgLW5hbWUgbG9naW4KPj4+IGV4cG9ydCBHVEtfTU9EVUxFUz1nYWlsOmF0ay1icmlkZ2UKPj4+
IGV4cG9ydCBHTk9NRV9BQ0NFU1NJQklMSVRZPTEKPj4+IGV4cG9ydCBRVF9BQ0NFU1NJQklMSVRZ
PTEKPj4+IGV4cG9ydCBRVF9MSU5VWF9BQ0NFU1NJQklMSVRZX0FMV0FZU19PTj0xCj4+PiBleHBv
cnQgQUNDRVNTSUJJTElUWSBFTkFCTEVEPTEKPj4+Cj4+PiBPbiA0LzExLzIxIDU6MTEgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gV2hpY2ggc2Vzc2lv
biBpcyBzcGVjaWZpZWQgaW4geW91ciAnLnhpbml0cmMnP8KgIERpZCB5b3UgYWxzbyBkcmFnIGlu
IAo+Pj4+IHRoZSBhcHByb3ByaWF0ZSB2aWRlbyBkcml2ZXI/wqAgRG9lcyAneCcgc3RhcnQ/wqAg
RG9lcyBpdCB0aHJvdyBlcnJvcnM/Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gQ2hlZXJzLAo+Pj4+Cj4+
Pj4KPj4+Pgo+Pj4+IERhdmXCoCBIdW50Cj4+Pj4KPj4+Pgo+Pj4+IFNlbnQgZnJvbSBteSBMZW5v
dm8gVGhpbmtwYWQsIHJ1bm5pbmcgU2xpbnQgR05VL0xpbnV4LiBodHRwczovL3NsaW50LmZyCj4+
Pj4KPj4+PiBPbiA0LzExLzIxIDExOjA5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+PiBzdHVmZiBpIGRvbid0IHJlbWVtYmVyLCBhcmUgaW5zdGFsbGVk
LCBwbHVzIHRoZSBnbm9tZSBhbmQgbWF0ZSAKPj4+Pj4gZGVza3RvcHMuCj4+Cj4+Cj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

