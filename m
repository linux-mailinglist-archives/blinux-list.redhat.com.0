Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2628B440568
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 00:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635546206;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Uh2/YiS0h3uT4c+YW2Fh9YTAa4Vr5vRYhX7qRD0h9os=;
	b=B+UqR3tddBPXCGQjWp9+GZoezrPxTfSP3646YiE6dwAX/iMbnxbKwd5mvzpjJJ06817GqH
	ohIa90fWHs9yrL8mYEpJwjMhqrHo9RtSlbGRMROPavPvrpDxNW9FShyqMeSicCfoQS72vY
	ju/hL2eCfWKGtwhtKSQhTl/X29P7v0A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-523-5cXdDufNPzuFqWKZRHJH8g-1; Fri, 29 Oct 2021 18:23:22 -0400
X-MC-Unique: 5cXdDufNPzuFqWKZRHJH8g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 19512180831E;
	Fri, 29 Oct 2021 22:23:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28D8F60D30;
	Fri, 29 Oct 2021 22:23:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B50771806D03;
	Fri, 29 Oct 2021 22:23:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19TMMDPq022324 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 18:22:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DC76B51E2; Fri, 29 Oct 2021 22:22:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D561751DD
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 22:22:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C581B185A794
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 22:22:08 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-16-5Cfs8kjFMWSZ1o8au-ATuA-1; Fri, 29 Oct 2021 18:21:59 -0400
X-MC-Unique: 5Cfs8kjFMWSZ1o8au-ATuA-1
Received: by mail-qt1-f174.google.com with SMTP id g17so10503647qtk.8
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 15:21:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=3mEIZsnnQ13Vlk2Yiac8VF3dow6ZAwzE8M35hS87YNo=;
	b=5gemEcVRAI+mdtFGV7Vys7FY0jxy+Sg27g4atGr4KlgHIoNEzSTpq4x7fZmpk0rJOq
	KSZPFMVMVit99dkY+oHGc9udAuPYGtLfUsJgSGB/1Ze9yxvatUGn8zRXB3Fj1z1PPW5T
	I3duhUciCxP2hAdHiLSCaDSGgwiBgg0RbvgRl4C7SA3RFfx/3WUNXm6I/uRuXqUi0aTl
	+x5sBiy8BNqy9j3FJvzQVV8RbDLC2ROhNi9deWNdi6fdBI29rHFACNFJHBWnS+JBcP6w
	F0q5a6qXLGFegyaVJfNp2jtQRTtHKLKiBVJjbJw1xPq5xfRvCr96PBXXiLeSpm7aEqrD
	86gw==
X-Gm-Message-State: AOAM532VNqv9AYElp3ui7pJ+zhhl/kuG2Fs5y4dTN893oIXkR9RjqdvY
	zs5IrPCp8tO3wjTfRLYucUImhM8VIPA=
X-Google-Smtp-Source: ABdhPJxqQe4Li3G7Wx3mIlVXodlxWLqpf6Bg/v/lu/RHrBXChpHtYFIvhssbXfhuXepDJBz+G96eUg==
X-Received: by 2002:ac8:7f4b:: with SMTP id g11mr14292887qtk.339.1635546118265;
	Fri, 29 Oct 2021 15:21:58 -0700 (PDT)
Received: from smtpclient.apple ([2601:152:4000:330:592a:2dd8:926e:97e1])
	by smtp.gmail.com with ESMTPSA id
	e10sm5080754qtx.66.2021.10.29.15.21.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 15:21:57 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Accessible Coconut speech at startup
Date: Fri, 29 Oct 2021 18:21:57 -0400
Message-Id: <CF2F8D13-A374-4F46-A5E7-D20B66F738C2@gmail.com>
References: <F9A34440-26A3-40BA-8916-B47339117C16@gmail.com>
In-Reply-To: <F9A34440-26A3-40BA-8916-B47339117C16@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19TMMDPq022324
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGEgbWlsbGlvbiBmb3IgeW91ciBoZWxwLiBJIHRyaWVkIHlvdXIgIHN1Z2dlc3Rpb25z
IHRvIG5vIGF2YWlsLiBIb3dldmVyLCBzb21ldGhpbmcgc3RyYW5nZSBoYXBwZW5lZCwgd2hlbiBJ
IGNvbm5lY3RlZCBteSBicmFpbGxlIGRpc3BsYXkgaXQgY29ubmVjdGVkIHRvIGFjY2Vzc2libGUg
Y29jb251dCByaWdodCBhd2F5LiBJIHdhcyBhYmxlIHRvIGJyb3dzZSB0aGUgbWVudXMgYW5kIGNv
bm5lY3QgdG8gdGhlIGludGVybmV0LiBEdXJpbmcgbXkgYnJvd3NpbmcgdGhlIHNwZWVjaCBjYW1l
IG9uLiAKSSBoYXZlIHR3byBxdWVzdGlvbnMsIGhvdyBjYW4gSSBnZXQgYSBjb21tYW5kIGxpbmUg
cHJvbXB0PyBNeSBzZWNvbmQgcXVlc3Rpb24gaXMsIHdoYXQgaXMgdGhlIGNvbW1hbmQgdG8gdHVy
biBvZmYgdGhlIGNvbXB1dGVyPyBBbHQgZjQgZGlkIG5vdCB0YWtlIG1lIHRoZXJlLgpDaGVlcnMs
CklicmFoaW0KCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTo1
NiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gCj4g77u/UHJlc3MgYWx0IHBsdXMgRjEuCj4gRG8geW91IGhlYXIg
c3BlZWNoPwo+IElmIG5vdCwgcHJlc3MgZXNjYXBlLgo+IFByZXNzIGFsdCBwbHVzIEYyCj4gVHlw
ZSAKPiBvcmNhCj4gUHJlc3MgZW50ZXIuCj4gVGhpcyBzaG91bGQgZml4IGl0Lgo+IAo+IAo+IFNl
bnQgZnJvbSBteSBpUGhvbmUKPiAKPj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxOjI1IFBNLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPj4gCj4+IO+7v0lzIHRoZXJlIGEgc3RlcCBieSBzdGVwIHR1dG9yaWFsIG9uIGhvdyB0
byBzdGFydD8KPj4gSSBkb3dubG9hZGVkIHRoZSBhY2Nlc3NpYmxlIGNvY29udXQgaXNvIGFuZCBw
dXQgaXQgb24gYSBib290YWJsZSB1c2IgZHJpdmUuIEkgd2FzIGFibGUgdG8gYm9vdCB0aGUgbWFj
aGluZSBmcm9tIHRoZSB1c2IsIGJ1dCB0aGVyZSB3YXMgbm8gc3BlZWNoIHRvIGd1aWRlIG1lLiBJ
IHdhcyBhYmxlIHRvIGNvbmZpcm0gdGhhdCBJIGluZGVlZCBib290ZWQgZnJvbSB1c2Igd2l0aCBh
Y2Nlc3NpYmxlIGNvY29udXQgYnkgdXNpbmcgbXkgaVBob25lIGNhbWVyYS4gSSBoYXZlIG5vIGlk
ZWEgaG93IHRvIGdldCB0aGUgc3BlZWNoIGdvaW5nLiBTbyBwbGVhc2UgaWYgeW91IGhhdmUgYSB0
dXRvcmlhbCwgc2VuZCBpdCBteSB3YXkuCj4+IElicmFoaW0KPj4gCj4+IFNlbnQgZnJvbSBteSBp
UGhvbmUKPj4gCj4+Pj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxMDoyOSBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
PiAKPj4+IO+7v0hlbGxvLAo+Pj4gV2hlbiB1c2luZyB0aGUgbGl2ZSBDRCwgVGhlIHNjcmVlbnJl
YWRlciBzdGFydGVkIGF0IGJvb3QuCj4+PiBCdXQgYSAgYWZ0ZXIgSSBpbnN0YWxsZWQgaXQsIEkg
Z2V0IG5vIHNjcmVlbnJlYWRlciBhdCBzdGFydHVwLgo+Pj4gQWxsIHNldHRpbmdzIGFzIGZhciBh
cyBJIGtub3cgYXJlIGNvcnJlY3QuCj4+PiBUaGUgb25seSB3YXkgdG8gZ2V0IHNwZWVjaCBpcyB0
byBnbyB0byB0aGUgcnVuIHdpbmRvdyB3aXRoIAo+Pj4gQWx0K0YyCj4+PiBUaGVuIHR5cGUgCj4+
PiBvcmNhCj4+PiBBbmQgcHJlc3MgZW50ZXIuCj4+PiBJIHJlaW5zdGFsbGVkIGxpbnV4IGFuZCBn
b3QgdGhlIHNhbWUgcmVzdWx0Lgo+Pj4gQXMgSSB3YXMgZG9pbmcgdGhlIGluc3RhbGwsIEkgY2hl
Y2tlZCB0aGUgYm94IHRvIGdldCB1cGRhdGVzIGR1cmluZyB0aGUgaW5zdGFsbC4gQ291bGQgdGhp
cyBiZSB0aGUgY2F1c2Ugb2YgbXkgdHJvdWJsZT8KPj4+IAo+Pj4gVGhhbmtzLAo+Pj4gUm9iCj4+
PiAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4gCj4+IAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

