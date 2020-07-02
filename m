Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 950FD21273D
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 17:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593702131;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ODIl9iYdee05W1bQNtdbwU0KSNuf+FOAv43nSoulrek=;
	b=OnPSNl2jQU90wstqSzquclqvVsCrci0x6Jl8wqX9SDb0UIOLBAWbY+1HELIAvpmnS9LzgW
	DEPPQI1/kCgV9e6zuCUdE7xqt3Ds7XqGHV8ShPe+AfLL9nVsU88nnLQp8MkmMLGublfPrC
	XP1lzoklsoTgHDphFQIOXVMaJXtSIjk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-448-9R63j1SQM1OjApTVd2Qu0g-1; Thu, 02 Jul 2020 11:02:09 -0400
X-MC-Unique: 9R63j1SQM1OjApTVd2Qu0g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1FF41107ACCD;
	Thu,  2 Jul 2020 15:02:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A48C7610B0;
	Thu,  2 Jul 2020 15:02:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E6709180954D;
	Thu,  2 Jul 2020 15:02:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 062Eus5j014156 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jul 2020 10:56:54 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 01FDA207AD39; Thu,  2 Jul 2020 14:56:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F18EF207AD37
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 14:56:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0012C857CF5
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 14:56:52 +0000 (UTC)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
	[209.85.166.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-124-nycQQI28N7qTuVd5V8W04w-1; Thu, 02 Jul 2020 10:56:49 -0400
X-MC-Unique: nycQQI28N7qTuVd5V8W04w-1
Received: by mail-il1-f182.google.com with SMTP id o3so7083228ilo.12
	for <blinux-list@redhat.com>; Thu, 02 Jul 2020 07:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=g0/M0SJR0H1W+1fR/AWcCdjROGdMrU4b8gVyFUnh7Vc=;
	b=hS46mk5umtA39WnZP7D6XNzcazJDBOVSPOrSDG7umIm1+TpFaNXZnlZmvaNn5h7OLR
	7gxAi2yqAMGPgs3W8HCNL+y8AwXAIRQK8m4a4vdQvk/R5sFoR+d6toIo3/A/lB/uz5tx
	Th8EDGBxcH2BEa0iA6EWf+SsnM0Z8l+ZKUkvQuF56U6CZd5UpbpsQJ32tSMsRwTXtRUg
	bij3B6qkjkvSFYFoS9SlfALvNhKpRDccV62vOvpKWbjzM0B58sKMMKPZ7PHuMyvqsKfJ
	d73/WvgLJTa3+Ku0pIk2Op/5/J+lnkIME78rJTcjle2YjB2m514d0FWbqrms36rfMXrz
	o+9Q==
X-Gm-Message-State: AOAM533ZPJJpXiqlqzUrqAvKHDcfhQbWq9DoSGkXF13x0/R7/nczh6df
	LqUwAtKSFVwX8DIws3MRtVjCCJZbGo3ewGBRM4JBOdid
X-Google-Smtp-Source: ABdhPJww9YS3nQb2rKqMJdlv5BLJbflMrxdOkZjr8gMORal0fcVty03KLDTaOzBBeObgIlbi/ztq28aaXSg1xIPwW0g=
X-Received: by 2002:a92:6f03:: with SMTP id k3mr12540608ilc.280.1593701808277; 
	Thu, 02 Jul 2020 07:56:48 -0700 (PDT)
MIME-Version: 1.0
References: <CADj8JxfchRF-=uX6bDxNyO+DE9fxUOygrV4E4GdLzEHoZYOPVg@mail.gmail.com>
	<CAPo=n-8eE+AtR2fp8LHn0oJSL19o94n6Tdv7NkAZ3ugNZ7cr6A@mail.gmail.com>
	<20200702125644.GC2669@rednote.net>
In-Reply-To: <20200702125644.GC2669@rednote.net>
Date: Thu, 2 Jul 2020 16:56:37 +0200
Message-ID: <CAPo=n-_cTENxO4gi8YSGt62Aqe0_51rS4T8dTnovP_C3xJZE0g@mail.gmail.com>
Subject: Re: using orca wile using jack
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSmFuaW5hLAoKVXNpbmcgUHVsc2Ugd2l0aCBKYWNrMiBpcyBvbmUgd2F5IEkga25vdyBvZiB0
byBnZXQgc3BlZWNoIHdvcmtpbmcgd2l0aApKYWNrLiBJIHVzZSB0aGlzIHNldHVwIG9mdGVuIHdo
ZW4gSeKAmW0gZWRpdGluZyBTdXBlciBDb2xsaWRlciBjb2RlIGV0YywKaGVuY2Ugd2h5IEkgc3Vn
Z2VzdGVkIGl0LgpCYXNpY2x5IFB1bHNlIGJlY29tZXMgYSBKYWNrIGNsaWVudCBsaWtlIGFueSBv
dGhlciwgYW5kIHlvdSBjYW4gaGF2ZSBhbGwKeW91ciBzcGVlY2ggcHJvZ3JhbXMgb3V0cHV0dGlu
ZyB0byBQdWxzZSwgYnV0IFB1bHNl4oCZcyBzb3VuZCBjb3JlIGlzCmJ5cGFzc2VkIGFuZCB0aGUg
c291bmQgaXMgcmVkaXJlY3RlZCB0byBKYWNrIGluc3RlYWQuIFRoZSBwdWxzZSBKYWNrIHBsdWdp
bgpoYW5kbGVzIHJlbGVhc2luZyB0aGUgc291bmRjYXJkLCBlbmFibGluZyBKYWNrMiB0byBoYXZl
IGV4Y2x1c2l2ZSBhY2Nlc3MgdG8KaXQuCgpSZWdhcmRzLAoKUnluaGFyZHQKCk9uIFRodSwgMiBK
dWwgMjAyMCwgMTU6MDEgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiwgPApibGlu
dXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gWW91IGRvbid0IG5lZWQgcHVsc2UgdG8gdXNl
IGphY2suCj4KPiBCZXN0LAo+Cj4gSmFuaW5hCj4KPiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyaXRlczoKPiA+IEhpLAo+ID4KPiA+IE9uZSBvcHRpb24gaXMgdG8gdXNlIHB1
bHNlYXVkaW8gYW5kIGhhdmUgcHVsc2Ugb3V0cHV0IHRvIGphY2suIFRoaXMgb25seQo+ID4gd29y
a3Mgd2l0aCBqYWNrMiB3aXRoIGRidXMgc3VwcG9ydCwgYW5kIHlvdSB3aWxsIG5lZWQgdGhlIHB1
bHNlYXVkaW8gamFjawo+ID4gcGx1Z2lucyAoaW4gYXJjaCB0aGlzIGlzIGluIGEgc2VwYXJhdGUg
cGFja2FnZSBmb3IgaW5zdGFuY2UpLgo+ID4gWW91IHRoZW4gc3RhcnQgamFjayB3aXRoICJqYWNr
X2NvbnRyb2wgc3RhcnQiLCBhZnRlciB3aGljaCB5b3Ugc2hvdWxkCj4gbWFrZQo+ID4gc3VyZSBq
YWNrIGlzIHNlbGVjdGVkIGFzIG91dHB1dCBzaW5rIGZvciBwdWxzZS4KPiA+Cj4gPiBSZWdhcmRz
LAo+ID4KPiA+IFJ5bmhhcmR0Cj4gPgo+ID4gT24gVHVlLCAzMCBKdW4gMjAyMCwgMTk6MjQgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiwgPAo+ID4gYmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4gPgo+ID4gPiBpcyBpdCBwb3NzaWJsZSB0byB1c2UgamFjayB3aWxlIHVz
aW5nIG9yY2E/IEhvdyBzaG91bGQgSSBjb25maWd1cmUgaXQ/Cj4gPiA+Cj4gPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+ID4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiA+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4gPgo+ID4gPgo+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiAtLQo+
Cj4gSmFuaW5hIFNhamthCj4gaHR0cHM6Ly9saW5rZWRpbi5jb20vaW4vanNhamthCj4KPiBMaW51
eCBGb3VuZGF0aW9uIEZlbGxvdwo+IEV4ZWN1dGl2ZSBDaGFpciwgQWNjZXNzaWJpbGl0eSBXb3Jr
Z3JvdXA6ICAgICAgIGh0dHA6Ly9hMTF5Lm9yZwo+Cj4gVGhlIFdvcmxkIFdpZGUgV2ViIENvbnNv
cnRpdW0gKFczQyksIFdlYiBBY2Nlc3NpYmlsaXR5IEluaXRpYXRpdmUgKFdBSSkKPiBDby1DaGFp
ciwgQWNjZXNzaWJsZSBQbGF0Zm9ybSBBcmNoaXRlY3R1cmVzICAgICBodHRwOi8vd3d3LnczLm9y
Zy93YWkvYXBhCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

