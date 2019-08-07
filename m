Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id BB17084A71
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2019 13:16:06 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BD8CB99C42;
	Wed,  7 Aug 2019 11:16:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3A802619E;
	Wed,  7 Aug 2019 11:16:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5288018005B9;
	Wed,  7 Aug 2019 11:15:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x77B8v3D020908 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Aug 2019 07:08:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AA87526181; Wed,  7 Aug 2019 11:08:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx11.extmail.prod.ext.phx2.redhat.com
	[10.5.110.40])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A446726160
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 11:08:55 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 81FB330014B4
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 11:08:53 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id v19so79592686wmj.5
	for <blinux-list@redhat.com>; Wed, 07 Aug 2019 04:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=d9AQnYRmB+NiifI3AD7VXOgsqAuCUXJ/CvIwkqWviVU=;
	b=mszstEAKSbAG7E66SfUSlsxveKQWmTAmtkrGQCEuYO2GQkZPtGyYqg/trqURl6L7h7
	3OSIMwNkskle3mwtxmonVwk4LKBAw6AbrAJx9erN+Y7lUVUtBQgvYost3hA8MshK7Xkl
	YAfYIO87YL6QvwCecFPqBV4PSfXEFJPYmKHc55UiFTv7ua9670W3r1dRVYEncOjvW16t
	JehEUBSiqEItrIFJTs3q17IHYC6kVQo3wGLnOmrj1bGDJOX5O13STrlUq6zgM1a3s/63
	jNwZUGxS8o6TAKoswyZGO76x9MtfikA+nBfxbxD41TjG10Bh3be8rzOiqX6CpacE7ldt
	4tQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=d9AQnYRmB+NiifI3AD7VXOgsqAuCUXJ/CvIwkqWviVU=;
	b=D+PVSpgWwf8uXvag7/9mcp4XTl9y8dHwdWfDVHMXoWW+Lj//3zuhOY3J14oApevoh5
	PQ1FwIE1r9jhlO8LS1qHm4AjPxA93f+TPxkhpz4tKPkjpUGOY3b6u+AiP5KpZzJ5uceN
	zvzBKPtdkvuZSaTek4mAgO+rUeQm69iIyHHJCSMUQCyaAem7AGbj+Tms6Mti85qXm/tQ
	JwHes/ZMgkCCvEZO9j2w3NsRn6lfUMk0uEOwMD7INGTMqHvFY45WuUm3hO6ioctYbHeO
	9kXPwgfD+4vO10uq0OugMh+sIUe1jtn4KRnHiwbQV21G6NHnrqnSwJGoQtPi7HWJxZN1
	zWOA==
X-Gm-Message-State: APjAAAUUg0ooh6pPsM8b/aW1nMwZtsynhLeL20TMJiBMS6i9kX57absP
	hW+B3Y46Nt+5CAEqTiMClivHIX/z00s=
X-Google-Smtp-Source: APXvYqwi3hKjynDRz22B1v9sN8U58fHw/s2ky8y4nF+O4tZZZ2V0xWst+wErJNGiSPqCbkdnK9YzeQ==
X-Received: by 2002:a1c:c742:: with SMTP id x63mr10837864wmf.0.1565176131817; 
	Wed, 07 Aug 2019 04:08:51 -0700 (PDT)
Received: from ?IPv6:2a04:b2c2:1811:3a00:8a:278b:e1c0:217?
	([2a04:b2c2:1811:3a00:8a:278b:e1c0:217])
	by smtp.gmail.com with ESMTPSA id
	91sm186854059wrp.3.2019.08.07.04.08.50 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Aug 2019 04:08:50 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: No F Key Boot Menu
To: blinux-list@redhat.com
References: <20190805.195033.561.2@0.0.0.0>
	<CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
	<alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
	<20190805.212710.331.4@[0.0.0.0]>
	<b8453ab0-c221-daf9-6868-8cc121e6c843@gmail.com>
	<20190806.012851.270.6@[0.0.0.0]>
Message-ID: <6d9c88f5-439c-0859-c5b5-2da72c16e7d7@GMAIL.COM>
Date: Wed, 7 Aug 2019 12:08:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806.012851.270.6@[0.0.0.0]>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.40]);
	Wed, 07 Aug 2019 11:08:54 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]);
	Wed, 07 Aug 2019 11:08:54 +0000 (UTC) for IP:'209.85.128.43'
	DOMAIN:'mail-wm1-f43.google.com' HELO:'mail-wm1-f43.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.152  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.128.43 mail-wm1-f43.google.com 209.85.128.43
	mail-wm1-f43.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.40
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 07 Aug 2019 11:16:05 +0000 (UTC)

U28gSSdsbCBsZWFwIGluIGhlcmUuIEkndmUgYmVlbiB0cnlpbmcgdG8gZ2V0IG15IERlbGwgSW5z
cGlyb24gdG8gYm9vdCAKZnJvbSBhIExpbnV4IHN0aWNrLiBObyBib290IG1lbnUgYW55d2hlcmUs
IGFsbCB0aGUgYXJ0aWNsZXMgc2F5IG9oLCB5b3UgCmhhdmUgdG8gZG8gdGhpcyBhbmQgdGhpcyBh
bmQgdGhhdCwgYnV0Li4uLi4ud2lsbCB0aGlzIGFjdHVhbGx5IHdvcms/CgpPbiAwNi8wOC8yMDE5
IDAyOjI4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEkgdGhp
bmsgSSBmb3VuZCB0aGUgYW5zd2VyOgo+IOKAoiBGYXN0IEJvb3QKPiBPbi9PZmYKPiBFbmFibGlu
ZyBmYXN0IGJvb3Qgd2lsbCBtYWtlIHRoZSBpbml0aWFsIHBvc3QvYm9vdCBzbGlnaHRseSBmYXN0
ZXIgYnkgYnlwYXNzaW5nIHRoZSBib290Cj4gZGV2aWNlIGNoZWNrIGFuZCB1c2luZyBsYXN0IGJv
b3QgSERELgo+IERlZmF1bHQ6IE9uCj4gU28gbm93IEkganVzdCBuZWVkIHNvbWUgZXllYmFsbHMg
dG8gaGVscCBtZSBnZXQgaW4gdGhlcmUgYW5kIHR1cm4gdGhhdCBvZmYuCj4gLS0tLS0gT3JpZ2lu
YWwgTWVzc2FnZSAtLS0tLQo+IEZyb206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBEYXRlOiBNb24sIDUgQXVnIDIwMTkgMjA6Mjg6NDEgLTA1MDAKPiBTdWJqZWN0OiBSZTogTm8g
RiBLZXkgQm9vdCBNZW51Cj4KPj4gWWVzLCBvbiBteSBIUCBFbnZ5LCBpZiBJIGhpdCB0aGUgRjIg
a2V5IGF0IHN0YXJ0dXAsIEkgY2FuIHNlbGVjdCBmcm9tIGEKPj4gbGlzdCBvZiBib290IGRldmlj
ZXMuIEkgZG8gdGhpcyB3aGVuIEknbSBpbnN0YWxsaW5nIGEgbmV3IE9TIGZyb20gbXkgVVNCCj4+
IHN0aWNrLgo+Pgo+Pgo+PiBPbiA4LzUvMTkgNDoyNyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEdldHRpbmcgaW50byB0aGUgYmlvcyBpc24ndCB0aGUg
cHJvYmxlbS4gSXQncyBzZWxlY3RpbmcgYSBkZXZpY2UgdG8gYm9vdCBmcm9tIHdoaWNoIGlzLgo+
Pj4KPj4+IC0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0KPj4+IEZyb206IExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+PiBUbzog
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4KPj4+IERhdGU6IE1vbiwgNSBBdWcgMjAxOSAxNzoyMToxNCAtMDQwMAo+Pj4gU3ViamVjdDog
UmU6IE5vIEYgS2V5IEJvb3QgTWVudQo+Pj4KPj4+PiBUaGUgZGVsZXRlIGtleSBjYW4gZ2V0IHlv
dSBpbnRvIGJpb3Mgb24gc29tZSBzeXN0ZW1zIHRvby4KPj4+Pgo+Pj4+IE9uIE1vbiwgNSBBdWcg
MjAxOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pgo+Pj4+
PiBEYXRlOiBNb24sIDUgQXVnIDIwMTkgMTU6NTk6NDEKPj4+Pj4gRnJvbTogTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4+Pj4gVG86
IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gU3ViamVjdDogUmU6IE5vIEYgS2V5IEJvb3Qg
TWVudQo+Pj4+Pgo+Pj4+PiBPZnRlbiB0aGUgZXNjYXBlIGtleSBjYW4gYmUgdXNlZCB0byBicmlu
ZyB1cCBhIGJvb3QgbWVudS4gVGhhdCBiZWluZwo+Pj4+PiBzYWlkLCB0aGVyZSdzIHVzdWFsbHkg
YW4gb3B0aW9uIGluIGJpb3MgdG8gc2V0IG1vcmUgdGhhbiAxIGJvb3QgZHJpdmUsCj4+Pj4+IHN1
Y2ggdGhhdCBpZiB0aGUgMXN0IDEgZG9lc24ndCBjb250YWluIGJvb3RhYmxlIG1lZGlhLCBpdCds
bCBtb3ZlIG9udG8KPj4+Pj4gdGhlIDJuZCAxLCBldGMuCj4+Pj4+Cj4+Pj4+IE9uIDgvNS8xOSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+Pj4+PiBNeSBiaW9zOgo+Pj4+Pj4gQm9hcmQ6IEVWR0EgSU5URVJOQVRJT05B
TCBDTy4sTFREIDEzMS1IRS1FOTk1IDEuMAo+Pj4+Pj4gVUVGSTogQW1lcmljYW4gTWVnYXRyZW5k
cyBJbmMuIDIuMDggMDYvMjgvMjAxOQo+Pj4+Pj4gZG9lcyBub3Qgc2VlbSB0byBoYXZlIGEgZnVu
Y3Rpb24gd2hlcmVieSB5b3UgY2FuIHNlbGVjdCBhIGRldmljZSB0byBib290Cj4+Pj4+PiBmcm9t
IHVzaW5nIG9uZSBvZiB0aGUgZnVuY3Rpb24ga2V5cy4gSW5zdGVhZCwgb25lIG11c3QgcGh5c2lj
YWxseSBnbyBpbnRvCj4+Pj4+PiB0aGUgYmlvcyBhbmQgY2hhbmdlIGJvb3Qgb3JkZXIsIGlmLCBm
b3IgZXhhbXBsZSwgeW91IHdpc2ggdG8gYm9vdCBmcm9tIGEKPj4+Pj4+IGZsYXNoIGRyaXZlIHRv
IGluc3RhbGwgYW4gT1MuIEFuZCBpZiB0aGF0IGZsYXNoIGRyaXZlIGlzIHN1YnNlcXVlbnRseQo+
Pj4+Pj4gcmVtb3ZlZCwgdGhlIHN5c3RlbSB3aWxsIG5vdCBib290LCB1bnRpbCB5b3UgZ28gaW50
byB0aGUgYmlvcyBhbmQgY2hhbmdlIHRoZQo+Pj4+Pj4gYm9vdCBvcmRlciwgYWdhaW4uCj4+Pj4+
PiBNeSBxdWVzdGlvbjogaXMgdGhpcyBub3JtYWwgYmlvcyBiZWhhdmlvciB0aGVzZSBkYXlzLCBv
ciBpcyBzb21ldGhpbmcgd3JvbmcKPj4+Pj4+IGluIG15IHBhcnRpY3VsYXIgaW1wbGVtZW50YXRp
b24uIEkgdHVybmVkIG9mZiB0aGUgc2VjdXJlIGJvb3QgZnVuY3Rpb24gaW4KPj4+Pj4+IHRoZXJl
LiBXb3VsZCB0dXJuaW5nIHRoYXQgb24gZml4IHRoaXM/IFdoYXQgZWxzZSBtaWdodCBJIGxvb2sg
Zm9yIGluIHRoZQo+Pj4+Pj4gYmlvcyB0byBlaXRoZXIgKGEpIGFsbG93IGZvciBmYWxsaW5nIGJh
Y2sgb24gZGlmZmVyZW50IGRldmljZXMgc2hvdWxkIG9uZSBiZQo+Pj4+Pj4gcmVtb3ZlZCBvciAo
YikgdG8gYWxsb3cgdGhlIGZ1bmN0aW9uIGtleSBib290IG1lbnUgZm91bmQgaW4gcHJldmlvdXMg
Ymlvcwo+Pj4+Pj4gaW1wbGVtZW50YXRpb25zLgo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4KPj4+Pj4KPj4+
PiAtLSAKPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4gLS0gCj4+IENocmlzdG9waGVyIChDSikKPj4gQ2hhbHRhaW4gYXQgR21haWwKPj4K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6
Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0
