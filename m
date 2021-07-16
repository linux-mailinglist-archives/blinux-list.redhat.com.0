Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1AC8E3CB6B6
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 13:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626434835;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=STPO75zQZ6A8mLage4HdFGBuBsMMq710dRinEU9K080=;
	b=h/PjIOmqOU6Yy9X800KPM78ahzpaivHtzAoVRlitNrzt1LGFzGdVf0aPWkg4XYJAJbpasV
	ScwyxBg/242/g8FMhAOWRdczv+ooL5jftVh6kVd9YccDmg90AwPcmHSPN2nC5e+Gwggg0j
	XCcvyWoeqftwZvXbqOnr9GKNcVsiqwM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-0F0CrFYUNKOe0ilG9zfcXw-1; Fri, 16 Jul 2021 07:27:13 -0400
X-MC-Unique: 0F0CrFYUNKOe0ilG9zfcXw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0440A804143;
	Fri, 16 Jul 2021 11:27:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BD3D5D9C6;
	Fri, 16 Jul 2021 11:27:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10DDC4EA2F;
	Fri, 16 Jul 2021 11:27:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GBPc5W013365 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 07:25:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C206E1054799; Fri, 16 Jul 2021 11:25:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE21C10CB28C
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:25:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 137EB800BED
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 11:25:35 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-154-XVIpybHiPB-z2jhfa7V3bQ-1; Fri, 16 Jul 2021 07:25:32 -0400
X-MC-Unique: XVIpybHiPB-z2jhfa7V3bQ-1
Received: by mail-wr1-f41.google.com with SMTP id a13so11653654wrf.10
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 04:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=S8ue4twsLlN0clFS/FceljYL/JoAjcD2qBaN82DXWpc=;
	b=hW2j+FBLYPDfceLGQG/Mb8BrTvHq1nw7kvmau6VvKPqFvx9wcsNx4oYRmGYc4XKZA8
	H7gL5aAnuM7FGc8v/vaOja307NV3Zyhtj8gFuyG0Q8qQXd3vNxGZPSkqDCy1JS7aMiI8
	zdc5QU4sH+KYhP4t8tDQGfdm1UNJ0yUy3MpvTrhW5CcJ7aEFrfHvTBbRcK9RU3yFbEsv
	CAUocdG1DAkVyk2rj5mavzXu7XcORu2EBDVqk/sC8J0yppJnsRV2TMfCHq8k1uZQlfEa
	TxBiDOGDTK8vKAKzvNUyWbi6fxkJScmWl5LCNHWb7EJN5A+WDCxUvrdsvr6i4PLBcISL
	tQVQ==
X-Gm-Message-State: AOAM531FyCJ0G7yDdrqPOqe+QqgkXdwpL3TovC8erXYc7dzoRHL4TkyD
	rTz7CXKyfFb7NCXAGSvAI+acQwCXht0nAw==
X-Google-Smtp-Source: ABdhPJy3sTFhZ3OhmM65U6S+YMHBKbNDq0kflIAmoPB9jMXnftQfk3/niVJGtfYFYqw85r0hYy3oog==
X-Received: by 2002:adf:dc85:: with SMTP id r5mr11756658wrj.218.1626434730885; 
	Fri, 16 Jul 2021 04:25:30 -0700 (PDT)
Received: from [192.168.1.102] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id
	r18sm9917611wrt.96.2021.07.16.04.25.30 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Jul 2021 04:25:30 -0700 (PDT)
Subject: Re: Transfering Thunderbird folder
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<388d8a75-302b-1519-cf7d-17cdc5c81345@protonmail.com>
	<c917c3f4-6ee3-4a42-cf5f-cf59c22ae981@gmail.com>
	<a5fd7406-b1df-33d6-caad-e3a6e7b0a94a@slint.fr>
Message-ID: <1c45b30a-c424-b5a4-9209-63334e097712@gmail.com>
Date: Fri, 16 Jul 2021 13:25:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a5fd7406-b1df-33d6-caad-e3a6e7b0a94a@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWFueSBtYW55IHRoYW5rcywgdGhpcyB3b3JrcyBwZXJmZWN0bHkuCgpQYXZlbAoKCkRuZSAxNi4g
MDcuIDIxIHYgMTM6MDcgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXBzYWwo
YSk6Cj4gSGksCj4KPiBUaHVuZGVyYmlyZCBjcmVhdGVzIGEgbmV3IGZvbGRlciBidXQgeW91IGNh
biBzdGlsbCB1c2UgYW5vdGhlciBvbmUuIAo+IEp1c3Qgc3RhcnQgaXQgbGlrZSB0aGlzOgo+Cj4g
dGh1bmRlcmJpcmQgLVAgLS1hbGxvdy0tZG93bmdyYWRlCj4KPiBhbmQgc2VsZWN0IHRoZSBwcm9m
aWxlIHlvdSB3YW50Lgo+Cj4gQmVmb3JlIGRvaW5nIHRoYXQsIHB1dCB0aGUgcHJvZmlsZXMgeW91
IHdhbnQgaW4gfi8udGh1bmRlcmJpcmQKPgo+IEZvciBpbnN0YW5jZSBteSBwcm9maWxlcyBhcmUg
aW46Cj4KPiAvaG9tZS9kaWRpZXIvLnRodW5kZXJiaXJkCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4g
LS0gCj4gRGlkaWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIKPiBkaWRpZXJhdHNsaW50ZG90
ZnIKPiBodHRwczovL3NsaW50LmZyCj4KPgo+Cj4gTGUgMTYvMDcvMjAyMSDDoCAxMjozNCwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBPa2F5LCBUaHVu
ZGVyYmlyZCBhYnNvbHV0ZWxseSBpZ25vcmVzIG15IHByb2ZpbGUgYW5kIGNyZWF0ZXMgYSBuZXcg
Cj4+IG9uZSwgc28gSSB0aGluayBzb21ldGhpbmcgY2hhbmdlZCBpbiBwcm9maWxlcy5pbmkgb3Ig
aW5zdGFsbHMuaW5pLiAKPj4gV2hlbiBJIHRyYW5zZmVyIG15IHByb2ZpbGUgZnJvbSBXaW4gdG8g
V2luLCBpdCB3b3JrcywgYnV0IGZyb20gV2luIHRvIAo+PiBMaW51eCBub3QsIHNvIEkgd2lsbCBj
cmVhdGUgYWxsIG15IHNldHVwIGFnYWluLCBpdCB3aWxsIGJlIGVhc3llciBmb3IgCj4+IG1lLgo+
Pgo+PiBQYXZlbAo+Pgo+Pgo+PiBEbmUgMTUuMDcuMjAyMSB2IDIyOjQ5IExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFwc2FsKGEpOgo+Pj4gSGVsbG8sCj4+Pgo+Pj4gd2VsbCwg
SSBoYXZlIHF1aXRlIGJhZCBleHBlcmllbmNlcyBkb2luZyB0aGlzIGFueXdoZXJlIGF0IGFueSB0
aW1lLAo+Pj4gaW5kZXBlbmRlbnRseSBvbiBwbGF0Zm9ybSBvciBUQiB2ZXJzaW9uLCBzbyBJIHBl
cnNvbmFsbHkgcHJlZmVyIHRvIHNldAo+Pj4gdXAgdGhpbmdzIGZyb20gc2NyYXRjaCBhcyBtb3N0
IG9mIHRoZSBjb25maWd1cmF0aW9uIGlzIGRvbmUgb24gdGhlCj4+PiBzZXJ2ZXIgYW55d2F5Lgo+
Pj4KPj4+Cj4+PiBCdXQgeW91IGNhbiB0cnkgaXQgb3V0IGlmIHlvdSB3YW50LiBKdXN0IGxldCBU
QiBjcmVhdGUgYSBwcm9maWxlIGZvbGRlcgo+Pj4gYW5kIHJlcGxhY2UgdGhlIGNvbnRlbnQgb2Yg
dGhlIGZvbGRlciB3aXRoIHlvdXIgb3duLCB0aGF0IHNob3VsZCAKPj4+IHdvcmsgaWYKPj4+IHlv
dXIgcHJldmlvdXMgdmVyc2lvbiBvZiBUQiB3YXMgdXBncmFkZWQgdG8gdmVyc2lvbiA3OCB3aXRo
IHRoZSAKPj4+IHByb2ZpbGUuCj4+Pgo+Pj4KPj4+IEJlc3QgcmVnYXJkcwo+Pj4KPj4+Cj4+PiBS
YXN0aXNsYXYKPj4+Cj4+Pgo+Pj4gRMWIYSAxNS4gNy4gMjAyMSBvIDE3OjM1IExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4+Pj4gSGksCj4+Pj4KPj4+PiBJ
IHdhbnQgdG8gdHJhbnNmZXIgbXkgVGh1bmRlcmJpcmQgZm9sZGVyIGZyb20gV2luIHRvIExpbnV4
LiBJdCB3YXMKPj4+PiBwb3NzaWJsZSAzIDQgeWVhcnMgYWdvIHdpdGhvdXQgYW55IGlzc3Vlcywg
YnV0IGZyb20gc29tZSBuZXcgCj4+Pj4gVGh1bmRlcmJpcmQKPj4+PiB2ZXJzaW9uLCBzb21ldGhp
bmcgbXVzdCBiZSBjaGFuZ2V0IHRvIGdldCB0cmFuc2ZlcmVkIGZvbGRlciB3b3JraW5nIGFzCj4+
Pj4gZXhwZWN0ZWQuIENhbiB5b3UgaGVscCBwbGVhc2U/IFdoZW4gSSB0cmFuc2ZlciBteSBmb2xk
ZXIgdG8KPj4+PiAuVGh1bmRlcmJpcmQsIGFwcCBpZ25vcmVzIGFsbCBleGlzdGluZyBwcm9maWxl
cyBhbmQgY3JlYXRlcyBhbm90aGVyIAo+Pj4+IGFuZAo+Pj4+IGFza3MgbWUgdG8gbG9naW4gdG8g
bXkgbWFpbCBhY2NvdW50cy4KPj4+Pgo+Pj4+IFRoYW5rcywKPj4+Pgo+Pj4+IFBhdmVsCj4+Pj4K
Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

