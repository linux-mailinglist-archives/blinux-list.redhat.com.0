Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2B38F3E5C98
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 16:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628604679;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CJJVQ6r720bs5BNpTAWpKxLkDJmzJZ6PT6Y6RZPqOh8=;
	b=HzykoDFWjQekxDeUM/VRnyqvk/SlJkkBRocU/J0PvvJGCdabFvWbvrbWZk5mW5s3dMSvRL
	h2eniJzrKy2Ls3+aKjQ7MdF2Eal0PQkY4eoWp9GB9bTzPsw0dQ+lJF7d3W2aVM4GQwyufR
	psK150dhBIKqjrVNSeQ7bqTMVqRA91c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-dI5XSwI-MHmjTzZe6SdCZw-1; Tue, 10 Aug 2021 10:11:16 -0400
X-MC-Unique: dI5XSwI-MHmjTzZe6SdCZw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A4EF18C8C20;
	Tue, 10 Aug 2021 14:11:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2508B5D9C6;
	Tue, 10 Aug 2021 14:11:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 105F1181A0F9;
	Tue, 10 Aug 2021 14:11:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AE92h0026986 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 10:09:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B3C8E2138CEC; Tue, 10 Aug 2021 14:09:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE2BD200AD02
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:09:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A844101A529
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:09:00 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-159-rSOZULtSP4KgeCWrrYGqXg-1; Tue, 10 Aug 2021 10:08:58 -0400
X-MC-Unique: rSOZULtSP4KgeCWrrYGqXg-1
Received: by mail-ed1-f44.google.com with SMTP id t1so3971242edd.6
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 07:08:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ooAWcYqFyX/20u46e7xxO78MOz1VvUGE82gzQ/Ioemo=;
	b=clwZdpnTAvVUDF1a6fiuZ2qaVrW2v6SgfAjXM3SxRlO73i5UwuePboqtN+ym9fEW3t
	UoiD1mWXA4ZQLY9WtygkY6LyUrLFuZrdbIn9nz3GCYfELJRv+Ixo7wnhXctyRhgni7K8
	yNRlwQ3cMEPZFQhwiVr2Vj/vdvR1q51vcxYt4CreqvJRGdDi2IVw3s05us/UrlgnTad9
	/SmTF8J0k0gUcZ24vCTfN1D7C9rRF6GITUA5rGrT72VpqQ2uzej0QPC6q2K8Xsp3XEy5
	hdW54QDRX6o/I8aSCxfKEFPRK/Kc/7DT9t+cI1F+8jh17QYJe2wZzVMX6Q4gW30d6sxD
	sS8w==
X-Gm-Message-State: AOAM533UN0OHTaylWQRjDYHBndJNRdidvgVQls9VgN1p2A/ezWVGn7QW
	uzyLuGMkAMsIBjIqHeMqTkUERXH/vpwNaA==
X-Google-Smtp-Source: ABdhPJzJZyWtFfjG0f847e/YvEGuP0oahocJSqODBTH3yo5jwuYk1wrUGhkz49f3I0+Vcv1TbWQRtg==
X-Received: by 2002:aa7:d841:: with SMTP id f1mr5249498eds.196.1628604536166; 
	Tue, 10 Aug 2021 07:08:56 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.106.18])
	by smtp.gmail.com with ESMTPSA id q30sm340900edi.84.2021.08.10.07.08.55
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 07:08:55 -0700 (PDT)
Subject: Re: Help, I need a Windows VM for my work
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
Message-ID: <93344d77-c8c9-d8eb-f727-26a71a59b80a@gmail.com>
Date: Tue, 10 Aug 2021 16:08:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <6b512da3-e808-5c33-b0d3-700b55397580@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIERpZGllciwKCgpNdWNoIGFwcHJlY2lhdGVkLgoKClJlZ2FyZHMsCgoKQnJhbmR0CgpP
biA4LzEwLzIxIDM6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4gSGkgQnJhbmR0LAo+Cj4gSSB3aWxsIGF0dGFjaCB0byBteSBuZXh0IG1lc3NhZ2UgYSBz
Y3JpcHQgdGhhdCBzZXRzIHVwIGEgcWVtdSBWTQo+IGFsbG93aW5nIHRvIGluc3RhbGwgdGhlbiBy
dW4gV2luZG93cyBsYXRlciB0b2RheSBhZnRlciBtb3JlIHRlc3RpbmcuCj4KPiBJdCBzaG91bGQg
YmUgdXNhYmxlIGluIGFueSBMaW51eCBkaXN0cmlidXRpb24gd2l0aCBhIHJlY2VudCBxZW11IAo+
IGluc3RhbGxlZC4KPgo+IENoZWVycywKPgo+IERpZGllcgo+Cj4KPiBMZSAxMC8wOC8yMDIxIMOg
IDEyOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+
IEhpIGFsbCwKPj4KPj4KPj4gQXMgSSBzdGF0ZWQgYmVmb3JlLCBJIGFtIHJ1bm5pbmcgU2xpbnQg
b24gdGhlIGJhcmUgbWV0YWwsIGhvd2V2ZXIgbXkgCj4+IHdvcmsgZW50YWlscyB0ZWFjaGluZyBO
VkRBIHRvIGNsaWVudHMsIG9idmlvdXNseSBydW5uaW5nIFdpbmRvd3MuCj4+Cj4+Cj4+IFRoZXJl
Zm9yIEkgZGVzcGVyYXRlbHkgbmVlZCBhIFdpbmRvd3MgVk0sIHNvIEkgY2FuIG1ha2UgYSBsaXZp
bmcuIEkgCj4+IGNhbm5vdCBmaWd1cmUgcWVtdSwgdmlydHVhbC1ib3gsIEkgaGF2ZSBubyBpZGVh
LCBhbmQgVk1XYXJlIAo+PiBXb3Jrc3RhdGlvbiBQbGF5ZXIgZG9lc24ndCB3YW50IHRvIGluc3Rh
bGwgdW5kZXIgU2xpbnQuCj4+Cj4+Cj4+IENvdWxkIHNvbWVvbmUgcGxlYXNlLCBwbGVhc2UsIGdp
dmUgbWUgY29uY2lzZSBpbnN0cnVjdGlvbnMgZm9yIAo+PiBzZXR0aW5nIHVwIGEgVk0gdXNpbmcg
cWVtdSBpbiBTbGludD8KPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+Pgo+Pgo+PiBCcmFuZHQgU3Rl
ZW5rYW1wCj4+Cj4+Cj4+IFNlbnQgZnJvbSBteSBnYXNzIHBvd2VyZWQgU2xpbnQgaGFpciBkcnll
ci4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKLS0g
Cldhcm0gcmVnYXJkcywKCkJyYW5kdCBTdGVlbmthbXAKClNlbnQgZnJvbSBteSBnYXNzIHBvd2Vy
ZWQgU2xpbnQgaGFpciBkcnllci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3Q=

