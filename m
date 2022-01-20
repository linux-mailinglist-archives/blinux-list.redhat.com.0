Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A6B494E39
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 13:51:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642683067;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YUylIbwXxUz21Nf3avwVFQLQOr/nncjj3igy8dyuE1I=;
	b=ge1dCQRYe+8M/jZOiMnZXwCNzYm8WfwDX7jG/JHnVV2DCipGBJoN/tzzWnUzAludv4nD80
	daMyjSDMpAvlAhaHO2Sbbe+7re8IKr5jQynEgGaw9TfTrzeIqzOX4Yy4Wqp0e+npIyKl4d
	iWjWpR4+2W89554uXZ7GvbcconiVE64=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-650-s3YxRoJzPE2x-0Ozut64kA-1; Thu, 20 Jan 2022 07:51:03 -0500
X-MC-Unique: s3YxRoJzPE2x-0Ozut64kA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5024760C1;
	Thu, 20 Jan 2022 12:50:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61FA06F9C6;
	Thu, 20 Jan 2022 12:50:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ABF0B1809C88;
	Thu, 20 Jan 2022 12:50:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KCohVf003015 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 07:50:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D440F404728D; Thu, 20 Jan 2022 12:50:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF6AE4047286
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 12:50:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6DC3832E67
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 12:50:43 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-240-HcvuOFBoOb6Jq9u2D8V88w-1; Thu, 20 Jan 2022 07:50:42 -0500
X-MC-Unique: HcvuOFBoOb6Jq9u2D8V88w-1
Received: by mail-wm1-f53.google.com with SMTP id
	r9-20020a1c4409000000b0034e043aaac7so562415wma.5
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 04:50:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=VWpBArRJ6Jeyb61elmLYIEZfUbuRZMv5iX0smCG4CNs=;
	b=duWb6Rh0UWIEsR/0Uln2XtuBigbroAQCOb5aWPvnDZ2Z9aw8mkD6hxmjEnuHhidJgu
	RJhmDcv1OeSAwqo5OJ/g/FKqgffrKNohwsAoFQpKLWnBVUT3SDonG+CQtggcc9U0kMW1
	sl3i7zdo9UHJvv4cxvkco59YkamEmnxltQjdjGY1t9izbQ7SJwA4ntGfLavJ5x1Ejh8r
	rAqjbYqhXL+KvOwmE417r7p4976lTGbbvdVQvmEn07osDRcouf/4NVO21FU2af1/wrOA
	S91jR+Aug/sCGQHENOMwOuZHVpYUKB6TY1oD0SFYnhjm2NUXmKzTU4raLNb43eiG+a0t
	pifg==
X-Gm-Message-State: AOAM531qQ/QWvRToLH/puNkMF2K7oJ6SmA5midYOTFBkWsS17gsb9iAu
	+oVDqAvGVC3llOktekCgrNNPzdE4zfdf1w==
X-Google-Smtp-Source: ABdhPJzZrLo3V0fFOzlREMGXYTRnctfPaLfHn18fx9H9vzEQtmmwbdh2MZj8Ns6qygo1e7ixfuBf7Q==
X-Received: by 2002:a1c:21d6:: with SMTP id h205mr1229071wmh.164.1642683040316;
	Thu, 20 Jan 2022 04:50:40 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	l20sm10943347wms.24.2022.01.20.04.50.39 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 20 Jan 2022 04:50:39 -0800 (PST)
Message-ID: <2f8af423-72cd-57c5-4864-158969fd662a@gmail.com>
Date: Thu, 20 Jan 2022 12:50:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.1
Subject: Re: Before I install Arch on bare metal...few questions
To: blinux-list@redhat.com
References: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
	<20220120122837.ipmq2bz3lp227tmg@alex-pc>
In-Reply-To: <20220120122837.ipmq2bz3lp227tmg@alex-pc>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

U28gbW9yZSBxdWVzdGlvbnMgdGhhdCBJIGRpZG4ndCBnZXQgYXJvdW5kIHRvIGFza2luZyBlYXJs
aWVyIGFuZCB0aG91Z2h0IApvZiBhZnRlciBzZW5kaW5nIHRoYXQgZmlyc3QgbWVzc2FnZQoKCjEu
IEkndmUgcnVuIGludG8gdGhpcyAobW9zdGx5KSBvbiBhIFZNLCBidXQgaXMgdGhlcmUgYW4gYWR2
YW50YWdlIG9mIApncnViIG92ZXIgc3lzdGVtLWQgYm9vdD8gSSd2ZSBuZXZlciBnb3QgYSBWTSB0
byBib290IHVzaW5nIGdydWIgc28gSSdtIApub3Qgc3VyZSBob3cgaXQnZCBhZmVjdCBiYXJlIG1l
dGFsCgoKMi4gRnJvbSBhbiBBLUExMXkgcGVyc3BlY3RpdmUuIEknbSBub3RpbmcgZG93biB3aGF0
IEkgbmVlZC4gSGVyZSdzIG15IApjdXJyZW50IGxpc3QKCmFsc2EtdXRpbHMgZXNwZWFrdXAgb3Jj
YSBzcGVlY2gtZGlzcGF0Y2hlcgoKSXMgdGhhdCBhbGwgSSBuZWVkIGZvciBhIHdvcmtpbmcgREUg
bGlrZSBHbm9tZSBvciBNYXRlLCBpLmUuIGNhbiBJIGp1c3QgCmluc3RhbGwgdGhvc2UgZm91ciBw
YWNrYWdlcywgZGVwZW5kZW5jaWVzLCBhbmQgYW5kIGVuZCB1cCB3aXRoIGEgd29ya2luZyAKc3lz
dGVtPwoKSSBkb24ndCByZWFsbHkgd2FudCB0byBudWtlIG15IFNvbHVzIGluc3RhbGwgdW50aWwg
SSBrbm93IEFyY2ggaXMgCndvcmtpbmcsIGJ1dCBlcXVhbGx5IEkgZG9uJ3Qgd2FudCB0byBvdmVy
ZG8gaW5zdGFsbGluZyBzdHVmZiBhbmQgZ2V0IApzd2FtcGQgd2l0aCBhIGh1bmRyZWQgdXBkYXRl
cyBldmVyeSBkYXkgZm9yIGFuIGV4dHJlbWUgZXhhbXBsZS4gSSd2ZSAKbWFuYWdlZCB0byBwYXJl
IGl0IGRvd24gdG8gb25lIG9yIHR3byB3aXRoIGEgbGVhbiwgbWluaW1hbCBzeXN0ZW0uIApIb3Bl
ZnVsbHkgSSBjYW4gcmVwbGljYXRlIHRoYXQgb24gYmFyZSBtZXRhbAoKClNvIGdpdmVuIEkndmUg
U29sdXMgb24gL2Rldi9zZGEsIGFuZCBJIHB1dCBBcmNoIG9uIC9kZXYvc2RiIGZvciBleGFtcGxl
LCAKd291bGQgSSBuZWVkIHRvIGluc3RhbGwgR3J1YiB0byBiZSBhYmxlIHRvIHN3YXAgYmV0d2Vl
biB0aGUgdHdvIAppbnN0YWxsZWQgT1NlcyBhcyBuZWVkZWQ/IEknbSBub3QgMTAwJSBzdXJlIGlm
IGluc3RhbGxpbmcgR3J1YiBhcyBwYXJ0IApvZiB0aGUgQXJjaCBpbnN0YWxsIHdpbGwgYnJlYWsg
YmVpbmcgYWJsZSB0byBib290IGludG8gU29sdXMgdGhvdWdoCgpPbiAxLzIwLzIyIDEyOjI4LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IE9uIFRodSwgSmFuIDIw
LCAyMDIyIGF0IDEyOjEyOjU0QU0gKzAwMDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+IFNvLCBhcyBpdCBzYXlzLiBJIHZlcnkgbXVjaCBsaWtlIG15IEFyY2gg
Vk0uCj4+Cj4+IEFuZCBJJ3ZlIGRvbmUgYSB0b24gb2YgaW5zdGFsbHMgb24gYSBxZW11IFZNLCB0
aG91Z2ggSSdtIG5vdyB0aGlua2luZyBvZgo+PiBzd2l0Y2hpbmcgdG8gYmFyZSBtZXRhbHNvIEkg
Y2FuIHR3ZWFrIG15IHN5c3RlbSBob3cgSSB3YW50Lgo+Pgo+Pgo+PiBTby4uLi5iZWZvcmUgSSBk
byB0aGlzLgo+Pgo+PiAxLiBJJ20gd29ycmllZCBzb21ldGhpbmcnbGwgZ28gd3JvbmcgaW4gdGhl
IGFyY2hpbnN0YWxsIHNjcmlwdCwgb3IgdGhlCj4+IG1hbnVhbCBpbnN0YWxsIGFuZCBudWtlIG15
IChjdXJyZW50bHkgd29ya2luZykgc3lzdGVtCj4gaWYgeW91IGFyZSBjYXJlZnVsIHdoZW4gcGFy
dGl0aW9uaW5nIHRoZSBkaXNrLCB0aGVuIHRoaXMgd2lsbCBub3QgaGFwcGVuLgo+Cj4+IDIuIFdp
bGwgbXkgVVNCIGhlYWRwaG9uZXMgYmUgY29ubmVjdGVkIG91dCBvZiB0aGUgYm94IG9yIG5vdD8g
T24gYSBWTSB0aGV5Cj4+IGFyZSBidXQgdGhhdCBkb2Vzbid0IG1lYW4gYSB0aGluZyB3aGVuIGl0
IGNvbWVzIHRvIGJhcmUgbWV0YWwKPiBJIHRoaW5rIHllcy4gaWYgbm90IHBsZWFzZSBlbWFpbCBt
ZSBhdCBhbGV4MTllcEBhcmNobGludXgub3JnCj4KPj4gMy4gSSBoYXZlIHR3byBtYWNoaW5lcywg
b25lJ3MgL2Rldi9zZGEsIHdoaWNoIEknbSBhc3N1bWluZyB3aWxsIGxpa2VseQo+PiBpbnN0YWxs
IGZpbmUsIGhvcGVmdWxseQo+Pgo+Pgo+PiBUSGUgb3RoZXIsIGEgbGFwdG9wLCBpcyAvZGV2L252
bWUsIHdoaWNoIGlzIHdoYXQgSSdtIHdvcnJpZWQgYWJvdXQuIEFueXRoaW5nCj4+IHNwZWNpYWwg
SSBuZWVkIGZvciBBcmNoIHRvIGluc3RhbGwgb24gYW4gTlZNRT8KPiBuby4gYnV0IEkgcmVjb21t
ZW5kIHRvIHJlYWQgYXJjaHdpa2kgcGFnZSBhYm91dCBudm1lLgo+Cj4+IDQuIENhbiBJIHdpdGgg
dHdvIEhERCwgL2Rldi9zZGEgKG15IGN1cnJlbnQgU29sdXMgc3lzdGVtKXdvciBhbmQgL2Rldi9z
ZGIgKGEKPj4gMi43VCBkcml2ZSksIGluc3RhbGwgQXJjaCBvbiAvZGV2L3NkYiBhbmQgcGljayBh
bmQgY2hvb3NlIHdoaWNoIGRpc3RybyB0bwo+PiBib290PyBJIHJlbWVtYmVywqAgd2F5IHRvIGRv
IGEgY29uc29sZSBjb21tYW5kIHRvIHJlYm9vdCBhbmQgaGF2ZSBHcnViIHNlbGVjdAo+PiB3aGlj
aCB0byBib290IHVwLCBidXQgSSdtIG5vdCBzdXJlIGlmIHRoYXQncyBzdGlsbCBhIHRoaW5nPwo+
IHN1cmUgeW91IGNhbi4gaWYgeW91IGhhdmUgZWZpLCB0aGVuIGl0IHdpbGwgYmUgdmVyeSBzaW1w
bGUuCj4KPj4gNS4gV2FzIHRoZXJlIGV2ZXIgYSBjb25zZW5zdXMgb24gaG93IG9mdGVuIHRvIGRv
IGEgcGFjbWFuIC1TeXl1IGluIEFyY2g/Cj4gYXMgb2Z0ZW4gYXMgeW91IG5lZWQgaXQuIHRoZSBv
bmx5IHByb2JsZW0gaXMgdGhhdCBpZiB5b3UgZG8gbm90IHVwZGF0ZQo+IHN5c3RlbSBmb3IgYSB2
ZXJ5IGxvbmcgdGltZSAoZm9yIGV4YW1wbGUsIGEgeWVhciksIHRoZW4gbGF0ZXIgaXQgY2FuCj4g
YmUgYSBsaXR0bGUgbW9yZSBkaWZmaWN1bHQgdG8gZG8uCj4KPiAtLQo+IFNpbmNlcmVseSwgQWxl
eGFuZGVyCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

